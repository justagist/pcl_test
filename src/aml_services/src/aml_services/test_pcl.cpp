// #include "pcl_processing.h"
// #include <iostream>
// #include <ros/ros.h>


// int main(int argc, char** argv)
// {
//     sensor_msgs::PointCloud ptcld;

//     ros::init (argc, argv, "pub_pcl");
//     ros::NodeHandle nh;
//     ros::Publisher pub = nh.advertise<aml_pcl::PointCloud> ("points2", 1);

//     aml_pcl::PointCloudPtr msg (new aml_pcl::PointCloud);
//     msg->header.frame_id = "some_tf_frame";
//     msg->height = msg->width = 1;
//     msg->points.push_back (aml_pcl::CloudPoint(1.0, 2.0, 3.0));

//     ros::Rate loop_rate(5);
//     std::cout << "starting" << std::endl;
//     while (nh.ok())
//     {
//     // msg->header.stamp = ros::Time::now().toNSec();
//     pub.publish (msg);
//     ros::spinOnce ();
//     loop_rate.sleep ();
//     }
//     std::cout <<"finish" << std::endl;

// }


#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/project_inliers.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/surface/concave_hull.h>
#include <pcl/visualization/cloud_viewer.h>

int
main (int argc, char** argv)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>), 
                                      cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>), 
                                      cloud_projected (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::PCDReader reader;

  reader.read ("/home/saif/Desktop/image_0001.pcd", *cloud);
  // Build a filter to remove spurious NaNs
  pcl::PassThrough<pcl::PointXYZ> pass;
  pass.setInputCloud (cloud);
  pass.setFilterFieldName ("z");
  pass.setFilterLimits (0, 1.1);
  pass.filter (*cloud_filtered);
  std::cerr << "PointCloud after filtering has: "
            << cloud_filtered->points.size () << " data points." << std::endl;

  pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
  pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
  // Create the segmentation object
  pcl::SACSegmentation<pcl::PointXYZ> seg;
  // Optional
  seg.setOptimizeCoefficients (true);
  // Mandatory
  seg.setModelType (pcl::SACMODEL_PLANE);
  seg.setMethodType (pcl::SAC_RANSAC);
  seg.setDistanceThreshold (0.01);

  seg.setInputCloud (cloud_filtered);
  seg.segment (*inliers, *coefficients);
  std::cerr << "PointCloud after segmentation has: "
            << inliers->indices.size () << " inliers." << std::endl;

  // Project the model inliers
  pcl::ProjectInliers<pcl::PointXYZ> proj;
  proj.setModelType (pcl::SACMODEL_PLANE);
  proj.setIndices (inliers);
  proj.setInputCloud (cloud_filtered);
  proj.setModelCoefficients (coefficients);
  proj.filter (*cloud_projected);
  std::cerr << "PointCloud after projection has: "
            << cloud_projected->points.size () << " data points." << std::endl;

  // Create a Concave Hull representation of the projected inliers
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_hull (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::ConcaveHull<pcl::PointXYZ> chull;
  chull.setInputCloud (cloud_projected);
  chull.setAlpha (0.1);
  chull.reconstruct (*cloud_hull);

  std::cerr << "Concave hull has: " << cloud_hull->points.size ()
            << " data points." << std::endl;

  pcl::visualization::CloudViewer viewer("Cloud Viewer");
  viewer.showCloud(cloud_hull);
  while (!viewer.wasStopped())
  {

  }

  // pcl::PCDWriter writer;
  // writer.write ("test_pcd_mug_hull.pcd", *cloud_hull, false);

  return (0);
}
#include "ros/ros.h"
#include "aml_perception/PCLCustomMsg.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_two_ints_client");
  if (argc != 2)
  {
    ROS_INFO("usage: clnt string");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<aml_perception::PCLCustomMsg>("aml_pcl_service");
  aml_perception::PCLCustomMsg srv;
  srv.request.function = "read_pcd_file";
  // srv.request.b = (argv[2]);
  srv.request.in_string_1 = argv[1];
  if (client.call(srv))
  {
    ROS_INFO("%s: %s", srv.request.function.c_str(), srv.response.out_string_1.c_str());
  }
  else
  {
    ROS_ERROR("Failed to call service aml_pcl_service");
    return 1;
  }

  return 0;
}
#include "ros/ros.h"
#include "pcl_processing.h"
#include "aml_perception/AddTwoInts.h"


class PCLUtilityServer
{

private:
    aml_pcloud::PclRosConversions::ConversionPtr pcl_ros_converter_;
    ros::NodeHandle nh_;
    ros::ServiceServer service_;

    void initiliseServer_();

    static bool processRequest(aml_perception::AddTwoInts::Request  &req,
         aml_perception::AddTwoInts::Response &res)
{
  res.ans = req.a + req.b;
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
  ROS_INFO("sending back response: [%ld]", (long int)res.ans);
  return true;
}


public:
    PCLUtilityServer() : pcl_ros_converter_(new aml_pcloud::PclRosConversions) 
    {
        this->initiliseServer_();
    };


};

void PCLUtilityServer::initiliseServer_()
{
    service_ = nh_.advertiseService("aml_pcl_service", this->processRequest);
    // ros::ServiceServer service2 = n.advertiseService("sub_two_ints", add);
    ROS_INFO("AML PointCloud Utility Server Running...");
    ros::spin();
};


int main(int argc, char **argv)
{
    ros::init(argc, argv, "pcl_utility_server");
    PCLUtilityServer server;

    return 0;
};
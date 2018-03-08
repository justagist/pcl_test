#include "ros/ros.h"
#include "aml_perception/AddTwoInts.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_two_ints_client");
  if (argc != 4)
  {
    ROS_INFO("usage: file X Y add/sub");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<aml_perception::AddTwoInts>("two_ints");
  aml_perception::AddTwoInts srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  srv.request.c = argv[3];
  if (client.call(srv))
  {
    ROS_INFO("%s: %ld", srv.request.c.c_str(), (long int)srv.response.ans);
  }
  else
  {
    ROS_ERROR("Failed to call service two_ints");
    return 1;
  }

  return 0;
}
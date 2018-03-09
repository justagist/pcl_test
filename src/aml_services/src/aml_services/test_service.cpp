#include "ros/ros.h"
#include "aml_perception/AddTwoInts.h"

float add(float  a,
         float b)
    {
      float sum = a + b;
      return sum;
    }
 
float sub(float  a,
         float b)
    {
      float diff = a - b;
      return diff;
    }

bool process(aml_perception::AddTwoInts::Request  &req,
         aml_perception::AddTwoInts::Response &res)
    {
      // res.sum = req.a + req.b;
        if (req.c == "add")
        {
          ROS_INFO("request: %ld + %ld", (long int)req.a, (long int)req.b);
            res.ans = add(req.a,req.b);
        }

        else if (req.c == "sub")
        {  ROS_INFO("request: %ld - %ld", (long int)req.a, (long int)req.b);
            res.ans = sub(req.a, req.b);
        }
      ROS_INFO("sending back response: [%ld]", (long int)res.ans);
      return true;
    }

int main(int argc, char **argv)
    {
      ros::init(argc, argv, "add_two_ints_server");
      ros::NodeHandle n;

      ros::ServiceServer service = n.advertiseService("two_ints", process);
      // ros::ServiceServer service2 = n.advertiseService("sub_two_ints", add);
      ROS_INFO("Ready for two ints.");
      ros::spin();

      return 0;
    }
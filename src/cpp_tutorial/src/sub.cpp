#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <iomanip>

//Callback function
void poseMessageReceived(const turtlesim::Pose& msg) {
    ROS_INFO_STREAM(std::setprecision(2) << std::fixed 
    << "position  =(" << msg.x << "," << msg.y << ")"
    << "direction =(" << msg.theta << ")");
}

int main(int argc, char **argv){
    
    ros::init(argc, argv, "subscriber_to_pose");
    ros::NodeHandle nh;

    //Object
    ros::Subscriber sub = nh.subscribe("turtle1/pose", 1000,
        &poseMessageReceived);

    ros::spin();
}
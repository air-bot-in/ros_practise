#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

int main(int argc, char **argv){

    //Initialize the ROS system
    ros::init(argc, argv, "publish_velocity");
    ros::NodeHandle nh;

    //Create publisher object
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);

    //Seed Random number
    srand(time(0));

    //Loop at 2Hz 
    ros::Rate rate(2);

    while(ros::ok()){
        geometry_msgs::Twist msg;
        msg.linear.x = double(rand())/double(RAND_MAX);
        msg.angular.z = 2*double(rand())/double(RAND_MAX) - 1;

        pub.publish(msg);

        //Send a message to rosout with the details
        ROS_INFO_STREAM("Sending Random Velocity:"
        << "linear=" << msg.linear.x
        << "angular=" << msg.angular.z);

        //Wait
        rate.sleep();
    }
}
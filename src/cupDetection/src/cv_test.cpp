#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <std_msgs/String.h>
#include "std_msgs/Int32.h"

#include <iostream>
using namespace std;
static const std::string OPENCV_WINDOW = "Image window";



class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;

public:
  ros::Publisher pub = nh_.advertise<std_msgs::String>("cup", 1);
  std_msgs::String str;
  int xPosition;
  int yPosition;
  int CupDistance;
  int machineState; 
  double green_lowH;
  double green_lowS;
  double green_lowV;
  double green_highH;
  double green_highS;
  double green_highV;
  double red_lowH;
  double red_lowS;
  double red_lowV;
  double red_highH;
  double red_highS;
  double red_highV;
  int startCommand;
  int circleSize;
  ImageConverter()
      : it_(nh_)
  {
    // Subscrive to input video feed and publish output video feed
    image_sub_ = it_.subscribe("camera/color/image_raw", 1,
                               &ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);

    cv::namedWindow(OPENCV_WINDOW);
  }

  ~ImageConverter()
  {
    cv::destroyWindow(OPENCV_WINDOW);
  }

  void imageCb(const sensor_msgs::ImageConstPtr &msg)
  {
    cv_bridge::CvImagePtr cv_ptr;
    cv_bridge::CvImagePtr cv_ptr_green_;
    cv_bridge::CvImagePtr cv_ptr_red_;
    try
    {
      cv_ptr =  cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
      cv_ptr_green_ = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
      cv_ptr_red_ = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    //   cv_ptr2 = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception &e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
    
    nh_.getParam("/green_lowH", green_lowH);
    nh_.getParam("/green_lowS", green_lowS);
    nh_.getParam("/green_lowV", green_lowV);
    nh_.getParam("/green_highH",green_highH);
    nh_.getParam("/green_highS",green_highS);
    nh_.getParam("/green_highV",green_highV);

    nh_.getParam("/red_lowH", red_lowH);
    nh_.getParam("/red_lowS", red_lowS);
    nh_.getParam("/red_lowV", red_lowV);
    nh_.getParam("/red_highH",red_highH);
    nh_.getParam("/red_highS",red_highS);
    nh_.getParam("/red_highV",red_highV);

    nh_.getParam("/xPose",xPosition);
    nh_.getParam("/yPose",yPosition);
    nh_.getParam("/circleSize",circleSize);
    cv::circle(cv_ptr->image, cv::Point(xPosition, yPosition), circleSize, CV_RGB(0, 255, 0));
    cv::cvtColor(cv_ptr->image,cv_ptr_green_->image,cv::COLOR_BGR2HSV);
    cv::cvtColor(cv_ptr->image,cv_ptr_red_->image,cv::COLOR_BGR2HSV);
    // Update GUI Window
    cout<<cv_ptr_green_->image.col(xPosition).row(yPosition)<<endl;
    cout<<"green_lowH , "<<green_lowH<<", green_lowS , "<<green_lowS<<", green_lowV , "<<green_lowV<<endl;
    cout<<"green_highH , "<<green_highH<<", green_highS , "<<green_highS<<", green_highV , "<<green_highV<<endl;

    cout<<cv_ptr_red_->image.col(xPosition).row(yPosition)<<endl;
    cout<<"red_lowH , "<<red_lowH<<", red_lowS , "<<red_lowS<<", red_lowV , "<<red_lowV<<endl;
    cout<<"red_highH , "<<red_highH<<", red_highS , "<<red_highS<<", red_highV , "<<red_highV<<endl;
    // cv::imshow(OPENCV_WINDOW, cv_ptr->image);
    cv::inRange(cv_ptr_green_->image,cv::Scalar(green_lowH,green_lowS,green_lowV),cv::Scalar(green_highH,green_highS,green_highV),cv_ptr_green_->image);
    cv::inRange(cv_ptr_red_->image,cv::Scalar(red_lowH,red_lowS,red_lowV),cv::Scalar(red_highH,red_highS,red_highV),cv_ptr_red_->image);
    
    cv::imshow("Red inverted Window",cv_ptr_red_->image);

    cv::threshold(cv_ptr_red_->image,cv_ptr_red_->image,200,255,1);
    // cout<<cv_ptr2->image.col(xPosition).row(yPosition)<<endl;

    
    cv::imshow(OPENCV_WINDOW,cv_ptr->image);
    cv::imshow("Green Window",cv_ptr_green_->image);
    cv::imshow("Red Window",cv_ptr_red_->image);
    cv::waitKey(3);

    // Output modified video stream
    // image_pub_.publish(cv_ptr->toImageMsg());
  }
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cvTest");
  ImageConverter ic;
  while (ros::ok())
  {
    ros::spinOnce();
  }
  return 0;
}

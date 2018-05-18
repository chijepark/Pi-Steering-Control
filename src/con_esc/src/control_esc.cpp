#include "ros/ros.h"
#include "con_esc/MsgControl.h"
#include <cstdio>
#include <cstdlib>
#include <pigpio.h>

#define LEFT 68
#define RIGHT 67
#define UP 65
#define DOWN 66
void m_forward();
void m_backward();
void m_stop();
void m_left();
void m_right();
void m_middle();
void msgCallback(const con_esc::MsgControl::ConstPtr& msg)
{
    ROS_INFO("recieve msg = %d",msg->data);
    int get_con_msg = msg->data;
    printf("%d\n",get_con_msg);
    switch(get_con_msg)
    {
      case LEFT:
        m_left();
        break;
      case RIGHT:
        m_right();
        break;
      case UP:
        m_forward();
        break;
      case DOWN:
        m_backward();
        break;
      default:
        break;
    }
}
int main(int argc,char** argv)
{
    m_stop();
    ros::init(argc,argv,"listener");
    ros::NodeHandle nh;
    ros::Subscriber ros_tutorial_sub = nh.subscribe("ros_msg",100,msgCallback);
    ros::spin();
    return 0;
}
void m_forward()
{
     if(gpioInitialise()<0) 
         return;

    gpioSetMode(17,PI_OUTPUT);
    gpioSetPWMfrequency(17,40);
    gpioSetPWMrange(17,400);
    
    gpioPWM(17, 24);
    time_sleep(0.05);
    gpioPWM(17, 25);
    time_sleep(0.05);
    
    int A = gpioGetPWMrange(17);
    int B = gpioGetPWMdutycycle(17);
    int C = gpioGetPWMfrequency(17);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);

    return;
}
void m_backward()
{
    if(gpioInitialise()<0) 
        return;//라이브러리이니시

    gpioSetMode(17,PI_OUTPUT);//GPIO17번사용
    gpioSetPWMfrequency(17,40);//주파수40
    gpioSetPWMrange(17,400);//분주비400으로 확
    
    gpioPWM(17, 24); // 중립신호인가
    time_sleep(0.05);//시간딜레이
    gpioPWM(17, 23);//후진신호인가
    time_sleep(0.05);
    gpioPWM(17, 0);
    time_sleep(0.05);
    
    //// 0V 인가뒤 똑같은 후진동작실행
    gpioPWM(17, 24);
    time_sleep(0.05);
    gpioPWM(17, 23);
    time_sleep(0.05);
    
    int A = gpioGetPWMrange(17);
    int B = gpioGetPWMdutycycle(17);
    int C = gpioGetPWMfrequency(17);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
void m_stop()
{
    if(gpioInitialise()<0) 
        return; // pigpio 라이브러리 이니시

    gpioSetMode(17,PI_OUTPUT); // GPIO 17번핀 사용 설정
    gpioSetPWMfrequency(17,40); // 주파수 40Hz로 설정
    gpioSetPWMrange(17,400); // 분주비 255->400 변환

    gpioPWM(17, 24); // 6% 듀티비 인가 (24/255)=0.06
    
    int A = gpioGetPWMrange(17); // 분주비 출력
    int B = gpioGetPWMdutycycle(17); //듀티값 출력
    int C = gpioGetPWMfrequency(17); // 현재 주파수 출력
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
void m_left()
{
    if(gpioInitialise()<0) 
        return;
    
    gpioSetMode(18,PI_OUTPUT);
    gpioSetPWMfrequency(18,50);
    gpioSetPWMrange(18,400);
    
    gpioPWM(18, 24);//왼쪽값인가
    
    int A = gpioGetPWMrange(18);
    int B = gpioGetPWMdutycycle(18);
    int C = gpioGetPWMfrequency(18);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
void m_right()
{
    if(gpioInitialise()<0) 
        return;
    
    gpioSetMode(18,PI_OUTPUT);
    gpioSetPWMfrequency(18,50);
    gpioSetPWMrange(18,400);
    
    gpioPWM(18, 36);//오른쪽값인가
    
    int A = gpioGetPWMrange(18);
    int B = gpioGetPWMdutycycle(18);
    int C = gpioGetPWMfrequency(18);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
void m_middle()
{
    if(gpioInitialise()<0) 
        return;
    
    gpioSetMode(18,PI_OUTPUT);
    gpioSetPWMfrequency(18,50);
    gpioSetPWMrange(18,400);
    
    gpioPWM(18, 30);//중립값인가
    
    int A = gpioGetPWMrange(18);
    int B = gpioGetPWMdutycycle(18);
    int C = gpioGetPWMfrequency(18);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
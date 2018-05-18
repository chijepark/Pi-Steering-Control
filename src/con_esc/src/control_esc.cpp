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
        return;//���̺귯���̴Ͻ�

    gpioSetMode(17,PI_OUTPUT);//GPIO17�����
    gpioSetPWMfrequency(17,40);//���ļ�40
    gpioSetPWMrange(17,400);//���ֺ�400���� Ȯ
    
    gpioPWM(17, 24); // �߸���ȣ�ΰ�
    time_sleep(0.05);//�ð�������
    gpioPWM(17, 23);//������ȣ�ΰ�
    time_sleep(0.05);
    gpioPWM(17, 0);
    time_sleep(0.05);
    
    //// 0V �ΰ��� �Ȱ��� �������۽���
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
        return; // pigpio ���̺귯�� �̴Ͻ�

    gpioSetMode(17,PI_OUTPUT); // GPIO 17���� ��� ����
    gpioSetPWMfrequency(17,40); // ���ļ� 40Hz�� ����
    gpioSetPWMrange(17,400); // ���ֺ� 255->400 ��ȯ

    gpioPWM(17, 24); // 6% ��Ƽ�� �ΰ� (24/255)=0.06
    
    int A = gpioGetPWMrange(17); // ���ֺ� ���
    int B = gpioGetPWMdutycycle(17); //��Ƽ�� ���
    int C = gpioGetPWMfrequency(17); // ���� ���ļ� ���
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
    
    gpioPWM(18, 24);//���ʰ��ΰ�
    
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
    
    gpioPWM(18, 36);//�����ʰ��ΰ�
    
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
    
    gpioPWM(18, 30);//�߸����ΰ�
    
    int A = gpioGetPWMrange(18);
    int B = gpioGetPWMdutycycle(18);
    int C = gpioGetPWMfrequency(18);
    printf("rage : %d\n",A);
    printf("duty cycle : %d\n",B);
    printf("frequency : %d\n",C);
    return;
}
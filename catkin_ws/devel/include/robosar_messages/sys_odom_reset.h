// Generated by gencpp from file robosar_messages/sys_odom_reset.msg
// DO NOT EDIT!


#ifndef ROBOSAR_MESSAGES_MESSAGE_SYS_ODOM_RESET_H
#define ROBOSAR_MESSAGES_MESSAGE_SYS_ODOM_RESET_H

#include <ros/service_traits.h>


#include <robosar_messages/sys_odom_resetRequest.h>
#include <robosar_messages/sys_odom_resetResponse.h>


namespace robosar_messages
{

struct sys_odom_reset
{

typedef sys_odom_resetRequest Request;
typedef sys_odom_resetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct sys_odom_reset
} // namespace robosar_messages


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robosar_messages::sys_odom_reset > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robosar_messages::sys_odom_reset&) { return value(); }
};

template<>
struct DataType< ::robosar_messages::sys_odom_reset > {
  static const char* value()
  {
    return "robosar_messages/sys_odom_reset";
  }

  static const char* value(const ::robosar_messages::sys_odom_reset&) { return value(); }
};


// service_traits::MD5Sum< ::robosar_messages::sys_odom_resetRequest> should match
// service_traits::MD5Sum< ::robosar_messages::sys_odom_reset >
template<>
struct MD5Sum< ::robosar_messages::sys_odom_resetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robosar_messages::sys_odom_reset >::value();
  }
  static const char* value(const ::robosar_messages::sys_odom_resetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robosar_messages::sys_odom_resetRequest> should match
// service_traits::DataType< ::robosar_messages::sys_odom_reset >
template<>
struct DataType< ::robosar_messages::sys_odom_resetRequest>
{
  static const char* value()
  {
    return DataType< ::robosar_messages::sys_odom_reset >::value();
  }
  static const char* value(const ::robosar_messages::sys_odom_resetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robosar_messages::sys_odom_resetResponse> should match
// service_traits::MD5Sum< ::robosar_messages::sys_odom_reset >
template<>
struct MD5Sum< ::robosar_messages::sys_odom_resetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robosar_messages::sys_odom_reset >::value();
  }
  static const char* value(const ::robosar_messages::sys_odom_resetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robosar_messages::sys_odom_resetResponse> should match
// service_traits::DataType< ::robosar_messages::sys_odom_reset >
template<>
struct DataType< ::robosar_messages::sys_odom_resetResponse>
{
  static const char* value()
  {
    return DataType< ::robosar_messages::sys_odom_reset >::value();
  }
  static const char* value(const ::robosar_messages::sys_odom_resetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOSAR_MESSAGES_MESSAGE_SYS_ODOM_RESET_H

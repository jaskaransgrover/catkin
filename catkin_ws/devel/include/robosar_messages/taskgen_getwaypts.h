// Generated by gencpp from file robosar_messages/taskgen_getwaypts.msg
// DO NOT EDIT!


#ifndef ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTS_H
#define ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTS_H

#include <ros/service_traits.h>


#include <robosar_messages/taskgen_getwayptsRequest.h>
#include <robosar_messages/taskgen_getwayptsResponse.h>


namespace robosar_messages
{

struct taskgen_getwaypts
{

typedef taskgen_getwayptsRequest Request;
typedef taskgen_getwayptsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct taskgen_getwaypts
} // namespace robosar_messages


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robosar_messages::taskgen_getwaypts > {
  static const char* value()
  {
    return "8305d31e6e7c96b352b096cf75748977";
  }

  static const char* value(const ::robosar_messages::taskgen_getwaypts&) { return value(); }
};

template<>
struct DataType< ::robosar_messages::taskgen_getwaypts > {
  static const char* value()
  {
    return "robosar_messages/taskgen_getwaypts";
  }

  static const char* value(const ::robosar_messages::taskgen_getwaypts&) { return value(); }
};


// service_traits::MD5Sum< ::robosar_messages::taskgen_getwayptsRequest> should match
// service_traits::MD5Sum< ::robosar_messages::taskgen_getwaypts >
template<>
struct MD5Sum< ::robosar_messages::taskgen_getwayptsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robosar_messages::taskgen_getwaypts >::value();
  }
  static const char* value(const ::robosar_messages::taskgen_getwayptsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robosar_messages::taskgen_getwayptsRequest> should match
// service_traits::DataType< ::robosar_messages::taskgen_getwaypts >
template<>
struct DataType< ::robosar_messages::taskgen_getwayptsRequest>
{
  static const char* value()
  {
    return DataType< ::robosar_messages::taskgen_getwaypts >::value();
  }
  static const char* value(const ::robosar_messages::taskgen_getwayptsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robosar_messages::taskgen_getwayptsResponse> should match
// service_traits::MD5Sum< ::robosar_messages::taskgen_getwaypts >
template<>
struct MD5Sum< ::robosar_messages::taskgen_getwayptsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robosar_messages::taskgen_getwaypts >::value();
  }
  static const char* value(const ::robosar_messages::taskgen_getwayptsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robosar_messages::taskgen_getwayptsResponse> should match
// service_traits::DataType< ::robosar_messages::taskgen_getwaypts >
template<>
struct DataType< ::robosar_messages::taskgen_getwayptsResponse>
{
  static const char* value()
  {
    return DataType< ::robosar_messages::taskgen_getwaypts >::value();
  }
  static const char* value(const ::robosar_messages::taskgen_getwayptsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTS_H

// Generated by gencpp from file slam_toolbox_msgs/ClearQueueResponse.msg
// DO NOT EDIT!


#ifndef SLAM_TOOLBOX_MSGS_MESSAGE_CLEARQUEUERESPONSE_H
#define SLAM_TOOLBOX_MSGS_MESSAGE_CLEARQUEUERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace slam_toolbox_msgs
{
template <class ContainerAllocator>
struct ClearQueueResponse_
{
  typedef ClearQueueResponse_<ContainerAllocator> Type;

  ClearQueueResponse_()
    : status(false)  {
    }
  ClearQueueResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ClearQueueResponse_

typedef ::slam_toolbox_msgs::ClearQueueResponse_<std::allocator<void> > ClearQueueResponse;

typedef boost::shared_ptr< ::slam_toolbox_msgs::ClearQueueResponse > ClearQueueResponsePtr;
typedef boost::shared_ptr< ::slam_toolbox_msgs::ClearQueueResponse const> ClearQueueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator1> & lhs, const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator1> & lhs, const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace slam_toolbox_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slam_toolbox_msgs/ClearQueueResponse";
  }

  static const char* value(const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n"
;
  }

  static const char* value(const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClearQueueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::slam_toolbox_msgs::ClearQueueResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SLAM_TOOLBOX_MSGS_MESSAGE_CLEARQUEUERESPONSE_H

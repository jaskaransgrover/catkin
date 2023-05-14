// Generated by gencpp from file robosar_messages/taskgen_getwayptsResponse.msg
// DO NOT EDIT!


#ifndef ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTSRESPONSE_H
#define ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robosar_messages
{
template <class ContainerAllocator>
struct taskgen_getwayptsResponse_
{
  typedef taskgen_getwayptsResponse_<ContainerAllocator> Type;

  taskgen_getwayptsResponse_()
    : num_pts(0)
    , dims(0)
    , waypoints()  {
    }
  taskgen_getwayptsResponse_(const ContainerAllocator& _alloc)
    : num_pts(0)
    , dims(0)
    , waypoints(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _num_pts_type;
  _num_pts_type num_pts;

   typedef int64_t _dims_type;
  _dims_type dims;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _waypoints_type;
  _waypoints_type waypoints;





  typedef boost::shared_ptr< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct taskgen_getwayptsResponse_

typedef ::robosar_messages::taskgen_getwayptsResponse_<std::allocator<void> > taskgen_getwayptsResponse;

typedef boost::shared_ptr< ::robosar_messages::taskgen_getwayptsResponse > taskgen_getwayptsResponsePtr;
typedef boost::shared_ptr< ::robosar_messages::taskgen_getwayptsResponse const> taskgen_getwayptsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator1> & lhs, const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.num_pts == rhs.num_pts &&
    lhs.dims == rhs.dims &&
    lhs.waypoints == rhs.waypoints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator1> & lhs, const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robosar_messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d2a4ce31f01e350a2a9b9497fb038a9";
  }

  static const char* value(const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d2a4ce31f01e350ULL;
  static const uint64_t static_value2 = 0xa2a9b9497fb038a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robosar_messages/taskgen_getwayptsResponse";
  }

  static const char* value(const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 num_pts\n"
"int64 dims\n"
"int64[] waypoints\n"
"\n"
;
  }

  static const char* value(const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num_pts);
      stream.next(m.dims);
      stream.next(m.waypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct taskgen_getwayptsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robosar_messages::taskgen_getwayptsResponse_<ContainerAllocator>& v)
  {
    s << indent << "num_pts: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num_pts);
    s << indent << "dims: ";
    Printer<int64_t>::stream(s, indent + "  ", v.dims);
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.waypoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOSAR_MESSAGES_MESSAGE_TASKGEN_GETWAYPTSRESPONSE_H

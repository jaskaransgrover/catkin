// Generated by gencpp from file robosar_controller/PurePursuitResult.msg
// DO NOT EDIT!


#ifndef ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITRESULT_H
#define ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robosar_controller
{
template <class ContainerAllocator>
struct PurePursuitResult_
{
  typedef PurePursuitResult_<ContainerAllocator> Type;

  PurePursuitResult_()
    : goal_reached(false)  {
    }
  PurePursuitResult_(const ContainerAllocator& _alloc)
    : goal_reached(false)  {
  (void)_alloc;
    }



   typedef uint8_t _goal_reached_type;
  _goal_reached_type goal_reached;





  typedef boost::shared_ptr< ::robosar_controller::PurePursuitResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robosar_controller::PurePursuitResult_<ContainerAllocator> const> ConstPtr;

}; // struct PurePursuitResult_

typedef ::robosar_controller::PurePursuitResult_<std::allocator<void> > PurePursuitResult;

typedef boost::shared_ptr< ::robosar_controller::PurePursuitResult > PurePursuitResultPtr;
typedef boost::shared_ptr< ::robosar_controller::PurePursuitResult const> PurePursuitResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robosar_controller::PurePursuitResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robosar_controller::PurePursuitResult_<ContainerAllocator1> & lhs, const ::robosar_controller::PurePursuitResult_<ContainerAllocator2> & rhs)
{
  return lhs.goal_reached == rhs.goal_reached;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robosar_controller::PurePursuitResult_<ContainerAllocator1> & lhs, const ::robosar_controller::PurePursuitResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robosar_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::PurePursuitResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::PurePursuitResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::PurePursuitResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a65bc774d2139031955fd7cc94fdd40f";
  }

  static const char* value(const ::robosar_controller::PurePursuitResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa65bc774d2139031ULL;
  static const uint64_t static_value2 = 0x955fd7cc94fdd40fULL;
};

template<class ContainerAllocator>
struct DataType< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robosar_controller/PurePursuitResult";
  }

  static const char* value(const ::robosar_controller::PurePursuitResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"bool goal_reached\n"
;
  }

  static const char* value(const ::robosar_controller::PurePursuitResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal_reached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PurePursuitResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robosar_controller::PurePursuitResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robosar_controller::PurePursuitResult_<ContainerAllocator>& v)
  {
    s << indent << "goal_reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.goal_reached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITRESULT_H

// Generated by gencpp from file robosar_controller/PurePursuitGoal.msg
// DO NOT EDIT!


#ifndef ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITGOAL_H
#define ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace robosar_controller
{
template <class ContainerAllocator>
struct PurePursuitGoal_
{
  typedef PurePursuitGoal_<ContainerAllocator> Type;

  PurePursuitGoal_()
    : path()  {
    }
  PurePursuitGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PurePursuitGoal_

typedef ::robosar_controller::PurePursuitGoal_<std::allocator<void> > PurePursuitGoal;

typedef boost::shared_ptr< ::robosar_controller::PurePursuitGoal > PurePursuitGoalPtr;
typedef boost::shared_ptr< ::robosar_controller::PurePursuitGoal const> PurePursuitGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robosar_controller::PurePursuitGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robosar_controller::PurePursuitGoal_<ContainerAllocator1> & lhs, const ::robosar_controller::PurePursuitGoal_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robosar_controller::PurePursuitGoal_<ContainerAllocator1> & lhs, const ::robosar_controller::PurePursuitGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robosar_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58d6f138c7de7ef47c75d4b7e5df5472";
  }

  static const char* value(const ::robosar_controller::PurePursuitGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58d6f138c7de7ef4ULL;
  static const uint64_t static_value2 = 0x7c75d4b7e5df5472ULL;
};

template<class ContainerAllocator>
struct DataType< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robosar_controller/PurePursuitGoal";
  }

  static const char* value(const ::robosar_controller::PurePursuitGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"nav_msgs/Path path\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::robosar_controller::PurePursuitGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PurePursuitGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robosar_controller::PurePursuitGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robosar_controller::PurePursuitGoal_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOSAR_CONTROLLER_MESSAGE_PUREPURSUITGOAL_H
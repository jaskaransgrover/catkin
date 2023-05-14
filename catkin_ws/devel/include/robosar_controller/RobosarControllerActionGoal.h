// Generated by gencpp from file robosar_controller/RobosarControllerActionGoal.msg
// DO NOT EDIT!


#ifndef ROBOSAR_CONTROLLER_MESSAGE_ROBOSARCONTROLLERACTIONGOAL_H
#define ROBOSAR_CONTROLLER_MESSAGE_ROBOSARCONTROLLERACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <robosar_controller/RobosarControllerGoal.h>

namespace robosar_controller
{
template <class ContainerAllocator>
struct RobosarControllerActionGoal_
{
  typedef RobosarControllerActionGoal_<ContainerAllocator> Type;

  RobosarControllerActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  RobosarControllerActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::robosar_controller::RobosarControllerGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RobosarControllerActionGoal_

typedef ::robosar_controller::RobosarControllerActionGoal_<std::allocator<void> > RobosarControllerActionGoal;

typedef boost::shared_ptr< ::robosar_controller::RobosarControllerActionGoal > RobosarControllerActionGoalPtr;
typedef boost::shared_ptr< ::robosar_controller::RobosarControllerActionGoal const> RobosarControllerActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator1> & lhs, const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator1> & lhs, const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robosar_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67652d6725a4bc1dfb2a4b0a2a0f65ab";
  }

  static const char* value(const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67652d6725a4bc1dULL;
  static const uint64_t static_value2 = 0xfb2a4b0a2a0f65abULL;
};

template<class ContainerAllocator>
struct DataType< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robosar_controller/RobosarControllerActionGoal";
  }

  static const char* value(const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"RobosarControllerGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robosar_controller/RobosarControllerGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"string agent_name\n"
"nav_msgs/Path path\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
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

  static const char* value(const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobosarControllerActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robosar_controller::RobosarControllerActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::robosar_controller::RobosarControllerGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOSAR_CONTROLLER_MESSAGE_ROBOSARCONTROLLERACTIONGOAL_H

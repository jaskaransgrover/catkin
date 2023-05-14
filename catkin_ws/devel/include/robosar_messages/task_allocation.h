// Generated by gencpp from file robosar_messages/task_allocation.msg
// DO NOT EDIT!


#ifndef ROBOSAR_MESSAGES_MESSAGE_TASK_ALLOCATION_H
#define ROBOSAR_MESSAGES_MESSAGE_TASK_ALLOCATION_H


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
struct task_allocation_
{
  typedef task_allocation_<ContainerAllocator> Type;

  task_allocation_()
    : id()
    , startx()
    , starty()
    , goalx()
    , goaly()  {
    }
  task_allocation_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , startx(_alloc)
    , starty(_alloc)
    , goalx(_alloc)
    , goaly(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _id_type;
  _id_type id;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _startx_type;
  _startx_type startx;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _starty_type;
  _starty_type starty;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _goalx_type;
  _goalx_type goalx;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _goaly_type;
  _goaly_type goaly;





  typedef boost::shared_ptr< ::robosar_messages::task_allocation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robosar_messages::task_allocation_<ContainerAllocator> const> ConstPtr;

}; // struct task_allocation_

typedef ::robosar_messages::task_allocation_<std::allocator<void> > task_allocation;

typedef boost::shared_ptr< ::robosar_messages::task_allocation > task_allocationPtr;
typedef boost::shared_ptr< ::robosar_messages::task_allocation const> task_allocationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robosar_messages::task_allocation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robosar_messages::task_allocation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robosar_messages::task_allocation_<ContainerAllocator1> & lhs, const ::robosar_messages::task_allocation_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.startx == rhs.startx &&
    lhs.starty == rhs.starty &&
    lhs.goalx == rhs.goalx &&
    lhs.goaly == rhs.goaly;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robosar_messages::task_allocation_<ContainerAllocator1> & lhs, const ::robosar_messages::task_allocation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robosar_messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robosar_messages::task_allocation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robosar_messages::task_allocation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_messages::task_allocation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robosar_messages::task_allocation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_messages::task_allocation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robosar_messages::task_allocation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robosar_messages::task_allocation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f624a16b66a516b8389674edd586ce7d";
  }

  static const char* value(const ::robosar_messages::task_allocation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf624a16b66a516b8ULL;
  static const uint64_t static_value2 = 0x389674edd586ce7dULL;
};

template<class ContainerAllocator>
struct DataType< ::robosar_messages::task_allocation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robosar_messages/task_allocation";
  }

  static const char* value(const ::robosar_messages::task_allocation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robosar_messages::task_allocation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] id\n"
"float32[] startx\n"
"float32[] starty\n"
"float32[] goalx\n"
"float32[] goaly\n"
;
  }

  static const char* value(const ::robosar_messages::task_allocation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robosar_messages::task_allocation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.startx);
      stream.next(m.starty);
      stream.next(m.goalx);
      stream.next(m.goaly);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct task_allocation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robosar_messages::task_allocation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robosar_messages::task_allocation_<ContainerAllocator>& v)
  {
    s << indent << "id[]" << std::endl;
    for (size_t i = 0; i < v.id.size(); ++i)
    {
      s << indent << "  id[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id[i]);
    }
    s << indent << "startx[]" << std::endl;
    for (size_t i = 0; i < v.startx.size(); ++i)
    {
      s << indent << "  startx[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.startx[i]);
    }
    s << indent << "starty[]" << std::endl;
    for (size_t i = 0; i < v.starty.size(); ++i)
    {
      s << indent << "  starty[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.starty[i]);
    }
    s << indent << "goalx[]" << std::endl;
    for (size_t i = 0; i < v.goalx.size(); ++i)
    {
      s << indent << "  goalx[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.goalx[i]);
    }
    s << indent << "goaly[]" << std::endl;
    for (size_t i = 0; i < v.goaly.size(); ++i)
    {
      s << indent << "  goaly[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.goaly[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOSAR_MESSAGES_MESSAGE_TASK_ALLOCATION_H
// Generated by gencpp from file khepera_communicator/Time.msg
// DO NOT EDIT!


#ifndef KHEPERA_COMMUNICATOR_MESSAGE_TIME_H
#define KHEPERA_COMMUNICATOR_MESSAGE_TIME_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace khepera_communicator
{
template <class ContainerAllocator>
struct Time_
{
  typedef Time_<ContainerAllocator> Type;

  Time_()
    : time(0.0)  {
    }
  Time_(const ContainerAllocator& _alloc)
    : time(0.0)  {
  (void)_alloc;
    }



   typedef double _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::khepera_communicator::Time_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::khepera_communicator::Time_<ContainerAllocator> const> ConstPtr;

}; // struct Time_

typedef ::khepera_communicator::Time_<std::allocator<void> > Time;

typedef boost::shared_ptr< ::khepera_communicator::Time > TimePtr;
typedef boost::shared_ptr< ::khepera_communicator::Time const> TimeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::khepera_communicator::Time_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::khepera_communicator::Time_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::khepera_communicator::Time_<ContainerAllocator1> & lhs, const ::khepera_communicator::Time_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::khepera_communicator::Time_<ContainerAllocator1> & lhs, const ::khepera_communicator::Time_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace khepera_communicator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Time_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Time_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Time_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Time_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Time_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Time_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::khepera_communicator::Time_<ContainerAllocator> >
{
  static const char* value()
  {
    return "be5310e7aa4c90cdee120add91648cee";
  }

  static const char* value(const ::khepera_communicator::Time_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbe5310e7aa4c90cdULL;
  static const uint64_t static_value2 = 0xee120add91648ceeULL;
};

template<class ContainerAllocator>
struct DataType< ::khepera_communicator::Time_<ContainerAllocator> >
{
  static const char* value()
  {
    return "khepera_communicator/Time";
  }

  static const char* value(const ::khepera_communicator::Time_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::khepera_communicator::Time_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 time\n"
;
  }

  static const char* value(const ::khepera_communicator::Time_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::khepera_communicator::Time_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Time_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::khepera_communicator::Time_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::khepera_communicator::Time_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KHEPERA_COMMUNICATOR_MESSAGE_TIME_H
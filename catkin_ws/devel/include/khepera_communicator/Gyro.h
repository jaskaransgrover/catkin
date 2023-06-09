// Generated by gencpp from file khepera_communicator/Gyro.msg
// DO NOT EDIT!


#ifndef KHEPERA_COMMUNICATOR_MESSAGE_GYRO_H
#define KHEPERA_COMMUNICATOR_MESSAGE_GYRO_H


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
struct Gyro_
{
  typedef Gyro_<ContainerAllocator> Type;

  Gyro_()
    : gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)  {
    }
  Gyro_(const ContainerAllocator& _alloc)
    : gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)  {
  (void)_alloc;
    }



   typedef float _gyro_x_type;
  _gyro_x_type gyro_x;

   typedef float _gyro_y_type;
  _gyro_y_type gyro_y;

   typedef float _gyro_z_type;
  _gyro_z_type gyro_z;





  typedef boost::shared_ptr< ::khepera_communicator::Gyro_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::khepera_communicator::Gyro_<ContainerAllocator> const> ConstPtr;

}; // struct Gyro_

typedef ::khepera_communicator::Gyro_<std::allocator<void> > Gyro;

typedef boost::shared_ptr< ::khepera_communicator::Gyro > GyroPtr;
typedef boost::shared_ptr< ::khepera_communicator::Gyro const> GyroConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::khepera_communicator::Gyro_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::khepera_communicator::Gyro_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::khepera_communicator::Gyro_<ContainerAllocator1> & lhs, const ::khepera_communicator::Gyro_<ContainerAllocator2> & rhs)
{
  return lhs.gyro_x == rhs.gyro_x &&
    lhs.gyro_y == rhs.gyro_y &&
    lhs.gyro_z == rhs.gyro_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::khepera_communicator::Gyro_<ContainerAllocator1> & lhs, const ::khepera_communicator::Gyro_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace khepera_communicator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Gyro_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Gyro_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Gyro_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Gyro_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Gyro_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Gyro_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::khepera_communicator::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c79fa4d50eba4690498134e3d3fb01ea";
  }

  static const char* value(const ::khepera_communicator::Gyro_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc79fa4d50eba4690ULL;
  static const uint64_t static_value2 = 0x498134e3d3fb01eaULL;
};

template<class ContainerAllocator>
struct DataType< ::khepera_communicator::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "khepera_communicator/Gyro";
  }

  static const char* value(const ::khepera_communicator::Gyro_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::khepera_communicator::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 gyro_x\n"
"float32 gyro_y\n"
"float32 gyro_z\n"
;
  }

  static const char* value(const ::khepera_communicator::Gyro_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::khepera_communicator::Gyro_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gyro_x);
      stream.next(m.gyro_y);
      stream.next(m.gyro_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gyro_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::khepera_communicator::Gyro_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::khepera_communicator::Gyro_<ContainerAllocator>& v)
  {
    s << indent << "gyro_x: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_x);
    s << indent << "gyro_y: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_y);
    s << indent << "gyro_z: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KHEPERA_COMMUNICATOR_MESSAGE_GYRO_H

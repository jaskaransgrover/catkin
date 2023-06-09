// Generated by gencpp from file khepera_communicator/Encoder_POS.msg
// DO NOT EDIT!


#ifndef KHEPERA_COMMUNICATOR_MESSAGE_ENCODER_POS_H
#define KHEPERA_COMMUNICATOR_MESSAGE_ENCODER_POS_H


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
struct Encoder_POS_
{
  typedef Encoder_POS_<ContainerAllocator> Type;

  Encoder_POS_()
    : pos_L(0)
    , pos_R(0)  {
    }
  Encoder_POS_(const ContainerAllocator& _alloc)
    : pos_L(0)
    , pos_R(0)  {
  (void)_alloc;
    }



   typedef int64_t _pos_L_type;
  _pos_L_type pos_L;

   typedef int64_t _pos_R_type;
  _pos_R_type pos_R;





  typedef boost::shared_ptr< ::khepera_communicator::Encoder_POS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::khepera_communicator::Encoder_POS_<ContainerAllocator> const> ConstPtr;

}; // struct Encoder_POS_

typedef ::khepera_communicator::Encoder_POS_<std::allocator<void> > Encoder_POS;

typedef boost::shared_ptr< ::khepera_communicator::Encoder_POS > Encoder_POSPtr;
typedef boost::shared_ptr< ::khepera_communicator::Encoder_POS const> Encoder_POSConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::khepera_communicator::Encoder_POS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::khepera_communicator::Encoder_POS_<ContainerAllocator1> & lhs, const ::khepera_communicator::Encoder_POS_<ContainerAllocator2> & rhs)
{
  return lhs.pos_L == rhs.pos_L &&
    lhs.pos_R == rhs.pos_R;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::khepera_communicator::Encoder_POS_<ContainerAllocator1> & lhs, const ::khepera_communicator::Encoder_POS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace khepera_communicator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::khepera_communicator::Encoder_POS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::khepera_communicator::Encoder_POS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::khepera_communicator::Encoder_POS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47f33c7ad24d6372d77eef644df6fcf6";
  }

  static const char* value(const ::khepera_communicator::Encoder_POS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47f33c7ad24d6372ULL;
  static const uint64_t static_value2 = 0xd77eef644df6fcf6ULL;
};

template<class ContainerAllocator>
struct DataType< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "khepera_communicator/Encoder_POS";
  }

  static const char* value(const ::khepera_communicator::Encoder_POS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 pos_L\n"
"int64 pos_R\n"
;
  }

  static const char* value(const ::khepera_communicator::Encoder_POS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos_L);
      stream.next(m.pos_R);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Encoder_POS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::khepera_communicator::Encoder_POS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::khepera_communicator::Encoder_POS_<ContainerAllocator>& v)
  {
    s << indent << "pos_L: ";
    Printer<int64_t>::stream(s, indent + "  ", v.pos_L);
    s << indent << "pos_R: ";
    Printer<int64_t>::stream(s, indent + "  ", v.pos_R);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KHEPERA_COMMUNICATOR_MESSAGE_ENCODER_POS_H

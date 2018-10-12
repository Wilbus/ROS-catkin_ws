// Generated by gencpp from file talker_listener/replyServResponse.msg
// DO NOT EDIT!


#ifndef TALKER_LISTENER_MESSAGE_REPLYSERVRESPONSE_H
#define TALKER_LISTENER_MESSAGE_REPLYSERVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace talker_listener
{
template <class ContainerAllocator>
struct replyServResponse_
{
  typedef replyServResponse_<ContainerAllocator> Type;

  replyServResponse_()
    : numresp(0)
    , messageresp()  {
    }
  replyServResponse_(const ContainerAllocator& _alloc)
    : numresp(0)
    , messageresp(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _numresp_type;
  _numresp_type numresp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _messageresp_type;
  _messageresp_type messageresp;





  typedef boost::shared_ptr< ::talker_listener::replyServResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::talker_listener::replyServResponse_<ContainerAllocator> const> ConstPtr;

}; // struct replyServResponse_

typedef ::talker_listener::replyServResponse_<std::allocator<void> > replyServResponse;

typedef boost::shared_ptr< ::talker_listener::replyServResponse > replyServResponsePtr;
typedef boost::shared_ptr< ::talker_listener::replyServResponse const> replyServResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::talker_listener::replyServResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::talker_listener::replyServResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace talker_listener

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'talker_listener': ['/home/william/catkin_ws/src/talker_listener/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::talker_listener::replyServResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::talker_listener::replyServResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talker_listener::replyServResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talker_listener::replyServResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talker_listener::replyServResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talker_listener::replyServResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::talker_listener::replyServResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "565ae7c77001bb5fe1c48f084ef59f6d";
  }

  static const char* value(const ::talker_listener::replyServResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x565ae7c77001bb5fULL;
  static const uint64_t static_value2 = 0xe1c48f084ef59f6dULL;
};

template<class ContainerAllocator>
struct DataType< ::talker_listener::replyServResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "talker_listener/replyServResponse";
  }

  static const char* value(const ::talker_listener::replyServResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::talker_listener::replyServResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 numresp\n\
string messageresp\n\
\n\
";
  }

  static const char* value(const ::talker_listener::replyServResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::talker_listener::replyServResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.numresp);
      stream.next(m.messageresp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct replyServResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::talker_listener::replyServResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::talker_listener::replyServResponse_<ContainerAllocator>& v)
  {
    s << indent << "numresp: ";
    Printer<int64_t>::stream(s, indent + "  ", v.numresp);
    s << indent << "messageresp: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.messageresp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TALKER_LISTENER_MESSAGE_REPLYSERVRESPONSE_H

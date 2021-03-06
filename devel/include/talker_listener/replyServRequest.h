// Generated by gencpp from file talker_listener/replyServRequest.msg
// DO NOT EDIT!


#ifndef TALKER_LISTENER_MESSAGE_REPLYSERVREQUEST_H
#define TALKER_LISTENER_MESSAGE_REPLYSERVREQUEST_H


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
struct replyServRequest_
{
  typedef replyServRequest_<ContainerAllocator> Type;

  replyServRequest_()
    : numreq(0)
    , messagereq()  {
    }
  replyServRequest_(const ContainerAllocator& _alloc)
    : numreq(0)
    , messagereq(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _numreq_type;
  _numreq_type numreq;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _messagereq_type;
  _messagereq_type messagereq;





  typedef boost::shared_ptr< ::talker_listener::replyServRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::talker_listener::replyServRequest_<ContainerAllocator> const> ConstPtr;

}; // struct replyServRequest_

typedef ::talker_listener::replyServRequest_<std::allocator<void> > replyServRequest;

typedef boost::shared_ptr< ::talker_listener::replyServRequest > replyServRequestPtr;
typedef boost::shared_ptr< ::talker_listener::replyServRequest const> replyServRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::talker_listener::replyServRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::talker_listener::replyServRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::talker_listener::replyServRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::talker_listener::replyServRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talker_listener::replyServRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talker_listener::replyServRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talker_listener::replyServRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talker_listener::replyServRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::talker_listener::replyServRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "133f9bf15a876a90cd2226ae17d86ca8";
  }

  static const char* value(const ::talker_listener::replyServRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x133f9bf15a876a90ULL;
  static const uint64_t static_value2 = 0xcd2226ae17d86ca8ULL;
};

template<class ContainerAllocator>
struct DataType< ::talker_listener::replyServRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "talker_listener/replyServRequest";
  }

  static const char* value(const ::talker_listener::replyServRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::talker_listener::replyServRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 numreq\n\
string messagereq\n\
";
  }

  static const char* value(const ::talker_listener::replyServRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::talker_listener::replyServRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.numreq);
      stream.next(m.messagereq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct replyServRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::talker_listener::replyServRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::talker_listener::replyServRequest_<ContainerAllocator>& v)
  {
    s << indent << "numreq: ";
    Printer<int64_t>::stream(s, indent + "  ", v.numreq);
    s << indent << "messagereq: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.messagereq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TALKER_LISTENER_MESSAGE_REPLYSERVREQUEST_H

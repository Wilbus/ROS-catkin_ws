; Auto-generated. Do not edit!


(cl:in-package talker_listener-srv)


;//! \htmlinclude replyServ-request.msg.html

(cl:defclass <replyServ-request> (roslisp-msg-protocol:ros-message)
  ((numreq
    :reader numreq
    :initarg :numreq
    :type cl:integer
    :initform 0)
   (messagereq
    :reader messagereq
    :initarg :messagereq
    :type cl:string
    :initform ""))
)

(cl:defclass replyServ-request (<replyServ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <replyServ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'replyServ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talker_listener-srv:<replyServ-request> is deprecated: use talker_listener-srv:replyServ-request instead.")))

(cl:ensure-generic-function 'numreq-val :lambda-list '(m))
(cl:defmethod numreq-val ((m <replyServ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talker_listener-srv:numreq-val is deprecated.  Use talker_listener-srv:numreq instead.")
  (numreq m))

(cl:ensure-generic-function 'messagereq-val :lambda-list '(m))
(cl:defmethod messagereq-val ((m <replyServ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talker_listener-srv:messagereq-val is deprecated.  Use talker_listener-srv:messagereq instead.")
  (messagereq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <replyServ-request>) ostream)
  "Serializes a message object of type '<replyServ-request>"
  (cl:let* ((signed (cl:slot-value msg 'numreq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'messagereq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'messagereq))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <replyServ-request>) istream)
  "Deserializes a message object of type '<replyServ-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numreq) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'messagereq) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'messagereq) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<replyServ-request>)))
  "Returns string type for a service object of type '<replyServ-request>"
  "talker_listener/replyServRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'replyServ-request)))
  "Returns string type for a service object of type 'replyServ-request"
  "talker_listener/replyServRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<replyServ-request>)))
  "Returns md5sum for a message object of type '<replyServ-request>"
  "73bbf8063d124b838da0a702ede341b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'replyServ-request)))
  "Returns md5sum for a message object of type 'replyServ-request"
  "73bbf8063d124b838da0a702ede341b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<replyServ-request>)))
  "Returns full string definition for message of type '<replyServ-request>"
  (cl:format cl:nil "int64 numreq~%string messagereq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'replyServ-request)))
  "Returns full string definition for message of type 'replyServ-request"
  (cl:format cl:nil "int64 numreq~%string messagereq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <replyServ-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'messagereq))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <replyServ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'replyServ-request
    (cl:cons ':numreq (numreq msg))
    (cl:cons ':messagereq (messagereq msg))
))
;//! \htmlinclude replyServ-response.msg.html

(cl:defclass <replyServ-response> (roslisp-msg-protocol:ros-message)
  ((numresp
    :reader numresp
    :initarg :numresp
    :type cl:integer
    :initform 0)
   (messageresp
    :reader messageresp
    :initarg :messageresp
    :type cl:string
    :initform ""))
)

(cl:defclass replyServ-response (<replyServ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <replyServ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'replyServ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talker_listener-srv:<replyServ-response> is deprecated: use talker_listener-srv:replyServ-response instead.")))

(cl:ensure-generic-function 'numresp-val :lambda-list '(m))
(cl:defmethod numresp-val ((m <replyServ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talker_listener-srv:numresp-val is deprecated.  Use talker_listener-srv:numresp instead.")
  (numresp m))

(cl:ensure-generic-function 'messageresp-val :lambda-list '(m))
(cl:defmethod messageresp-val ((m <replyServ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talker_listener-srv:messageresp-val is deprecated.  Use talker_listener-srv:messageresp instead.")
  (messageresp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <replyServ-response>) ostream)
  "Serializes a message object of type '<replyServ-response>"
  (cl:let* ((signed (cl:slot-value msg 'numresp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'messageresp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'messageresp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <replyServ-response>) istream)
  "Deserializes a message object of type '<replyServ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numresp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'messageresp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'messageresp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<replyServ-response>)))
  "Returns string type for a service object of type '<replyServ-response>"
  "talker_listener/replyServResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'replyServ-response)))
  "Returns string type for a service object of type 'replyServ-response"
  "talker_listener/replyServResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<replyServ-response>)))
  "Returns md5sum for a message object of type '<replyServ-response>"
  "73bbf8063d124b838da0a702ede341b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'replyServ-response)))
  "Returns md5sum for a message object of type 'replyServ-response"
  "73bbf8063d124b838da0a702ede341b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<replyServ-response>)))
  "Returns full string definition for message of type '<replyServ-response>"
  (cl:format cl:nil "int64 numresp~%string messageresp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'replyServ-response)))
  "Returns full string definition for message of type 'replyServ-response"
  (cl:format cl:nil "int64 numresp~%string messageresp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <replyServ-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'messageresp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <replyServ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'replyServ-response
    (cl:cons ':numresp (numresp msg))
    (cl:cons ':messageresp (messageresp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'replyServ)))
  'replyServ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'replyServ)))
  'replyServ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'replyServ)))
  "Returns string type for a service object of type '<replyServ>"
  "talker_listener/replyServ")
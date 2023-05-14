; Auto-generated. Do not edit!


(cl:in-package robosar_messages-srv)


;//! \htmlinclude sys_odom_reset-request.msg.html

(cl:defclass <sys_odom_reset-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass sys_odom_reset-request (<sys_odom_reset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sys_odom_reset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sys_odom_reset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<sys_odom_reset-request> is deprecated: use robosar_messages-srv:sys_odom_reset-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sys_odom_reset-request>) ostream)
  "Serializes a message object of type '<sys_odom_reset-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sys_odom_reset-request>) istream)
  "Deserializes a message object of type '<sys_odom_reset-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sys_odom_reset-request>)))
  "Returns string type for a service object of type '<sys_odom_reset-request>"
  "robosar_messages/sys_odom_resetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sys_odom_reset-request)))
  "Returns string type for a service object of type 'sys_odom_reset-request"
  "robosar_messages/sys_odom_resetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sys_odom_reset-request>)))
  "Returns md5sum for a message object of type '<sys_odom_reset-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sys_odom_reset-request)))
  "Returns md5sum for a message object of type 'sys_odom_reset-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sys_odom_reset-request>)))
  "Returns full string definition for message of type '<sys_odom_reset-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sys_odom_reset-request)))
  "Returns full string definition for message of type 'sys_odom_reset-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sys_odom_reset-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sys_odom_reset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sys_odom_reset-request
))
;//! \htmlinclude sys_odom_reset-response.msg.html

(cl:defclass <sys_odom_reset-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass sys_odom_reset-response (<sys_odom_reset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sys_odom_reset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sys_odom_reset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<sys_odom_reset-response> is deprecated: use robosar_messages-srv:sys_odom_reset-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sys_odom_reset-response>) ostream)
  "Serializes a message object of type '<sys_odom_reset-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sys_odom_reset-response>) istream)
  "Deserializes a message object of type '<sys_odom_reset-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sys_odom_reset-response>)))
  "Returns string type for a service object of type '<sys_odom_reset-response>"
  "robosar_messages/sys_odom_resetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sys_odom_reset-response)))
  "Returns string type for a service object of type 'sys_odom_reset-response"
  "robosar_messages/sys_odom_resetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sys_odom_reset-response>)))
  "Returns md5sum for a message object of type '<sys_odom_reset-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sys_odom_reset-response)))
  "Returns md5sum for a message object of type 'sys_odom_reset-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sys_odom_reset-response>)))
  "Returns full string definition for message of type '<sys_odom_reset-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sys_odom_reset-response)))
  "Returns full string definition for message of type 'sys_odom_reset-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sys_odom_reset-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sys_odom_reset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sys_odom_reset-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sys_odom_reset)))
  'sys_odom_reset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sys_odom_reset)))
  'sys_odom_reset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sys_odom_reset)))
  "Returns string type for a service object of type '<sys_odom_reset>"
  "robosar_messages/sys_odom_reset")
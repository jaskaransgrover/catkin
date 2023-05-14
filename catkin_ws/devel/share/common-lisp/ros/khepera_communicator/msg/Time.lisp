; Auto-generated. Do not edit!


(cl:in-package khepera_communicator-msg)


;//! \htmlinclude Time.msg.html

(cl:defclass <Time> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Time (<Time>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name khepera_communicator-msg:<Time> is deprecated: use khepera_communicator-msg:Time instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:time-val is deprecated.  Use khepera_communicator-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time>) ostream)
  "Serializes a message object of type '<Time>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time>) istream)
  "Deserializes a message object of type '<Time>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time>)))
  "Returns string type for a message object of type '<Time>"
  "khepera_communicator/Time")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time)))
  "Returns string type for a message object of type 'Time"
  "khepera_communicator/Time")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time>)))
  "Returns md5sum for a message object of type '<Time>"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time)))
  "Returns md5sum for a message object of type 'Time"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time>)))
  "Returns full string definition for message of type '<Time>"
  (cl:format cl:nil "float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time)))
  "Returns full string definition for message of type 'Time"
  (cl:format cl:nil "float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time>))
  "Converts a ROS message object to a list"
  (cl:list 'Time
    (cl:cons ':time (time msg))
))

; Auto-generated. Do not edit!


(cl:in-package khepera_communicator-msg)


;//! \htmlinclude Acc.msg.html

(cl:defclass <Acc> (roslisp-msg-protocol:ros-message)
  ((acc_x
    :reader acc_x
    :initarg :acc_x
    :type cl:float
    :initform 0.0)
   (acc_y
    :reader acc_y
    :initarg :acc_y
    :type cl:float
    :initform 0.0)
   (acc_z
    :reader acc_z
    :initarg :acc_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Acc (<Acc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name khepera_communicator-msg:<Acc> is deprecated: use khepera_communicator-msg:Acc instead.")))

(cl:ensure-generic-function 'acc_x-val :lambda-list '(m))
(cl:defmethod acc_x-val ((m <Acc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:acc_x-val is deprecated.  Use khepera_communicator-msg:acc_x instead.")
  (acc_x m))

(cl:ensure-generic-function 'acc_y-val :lambda-list '(m))
(cl:defmethod acc_y-val ((m <Acc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:acc_y-val is deprecated.  Use khepera_communicator-msg:acc_y instead.")
  (acc_y m))

(cl:ensure-generic-function 'acc_z-val :lambda-list '(m))
(cl:defmethod acc_z-val ((m <Acc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:acc_z-val is deprecated.  Use khepera_communicator-msg:acc_z instead.")
  (acc_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acc>) ostream)
  "Serializes a message object of type '<Acc>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acc>) istream)
  "Deserializes a message object of type '<Acc>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acc>)))
  "Returns string type for a message object of type '<Acc>"
  "khepera_communicator/Acc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acc)))
  "Returns string type for a message object of type 'Acc"
  "khepera_communicator/Acc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acc>)))
  "Returns md5sum for a message object of type '<Acc>"
  "6eb6fe258b879869c2ff8d4de824a46c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acc)))
  "Returns md5sum for a message object of type 'Acc"
  "6eb6fe258b879869c2ff8d4de824a46c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acc>)))
  "Returns full string definition for message of type '<Acc>"
  (cl:format cl:nil "float32 acc_x~%float32 acc_y~%float32 acc_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acc)))
  "Returns full string definition for message of type 'Acc"
  (cl:format cl:nil "float32 acc_x~%float32 acc_y~%float32 acc_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acc>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acc>))
  "Converts a ROS message object to a list"
  (cl:list 'Acc
    (cl:cons ':acc_x (acc_x msg))
    (cl:cons ':acc_y (acc_y msg))
    (cl:cons ':acc_z (acc_z msg))
))

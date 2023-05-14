; Auto-generated. Do not edit!


(cl:in-package khepera_communicator-msg)


;//! \htmlinclude K4_controls.msg.html

(cl:defclass <K4_controls> (roslisp-msg-protocol:ros-message)
  ((ctrl_W
    :reader ctrl_W
    :initarg :ctrl_W
    :type cl:float
    :initform 0.0)
   (ctrl_V
    :reader ctrl_V
    :initarg :ctrl_V
    :type cl:float
    :initform 0.0))
)

(cl:defclass K4_controls (<K4_controls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <K4_controls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'K4_controls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name khepera_communicator-msg:<K4_controls> is deprecated: use khepera_communicator-msg:K4_controls instead.")))

(cl:ensure-generic-function 'ctrl_W-val :lambda-list '(m))
(cl:defmethod ctrl_W-val ((m <K4_controls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:ctrl_W-val is deprecated.  Use khepera_communicator-msg:ctrl_W instead.")
  (ctrl_W m))

(cl:ensure-generic-function 'ctrl_V-val :lambda-list '(m))
(cl:defmethod ctrl_V-val ((m <K4_controls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:ctrl_V-val is deprecated.  Use khepera_communicator-msg:ctrl_V instead.")
  (ctrl_V m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <K4_controls>) ostream)
  "Serializes a message object of type '<K4_controls>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ctrl_W))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ctrl_V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <K4_controls>) istream)
  "Deserializes a message object of type '<K4_controls>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ctrl_W) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ctrl_V) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<K4_controls>)))
  "Returns string type for a message object of type '<K4_controls>"
  "khepera_communicator/K4_controls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'K4_controls)))
  "Returns string type for a message object of type 'K4_controls"
  "khepera_communicator/K4_controls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<K4_controls>)))
  "Returns md5sum for a message object of type '<K4_controls>"
  "8212eb98a5c89ce2b20829a1dc1970ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'K4_controls)))
  "Returns md5sum for a message object of type 'K4_controls"
  "8212eb98a5c89ce2b20829a1dc1970ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<K4_controls>)))
  "Returns full string definition for message of type '<K4_controls>"
  (cl:format cl:nil "float32 ctrl_W~%float32 ctrl_V~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'K4_controls)))
  "Returns full string definition for message of type 'K4_controls"
  (cl:format cl:nil "float32 ctrl_W~%float32 ctrl_V~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <K4_controls>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <K4_controls>))
  "Converts a ROS message object to a list"
  (cl:list 'K4_controls
    (cl:cons ':ctrl_W (ctrl_W msg))
    (cl:cons ':ctrl_V (ctrl_V msg))
))

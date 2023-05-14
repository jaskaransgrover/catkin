; Auto-generated. Do not edit!


(cl:in-package khepera_communicator-msg)


;//! \htmlinclude Encoder_SPD.msg.html

(cl:defclass <Encoder_SPD> (roslisp-msg-protocol:ros-message)
  ((spd_L
    :reader spd_L
    :initarg :spd_L
    :type cl:integer
    :initform 0)
   (spd_R
    :reader spd_R
    :initarg :spd_R
    :type cl:integer
    :initform 0))
)

(cl:defclass Encoder_SPD (<Encoder_SPD>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoder_SPD>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoder_SPD)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name khepera_communicator-msg:<Encoder_SPD> is deprecated: use khepera_communicator-msg:Encoder_SPD instead.")))

(cl:ensure-generic-function 'spd_L-val :lambda-list '(m))
(cl:defmethod spd_L-val ((m <Encoder_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:spd_L-val is deprecated.  Use khepera_communicator-msg:spd_L instead.")
  (spd_L m))

(cl:ensure-generic-function 'spd_R-val :lambda-list '(m))
(cl:defmethod spd_R-val ((m <Encoder_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:spd_R-val is deprecated.  Use khepera_communicator-msg:spd_R instead.")
  (spd_R m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoder_SPD>) ostream)
  "Serializes a message object of type '<Encoder_SPD>"
  (cl:let* ((signed (cl:slot-value msg 'spd_L)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'spd_R)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoder_SPD>) istream)
  "Deserializes a message object of type '<Encoder_SPD>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'spd_L) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'spd_R) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoder_SPD>)))
  "Returns string type for a message object of type '<Encoder_SPD>"
  "khepera_communicator/Encoder_SPD")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder_SPD)))
  "Returns string type for a message object of type 'Encoder_SPD"
  "khepera_communicator/Encoder_SPD")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoder_SPD>)))
  "Returns md5sum for a message object of type '<Encoder_SPD>"
  "3b3c260c3bd3547108ca8206192d86e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoder_SPD)))
  "Returns md5sum for a message object of type 'Encoder_SPD"
  "3b3c260c3bd3547108ca8206192d86e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoder_SPD>)))
  "Returns full string definition for message of type '<Encoder_SPD>"
  (cl:format cl:nil "int64 spd_L~%int64 spd_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoder_SPD)))
  "Returns full string definition for message of type 'Encoder_SPD"
  (cl:format cl:nil "int64 spd_L~%int64 spd_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoder_SPD>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoder_SPD>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoder_SPD
    (cl:cons ':spd_L (spd_L msg))
    (cl:cons ':spd_R (spd_R msg))
))

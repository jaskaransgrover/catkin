; Auto-generated. Do not edit!


(cl:in-package khepera_communicator-msg)


;//! \htmlinclude Encoder_POS.msg.html

(cl:defclass <Encoder_POS> (roslisp-msg-protocol:ros-message)
  ((pos_L
    :reader pos_L
    :initarg :pos_L
    :type cl:integer
    :initform 0)
   (pos_R
    :reader pos_R
    :initarg :pos_R
    :type cl:integer
    :initform 0))
)

(cl:defclass Encoder_POS (<Encoder_POS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoder_POS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoder_POS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name khepera_communicator-msg:<Encoder_POS> is deprecated: use khepera_communicator-msg:Encoder_POS instead.")))

(cl:ensure-generic-function 'pos_L-val :lambda-list '(m))
(cl:defmethod pos_L-val ((m <Encoder_POS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:pos_L-val is deprecated.  Use khepera_communicator-msg:pos_L instead.")
  (pos_L m))

(cl:ensure-generic-function 'pos_R-val :lambda-list '(m))
(cl:defmethod pos_R-val ((m <Encoder_POS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader khepera_communicator-msg:pos_R-val is deprecated.  Use khepera_communicator-msg:pos_R instead.")
  (pos_R m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoder_POS>) ostream)
  "Serializes a message object of type '<Encoder_POS>"
  (cl:let* ((signed (cl:slot-value msg 'pos_L)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_R)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoder_POS>) istream)
  "Deserializes a message object of type '<Encoder_POS>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_L) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_R) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoder_POS>)))
  "Returns string type for a message object of type '<Encoder_POS>"
  "khepera_communicator/Encoder_POS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoder_POS)))
  "Returns string type for a message object of type 'Encoder_POS"
  "khepera_communicator/Encoder_POS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoder_POS>)))
  "Returns md5sum for a message object of type '<Encoder_POS>"
  "47f33c7ad24d6372d77eef644df6fcf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoder_POS)))
  "Returns md5sum for a message object of type 'Encoder_POS"
  "47f33c7ad24d6372d77eef644df6fcf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoder_POS>)))
  "Returns full string definition for message of type '<Encoder_POS>"
  (cl:format cl:nil "int64 pos_L~%int64 pos_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoder_POS)))
  "Returns full string definition for message of type 'Encoder_POS"
  (cl:format cl:nil "int64 pos_L~%int64 pos_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoder_POS>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoder_POS>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoder_POS
    (cl:cons ':pos_L (pos_L msg))
    (cl:cons ':pos_R (pos_R msg))
))

; Auto-generated. Do not edit!


(cl:in-package robosar_messages-srv)


;//! \htmlinclude agent_status-request.msg.html

(cl:defclass <agent_status-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass agent_status-request (<agent_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<agent_status-request> is deprecated: use robosar_messages-srv:agent_status-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_status-request>) ostream)
  "Serializes a message object of type '<agent_status-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_status-request>) istream)
  "Deserializes a message object of type '<agent_status-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_status-request>)))
  "Returns string type for a service object of type '<agent_status-request>"
  "robosar_messages/agent_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_status-request)))
  "Returns string type for a service object of type 'agent_status-request"
  "robosar_messages/agent_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_status-request>)))
  "Returns md5sum for a message object of type '<agent_status-request>"
  "8e11fd7ffef74f85ca9b7e06e813c80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_status-request)))
  "Returns md5sum for a message object of type 'agent_status-request"
  "8e11fd7ffef74f85ca9b7e06e813c80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_status-request>)))
  "Returns full string definition for message of type '<agent_status-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_status-request)))
  "Returns full string definition for message of type 'agent_status-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_status-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_status-request
))
;//! \htmlinclude agent_status-response.msg.html

(cl:defclass <agent_status-response> (roslisp-msg-protocol:ros-message)
  ((agents_active
    :reader agents_active
    :initarg :agents_active
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass agent_status-response (<agent_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<agent_status-response> is deprecated: use robosar_messages-srv:agent_status-response instead.")))

(cl:ensure-generic-function 'agents_active-val :lambda-list '(m))
(cl:defmethod agents_active-val ((m <agent_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:agents_active-val is deprecated.  Use robosar_messages-srv:agents_active instead.")
  (agents_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent_status-response>) ostream)
  "Serializes a message object of type '<agent_status-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agents_active))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'agents_active))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent_status-response>) istream)
  "Deserializes a message object of type '<agent_status-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agents_active) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agents_active)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent_status-response>)))
  "Returns string type for a service object of type '<agent_status-response>"
  "robosar_messages/agent_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_status-response)))
  "Returns string type for a service object of type 'agent_status-response"
  "robosar_messages/agent_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent_status-response>)))
  "Returns md5sum for a message object of type '<agent_status-response>"
  "8e11fd7ffef74f85ca9b7e06e813c80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent_status-response)))
  "Returns md5sum for a message object of type 'agent_status-response"
  "8e11fd7ffef74f85ca9b7e06e813c80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent_status-response>)))
  "Returns full string definition for message of type '<agent_status-response>"
  (cl:format cl:nil "string[] agents_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent_status-response)))
  "Returns full string definition for message of type 'agent_status-response"
  (cl:format cl:nil "string[] agents_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent_status-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agents_active) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'agent_status-response
    (cl:cons ':agents_active (agents_active msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'agent_status)))
  'agent_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'agent_status)))
  'agent_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent_status)))
  "Returns string type for a service object of type '<agent_status>"
  "robosar_messages/agent_status")
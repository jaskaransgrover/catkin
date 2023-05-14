; Auto-generated. Do not edit!


(cl:in-package robosar_messages-srv)


;//! \htmlinclude taskgen_getwaypts-request.msg.html

(cl:defclass <taskgen_getwaypts-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (threshold
    :reader threshold
    :initarg :threshold
    :type cl:float
    :initform 0.0)
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:integer
    :initform 0))
)

(cl:defclass taskgen_getwaypts-request (<taskgen_getwaypts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <taskgen_getwaypts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'taskgen_getwaypts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<taskgen_getwaypts-request> is deprecated: use robosar_messages-srv:taskgen_getwaypts-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <taskgen_getwaypts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:map-val is deprecated.  Use robosar_messages-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <taskgen_getwaypts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:threshold-val is deprecated.  Use robosar_messages-srv:threshold instead.")
  (threshold m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <taskgen_getwaypts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:iterations-val is deprecated.  Use robosar_messages-srv:iterations instead.")
  (iterations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <taskgen_getwaypts-request>) ostream)
  "Serializes a message object of type '<taskgen_getwaypts-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <taskgen_getwaypts-request>) istream)
  "Deserializes a message object of type '<taskgen_getwaypts-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'threshold) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iterations) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<taskgen_getwaypts-request>)))
  "Returns string type for a service object of type '<taskgen_getwaypts-request>"
  "robosar_messages/taskgen_getwayptsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskgen_getwaypts-request)))
  "Returns string type for a service object of type 'taskgen_getwaypts-request"
  "robosar_messages/taskgen_getwayptsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<taskgen_getwaypts-request>)))
  "Returns md5sum for a message object of type '<taskgen_getwaypts-request>"
  "8305d31e6e7c96b352b096cf75748977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'taskgen_getwaypts-request)))
  "Returns md5sum for a message object of type 'taskgen_getwaypts-request"
  "8305d31e6e7c96b352b096cf75748977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<taskgen_getwaypts-request>)))
  "Returns full string definition for message of type '<taskgen_getwaypts-request>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%float64 threshold~%int64 iterations~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'taskgen_getwaypts-request)))
  "Returns full string definition for message of type 'taskgen_getwaypts-request"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%float64 threshold~%int64 iterations~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <taskgen_getwaypts-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <taskgen_getwaypts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'taskgen_getwaypts-request
    (cl:cons ':map (map msg))
    (cl:cons ':threshold (threshold msg))
    (cl:cons ':iterations (iterations msg))
))
;//! \htmlinclude taskgen_getwaypts-response.msg.html

(cl:defclass <taskgen_getwaypts-response> (roslisp-msg-protocol:ros-message)
  ((num_pts
    :reader num_pts
    :initarg :num_pts
    :type cl:integer
    :initform 0)
   (dims
    :reader dims
    :initarg :dims
    :type cl:integer
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass taskgen_getwaypts-response (<taskgen_getwaypts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <taskgen_getwaypts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'taskgen_getwaypts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_messages-srv:<taskgen_getwaypts-response> is deprecated: use robosar_messages-srv:taskgen_getwaypts-response instead.")))

(cl:ensure-generic-function 'num_pts-val :lambda-list '(m))
(cl:defmethod num_pts-val ((m <taskgen_getwaypts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:num_pts-val is deprecated.  Use robosar_messages-srv:num_pts instead.")
  (num_pts m))

(cl:ensure-generic-function 'dims-val :lambda-list '(m))
(cl:defmethod dims-val ((m <taskgen_getwaypts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:dims-val is deprecated.  Use robosar_messages-srv:dims instead.")
  (dims m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <taskgen_getwaypts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_messages-srv:waypoints-val is deprecated.  Use robosar_messages-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <taskgen_getwaypts-response>) ostream)
  "Serializes a message object of type '<taskgen_getwaypts-response>"
  (cl:let* ((signed (cl:slot-value msg 'num_pts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dims)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <taskgen_getwaypts-response>) istream)
  "Deserializes a message object of type '<taskgen_getwaypts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_pts) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dims) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<taskgen_getwaypts-response>)))
  "Returns string type for a service object of type '<taskgen_getwaypts-response>"
  "robosar_messages/taskgen_getwayptsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskgen_getwaypts-response)))
  "Returns string type for a service object of type 'taskgen_getwaypts-response"
  "robosar_messages/taskgen_getwayptsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<taskgen_getwaypts-response>)))
  "Returns md5sum for a message object of type '<taskgen_getwaypts-response>"
  "8305d31e6e7c96b352b096cf75748977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'taskgen_getwaypts-response)))
  "Returns md5sum for a message object of type 'taskgen_getwaypts-response"
  "8305d31e6e7c96b352b096cf75748977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<taskgen_getwaypts-response>)))
  "Returns full string definition for message of type '<taskgen_getwaypts-response>"
  (cl:format cl:nil "int64 num_pts~%int64 dims~%int64[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'taskgen_getwaypts-response)))
  "Returns full string definition for message of type 'taskgen_getwaypts-response"
  (cl:format cl:nil "int64 num_pts~%int64 dims~%int64[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <taskgen_getwaypts-response>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <taskgen_getwaypts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'taskgen_getwaypts-response
    (cl:cons ':num_pts (num_pts msg))
    (cl:cons ':dims (dims msg))
    (cl:cons ':waypoints (waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'taskgen_getwaypts)))
  'taskgen_getwaypts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'taskgen_getwaypts)))
  'taskgen_getwaypts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'taskgen_getwaypts)))
  "Returns string type for a service object of type '<taskgen_getwaypts>"
  "robosar_messages/taskgen_getwaypts")
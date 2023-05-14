; Auto-generated. Do not edit!


(cl:in-package robosar_controller-msg)


;//! \htmlinclude PurePursuitGoal.msg.html

(cl:defclass <PurePursuitGoal> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PurePursuitGoal (<PurePursuitGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PurePursuitGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PurePursuitGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_controller-msg:<PurePursuitGoal> is deprecated: use robosar_controller-msg:PurePursuitGoal instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PurePursuitGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_controller-msg:path-val is deprecated.  Use robosar_controller-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PurePursuitGoal>) ostream)
  "Serializes a message object of type '<PurePursuitGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PurePursuitGoal>) istream)
  "Deserializes a message object of type '<PurePursuitGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PurePursuitGoal>)))
  "Returns string type for a message object of type '<PurePursuitGoal>"
  "robosar_controller/PurePursuitGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PurePursuitGoal)))
  "Returns string type for a message object of type 'PurePursuitGoal"
  "robosar_controller/PurePursuitGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PurePursuitGoal>)))
  "Returns md5sum for a message object of type '<PurePursuitGoal>"
  "58d6f138c7de7ef47c75d4b7e5df5472")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PurePursuitGoal)))
  "Returns md5sum for a message object of type 'PurePursuitGoal"
  "58d6f138c7de7ef47c75d4b7e5df5472")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PurePursuitGoal>)))
  "Returns full string definition for message of type '<PurePursuitGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PurePursuitGoal)))
  "Returns full string definition for message of type 'PurePursuitGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PurePursuitGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PurePursuitGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PurePursuitGoal
    (cl:cons ':path (path msg))
))

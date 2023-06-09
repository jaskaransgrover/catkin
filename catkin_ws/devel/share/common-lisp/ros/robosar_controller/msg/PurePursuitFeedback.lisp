; Auto-generated. Do not edit!


(cl:in-package robosar_controller-msg)


;//! \htmlinclude PurePursuitFeedback.msg.html

(cl:defclass <PurePursuitFeedback> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance)))
)

(cl:defclass PurePursuitFeedback (<PurePursuitFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PurePursuitFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PurePursuitFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_controller-msg:<PurePursuitFeedback> is deprecated: use robosar_controller-msg:PurePursuitFeedback instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PurePursuitFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_controller-msg:pose-val is deprecated.  Use robosar_controller-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PurePursuitFeedback>) ostream)
  "Serializes a message object of type '<PurePursuitFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PurePursuitFeedback>) istream)
  "Deserializes a message object of type '<PurePursuitFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PurePursuitFeedback>)))
  "Returns string type for a message object of type '<PurePursuitFeedback>"
  "robosar_controller/PurePursuitFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PurePursuitFeedback)))
  "Returns string type for a message object of type 'PurePursuitFeedback"
  "robosar_controller/PurePursuitFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PurePursuitFeedback>)))
  "Returns md5sum for a message object of type '<PurePursuitFeedback>"
  "47ee8cafbfba31d9f2b33076c5078c94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PurePursuitFeedback)))
  "Returns md5sum for a message object of type 'PurePursuitFeedback"
  "47ee8cafbfba31d9f2b33076c5078c94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PurePursuitFeedback>)))
  "Returns full string definition for message of type '<PurePursuitFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%geometry_msgs/PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PurePursuitFeedback)))
  "Returns full string definition for message of type 'PurePursuitFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%geometry_msgs/PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PurePursuitFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PurePursuitFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PurePursuitFeedback
    (cl:cons ':pose (pose msg))
))

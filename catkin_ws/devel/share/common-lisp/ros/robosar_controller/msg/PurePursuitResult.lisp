; Auto-generated. Do not edit!


(cl:in-package robosar_controller-msg)


;//! \htmlinclude PurePursuitResult.msg.html

(cl:defclass <PurePursuitResult> (roslisp-msg-protocol:ros-message)
  ((goal_reached
    :reader goal_reached
    :initarg :goal_reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PurePursuitResult (<PurePursuitResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PurePursuitResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PurePursuitResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robosar_controller-msg:<PurePursuitResult> is deprecated: use robosar_controller-msg:PurePursuitResult instead.")))

(cl:ensure-generic-function 'goal_reached-val :lambda-list '(m))
(cl:defmethod goal_reached-val ((m <PurePursuitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robosar_controller-msg:goal_reached-val is deprecated.  Use robosar_controller-msg:goal_reached instead.")
  (goal_reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PurePursuitResult>) ostream)
  "Serializes a message object of type '<PurePursuitResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'goal_reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PurePursuitResult>) istream)
  "Deserializes a message object of type '<PurePursuitResult>"
    (cl:setf (cl:slot-value msg 'goal_reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PurePursuitResult>)))
  "Returns string type for a message object of type '<PurePursuitResult>"
  "robosar_controller/PurePursuitResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PurePursuitResult)))
  "Returns string type for a message object of type 'PurePursuitResult"
  "robosar_controller/PurePursuitResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PurePursuitResult>)))
  "Returns md5sum for a message object of type '<PurePursuitResult>"
  "a65bc774d2139031955fd7cc94fdd40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PurePursuitResult)))
  "Returns md5sum for a message object of type 'PurePursuitResult"
  "a65bc774d2139031955fd7cc94fdd40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PurePursuitResult>)))
  "Returns full string definition for message of type '<PurePursuitResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool goal_reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PurePursuitResult)))
  "Returns full string definition for message of type 'PurePursuitResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool goal_reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PurePursuitResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PurePursuitResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PurePursuitResult
    (cl:cons ':goal_reached (goal_reached msg))
))

;; Auto-generated. Do not edit!


(when (boundp 'robosar_controller::PurePursuitFeedback)
  (if (not (find-package "ROBOSAR_CONTROLLER"))
    (make-package "ROBOSAR_CONTROLLER"))
  (shadow 'PurePursuitFeedback (find-package "ROBOSAR_CONTROLLER")))
(unless (find-package "ROBOSAR_CONTROLLER::PUREPURSUITFEEDBACK")
  (make-package "ROBOSAR_CONTROLLER::PUREPURSUITFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PurePursuitFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robosar_controller::PurePursuitFeedback
  :super ros::object
  :slots (_pose ))

(defmethod robosar_controller::PurePursuitFeedback
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get robosar_controller::PurePursuitFeedback :md5sum-) "47ee8cafbfba31d9f2b33076c5078c94")
(setf (get robosar_controller::PurePursuitFeedback :datatype-) "robosar_controller/PurePursuitFeedback")
(setf (get robosar_controller::PurePursuitFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
geometry_msgs/PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :robosar_controller/PurePursuitFeedback "47ee8cafbfba31d9f2b33076c5078c94")



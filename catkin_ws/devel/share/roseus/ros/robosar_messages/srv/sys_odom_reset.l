;; Auto-generated. Do not edit!


(when (boundp 'robosar_messages::sys_odom_reset)
  (if (not (find-package "ROBOSAR_MESSAGES"))
    (make-package "ROBOSAR_MESSAGES"))
  (shadow 'sys_odom_reset (find-package "ROBOSAR_MESSAGES")))
(unless (find-package "ROBOSAR_MESSAGES::SYS_ODOM_RESET")
  (make-package "ROBOSAR_MESSAGES::SYS_ODOM_RESET"))
(unless (find-package "ROBOSAR_MESSAGES::SYS_ODOM_RESETREQUEST")
  (make-package "ROBOSAR_MESSAGES::SYS_ODOM_RESETREQUEST"))
(unless (find-package "ROBOSAR_MESSAGES::SYS_ODOM_RESETRESPONSE")
  (make-package "ROBOSAR_MESSAGES::SYS_ODOM_RESETRESPONSE"))

(in-package "ROS")





(defclass robosar_messages::sys_odom_resetRequest
  :super ros::object
  :slots ())

(defmethod robosar_messages::sys_odom_resetRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robosar_messages::sys_odom_resetResponse
  :super ros::object
  :slots ())

(defmethod robosar_messages::sys_odom_resetResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robosar_messages::sys_odom_reset
  :super ros::object
  :slots ())

(setf (get robosar_messages::sys_odom_reset :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robosar_messages::sys_odom_reset :datatype-) "robosar_messages/sys_odom_reset")
(setf (get robosar_messages::sys_odom_reset :request) robosar_messages::sys_odom_resetRequest)
(setf (get robosar_messages::sys_odom_reset :response) robosar_messages::sys_odom_resetResponse)

(defmethod robosar_messages::sys_odom_resetRequest
  (:response () (instance robosar_messages::sys_odom_resetResponse :init)))

(setf (get robosar_messages::sys_odom_resetRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robosar_messages::sys_odom_resetRequest :datatype-) "robosar_messages/sys_odom_resetRequest")
(setf (get robosar_messages::sys_odom_resetRequest :definition-)
      "---
")

(setf (get robosar_messages::sys_odom_resetResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robosar_messages::sys_odom_resetResponse :datatype-) "robosar_messages/sys_odom_resetResponse")
(setf (get robosar_messages::sys_odom_resetResponse :definition-)
      "---
")



(provide :robosar_messages/sys_odom_reset "d41d8cd98f00b204e9800998ecf8427e")



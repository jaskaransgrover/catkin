;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::Gyro)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'Gyro (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::GYRO")
  (make-package "KHEPERA_COMMUNICATOR::GYRO"))

(in-package "ROS")
;;//! \htmlinclude Gyro.msg.html


(defclass khepera_communicator::Gyro
  :super ros::object
  :slots (_gyro_x _gyro_y _gyro_z ))

(defmethod khepera_communicator::Gyro
  (:init
   (&key
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    )
   (send-super :init)
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   self)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:serialization-length
   ()
   (+
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get khepera_communicator::Gyro :md5sum-) "c79fa4d50eba4690498134e3d3fb01ea")
(setf (get khepera_communicator::Gyro :datatype-) "khepera_communicator/Gyro")
(setf (get khepera_communicator::Gyro :definition-)
      "float32 gyro_x
float32 gyro_y
float32 gyro_z

")



(provide :khepera_communicator/Gyro "c79fa4d50eba4690498134e3d3fb01ea")



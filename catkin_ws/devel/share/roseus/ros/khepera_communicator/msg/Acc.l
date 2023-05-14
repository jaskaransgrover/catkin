;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::Acc)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'Acc (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::ACC")
  (make-package "KHEPERA_COMMUNICATOR::ACC"))

(in-package "ROS")
;;//! \htmlinclude Acc.msg.html


(defclass khepera_communicator::Acc
  :super ros::object
  :slots (_acc_x _acc_y _acc_z ))

(defmethod khepera_communicator::Acc
  (:init
   (&key
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    )
   (send-super :init)
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   self)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:serialization-length
   ()
   (+
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _acc_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_z
     (setq _acc_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get khepera_communicator::Acc :md5sum-) "6eb6fe258b879869c2ff8d4de824a46c")
(setf (get khepera_communicator::Acc :datatype-) "khepera_communicator/Acc")
(setf (get khepera_communicator::Acc :definition-)
      "float32 acc_x
float32 acc_y
float32 acc_z

")



(provide :khepera_communicator/Acc "6eb6fe258b879869c2ff8d4de824a46c")



;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::K4_controls)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'K4_controls (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::K4_CONTROLS")
  (make-package "KHEPERA_COMMUNICATOR::K4_CONTROLS"))

(in-package "ROS")
;;//! \htmlinclude K4_controls.msg.html


(defclass khepera_communicator::K4_controls
  :super ros::object
  :slots (_ctrl_W _ctrl_V ))

(defmethod khepera_communicator::K4_controls
  (:init
   (&key
    ((:ctrl_W __ctrl_W) 0.0)
    ((:ctrl_V __ctrl_V) 0.0)
    )
   (send-super :init)
   (setq _ctrl_W (float __ctrl_W))
   (setq _ctrl_V (float __ctrl_V))
   self)
  (:ctrl_W
   (&optional __ctrl_W)
   (if __ctrl_W (setq _ctrl_W __ctrl_W)) _ctrl_W)
  (:ctrl_V
   (&optional __ctrl_V)
   (if __ctrl_V (setq _ctrl_V __ctrl_V)) _ctrl_V)
  (:serialization-length
   ()
   (+
    ;; float32 _ctrl_W
    4
    ;; float32 _ctrl_V
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ctrl_W
       (sys::poke _ctrl_W (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ctrl_V
       (sys::poke _ctrl_V (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ctrl_W
     (setq _ctrl_W (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ctrl_V
     (setq _ctrl_V (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get khepera_communicator::K4_controls :md5sum-) "8212eb98a5c89ce2b20829a1dc1970ce")
(setf (get khepera_communicator::K4_controls :datatype-) "khepera_communicator/K4_controls")
(setf (get khepera_communicator::K4_controls :definition-)
      "float32 ctrl_W
float32 ctrl_V

")



(provide :khepera_communicator/K4_controls "8212eb98a5c89ce2b20829a1dc1970ce")



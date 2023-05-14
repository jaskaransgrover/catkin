;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::Time)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'Time (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::TIME")
  (make-package "KHEPERA_COMMUNICATOR::TIME"))

(in-package "ROS")
;;//! \htmlinclude Time.msg.html


(defclass khepera_communicator::Time
  :super ros::object
  :slots (_time ))

(defmethod khepera_communicator::Time
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get khepera_communicator::Time :md5sum-) "be5310e7aa4c90cdee120add91648cee")
(setf (get khepera_communicator::Time :datatype-) "khepera_communicator/Time")
(setf (get khepera_communicator::Time :definition-)
      "float64 time

")



(provide :khepera_communicator/Time "be5310e7aa4c90cdee120add91648cee")



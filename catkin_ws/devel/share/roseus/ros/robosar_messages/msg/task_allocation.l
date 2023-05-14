;; Auto-generated. Do not edit!


(when (boundp 'robosar_messages::task_allocation)
  (if (not (find-package "ROBOSAR_MESSAGES"))
    (make-package "ROBOSAR_MESSAGES"))
  (shadow 'task_allocation (find-package "ROBOSAR_MESSAGES")))
(unless (find-package "ROBOSAR_MESSAGES::TASK_ALLOCATION")
  (make-package "ROBOSAR_MESSAGES::TASK_ALLOCATION"))

(in-package "ROS")
;;//! \htmlinclude task_allocation.msg.html


(defclass robosar_messages::task_allocation
  :super ros::object
  :slots (_id _startx _starty _goalx _goaly ))

(defmethod robosar_messages::task_allocation
  (:init
   (&key
    ((:id __id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:startx __startx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:starty __starty) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goalx __goalx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goaly __goaly) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id __id)
   (setq _startx __startx)
   (setq _starty __starty)
   (setq _goalx __goalx)
   (setq _goaly __goaly)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:startx
   (&optional __startx)
   (if __startx (setq _startx __startx)) _startx)
  (:starty
   (&optional __starty)
   (if __starty (setq _starty __starty)) _starty)
  (:goalx
   (&optional __goalx)
   (if __goalx (setq _goalx __goalx)) _goalx)
  (:goaly
   (&optional __goaly)
   (if __goaly (setq _goaly __goaly)) _goaly)
  (:serialization-length
   ()
   (+
    ;; string[] _id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _id)) 4
    ;; float32[] _startx
    (* 4    (length _startx)) 4
    ;; float32[] _starty
    (* 4    (length _starty)) 4
    ;; float32[] _goalx
    (* 4    (length _goalx)) 4
    ;; float32[] _goaly
    (* 4    (length _goaly)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _id
     (write-long (length _id) s)
     (dolist (elem _id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _startx
     (write-long (length _startx) s)
     (dotimes (i (length _startx))
       (sys::poke (elt _startx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _starty
     (write-long (length _starty) s)
     (dotimes (i (length _starty))
       (sys::poke (elt _starty i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _goalx
     (write-long (length _goalx) s)
     (dotimes (i (length _goalx))
       (sys::poke (elt _goalx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _goaly
     (write-long (length _goaly) s)
     (dotimes (i (length _goaly))
       (sys::poke (elt _goaly i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _startx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _startx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _startx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _starty
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _starty (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _starty i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _goalx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goalx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goalx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _goaly
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goaly (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goaly i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robosar_messages::task_allocation :md5sum-) "f624a16b66a516b8389674edd586ce7d")
(setf (get robosar_messages::task_allocation :datatype-) "robosar_messages/task_allocation")
(setf (get robosar_messages::task_allocation :definition-)
      "string[] id
float32[] startx
float32[] starty
float32[] goalx
float32[] goaly

")



(provide :robosar_messages/task_allocation "f624a16b66a516b8389674edd586ce7d")



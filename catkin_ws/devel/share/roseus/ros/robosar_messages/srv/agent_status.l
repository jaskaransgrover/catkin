;; Auto-generated. Do not edit!


(when (boundp 'robosar_messages::agent_status)
  (if (not (find-package "ROBOSAR_MESSAGES"))
    (make-package "ROBOSAR_MESSAGES"))
  (shadow 'agent_status (find-package "ROBOSAR_MESSAGES")))
(unless (find-package "ROBOSAR_MESSAGES::AGENT_STATUS")
  (make-package "ROBOSAR_MESSAGES::AGENT_STATUS"))
(unless (find-package "ROBOSAR_MESSAGES::AGENT_STATUSREQUEST")
  (make-package "ROBOSAR_MESSAGES::AGENT_STATUSREQUEST"))
(unless (find-package "ROBOSAR_MESSAGES::AGENT_STATUSRESPONSE")
  (make-package "ROBOSAR_MESSAGES::AGENT_STATUSRESPONSE"))

(in-package "ROS")





(defclass robosar_messages::agent_statusRequest
  :super ros::object
  :slots ())

(defmethod robosar_messages::agent_statusRequest
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

(defclass robosar_messages::agent_statusResponse
  :super ros::object
  :slots (_agents_active ))

(defmethod robosar_messages::agent_statusResponse
  (:init
   (&key
    ((:agents_active __agents_active) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _agents_active __agents_active)
   self)
  (:agents_active
   (&optional __agents_active)
   (if __agents_active (setq _agents_active __agents_active)) _agents_active)
  (:serialization-length
   ()
   (+
    ;; string[] _agents_active
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _agents_active)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _agents_active
     (write-long (length _agents_active) s)
     (dolist (elem _agents_active)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _agents_active
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agents_active (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _agents_active i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robosar_messages::agent_status
  :super ros::object
  :slots ())

(setf (get robosar_messages::agent_status :md5sum-) "8e11fd7ffef74f85ca9b7e06e813c80a")
(setf (get robosar_messages::agent_status :datatype-) "robosar_messages/agent_status")
(setf (get robosar_messages::agent_status :request) robosar_messages::agent_statusRequest)
(setf (get robosar_messages::agent_status :response) robosar_messages::agent_statusResponse)

(defmethod robosar_messages::agent_statusRequest
  (:response () (instance robosar_messages::agent_statusResponse :init)))

(setf (get robosar_messages::agent_statusRequest :md5sum-) "8e11fd7ffef74f85ca9b7e06e813c80a")
(setf (get robosar_messages::agent_statusRequest :datatype-) "robosar_messages/agent_statusRequest")
(setf (get robosar_messages::agent_statusRequest :definition-)
      "---
string[] agents_active
")

(setf (get robosar_messages::agent_statusResponse :md5sum-) "8e11fd7ffef74f85ca9b7e06e813c80a")
(setf (get robosar_messages::agent_statusResponse :datatype-) "robosar_messages/agent_statusResponse")
(setf (get robosar_messages::agent_statusResponse :definition-)
      "---
string[] agents_active
")



(provide :robosar_messages/agent_status "8e11fd7ffef74f85ca9b7e06e813c80a")



;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::Encoder_SPD)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'Encoder_SPD (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::ENCODER_SPD")
  (make-package "KHEPERA_COMMUNICATOR::ENCODER_SPD"))

(in-package "ROS")
;;//! \htmlinclude Encoder_SPD.msg.html


(defclass khepera_communicator::Encoder_SPD
  :super ros::object
  :slots (_spd_L _spd_R ))

(defmethod khepera_communicator::Encoder_SPD
  (:init
   (&key
    ((:spd_L __spd_L) 0)
    ((:spd_R __spd_R) 0)
    )
   (send-super :init)
   (setq _spd_L (round __spd_L))
   (setq _spd_R (round __spd_R))
   self)
  (:spd_L
   (&optional __spd_L)
   (if __spd_L (setq _spd_L __spd_L)) _spd_L)
  (:spd_R
   (&optional __spd_R)
   (if __spd_R (setq _spd_R __spd_R)) _spd_R)
  (:serialization-length
   ()
   (+
    ;; int64 _spd_L
    8
    ;; int64 _spd_R
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _spd_L
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _spd_L (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _spd_L) (= (length (_spd_L . bv)) 2)) ;; bignum
              (write-long (ash (elt (_spd_L . bv) 0) 0) s)
              (write-long (ash (elt (_spd_L . bv) 1) -1) s))
             ((and (class _spd_L) (= (length (_spd_L . bv)) 1)) ;; big1
              (write-long (elt (_spd_L . bv) 0) s)
              (write-long (if (>= _spd_L 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _spd_L s)(write-long (if (>= _spd_L 0) 0 #xffffffff) s)))
     ;; int64 _spd_R
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _spd_R (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _spd_R) (= (length (_spd_R . bv)) 2)) ;; bignum
              (write-long (ash (elt (_spd_R . bv) 0) 0) s)
              (write-long (ash (elt (_spd_R . bv) 1) -1) s))
             ((and (class _spd_R) (= (length (_spd_R . bv)) 1)) ;; big1
              (write-long (elt (_spd_R . bv) 0) s)
              (write-long (if (>= _spd_R 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _spd_R s)(write-long (if (>= _spd_R 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _spd_L
#+(or :alpha :irix6 :x86_64)
      (setf _spd_L (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _spd_L (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _spd_R
#+(or :alpha :irix6 :x86_64)
      (setf _spd_R (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _spd_R (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get khepera_communicator::Encoder_SPD :md5sum-) "3b3c260c3bd3547108ca8206192d86e1")
(setf (get khepera_communicator::Encoder_SPD :datatype-) "khepera_communicator/Encoder_SPD")
(setf (get khepera_communicator::Encoder_SPD :definition-)
      "int64 spd_L
int64 spd_R

")



(provide :khepera_communicator/Encoder_SPD "3b3c260c3bd3547108ca8206192d86e1")



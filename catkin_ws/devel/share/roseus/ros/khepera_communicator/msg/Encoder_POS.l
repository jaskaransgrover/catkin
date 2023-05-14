;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::Encoder_POS)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'Encoder_POS (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::ENCODER_POS")
  (make-package "KHEPERA_COMMUNICATOR::ENCODER_POS"))

(in-package "ROS")
;;//! \htmlinclude Encoder_POS.msg.html


(defclass khepera_communicator::Encoder_POS
  :super ros::object
  :slots (_pos_L _pos_R ))

(defmethod khepera_communicator::Encoder_POS
  (:init
   (&key
    ((:pos_L __pos_L) 0)
    ((:pos_R __pos_R) 0)
    )
   (send-super :init)
   (setq _pos_L (round __pos_L))
   (setq _pos_R (round __pos_R))
   self)
  (:pos_L
   (&optional __pos_L)
   (if __pos_L (setq _pos_L __pos_L)) _pos_L)
  (:pos_R
   (&optional __pos_R)
   (if __pos_R (setq _pos_R __pos_R)) _pos_R)
  (:serialization-length
   ()
   (+
    ;; int64 _pos_L
    8
    ;; int64 _pos_R
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pos_L
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pos_L (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pos_L) (= (length (_pos_L . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pos_L . bv) 0) 0) s)
              (write-long (ash (elt (_pos_L . bv) 1) -1) s))
             ((and (class _pos_L) (= (length (_pos_L . bv)) 1)) ;; big1
              (write-long (elt (_pos_L . bv) 0) s)
              (write-long (if (>= _pos_L 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pos_L s)(write-long (if (>= _pos_L 0) 0 #xffffffff) s)))
     ;; int64 _pos_R
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pos_R (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pos_R) (= (length (_pos_R . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pos_R . bv) 0) 0) s)
              (write-long (ash (elt (_pos_R . bv) 1) -1) s))
             ((and (class _pos_R) (= (length (_pos_R . bv)) 1)) ;; big1
              (write-long (elt (_pos_R . bv) 0) s)
              (write-long (if (>= _pos_R 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pos_R s)(write-long (if (>= _pos_R 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pos_L
#+(or :alpha :irix6 :x86_64)
      (setf _pos_L (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pos_L (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pos_R
#+(or :alpha :irix6 :x86_64)
      (setf _pos_R (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pos_R (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get khepera_communicator::Encoder_POS :md5sum-) "47f33c7ad24d6372d77eef644df6fcf6")
(setf (get khepera_communicator::Encoder_POS :datatype-) "khepera_communicator/Encoder_POS")
(setf (get khepera_communicator::Encoder_POS :definition-)
      "int64 pos_L
int64 pos_R

")



(provide :khepera_communicator/Encoder_POS "47f33c7ad24d6372d77eef644df6fcf6")



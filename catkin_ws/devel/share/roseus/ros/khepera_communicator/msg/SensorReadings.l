;; Auto-generated. Do not edit!


(when (boundp 'khepera_communicator::SensorReadings)
  (if (not (find-package "KHEPERA_COMMUNICATOR"))
    (make-package "KHEPERA_COMMUNICATOR"))
  (shadow 'SensorReadings (find-package "KHEPERA_COMMUNICATOR")))
(unless (find-package "KHEPERA_COMMUNICATOR::SENSORREADINGS")
  (make-package "KHEPERA_COMMUNICATOR::SENSORREADINGS"))

(in-package "ROS")
;;//! \htmlinclude SensorReadings.msg.html


(defclass khepera_communicator::SensorReadings
  :super ros::object
  :slots (_acc_x _acc_y _acc_z _gyro_x _gyro_y _gyro_z _pos_L _pos_R _spd_L _spd_R _time ))

(defmethod khepera_communicator::SensorReadings
  (:init
   (&key
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    ((:pos_L __pos_L) 0)
    ((:pos_R __pos_R) 0)
    ((:spd_L __spd_L) 0)
    ((:spd_R __spd_R) 0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   (setq _pos_L (round __pos_L))
   (setq _pos_R (round __pos_R))
   (setq _spd_L (round __spd_L))
   (setq _spd_R (round __spd_R))
   (setq _time (float __time))
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
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:pos_L
   (&optional __pos_L)
   (if __pos_L (setq _pos_L __pos_L)) _pos_L)
  (:pos_R
   (&optional __pos_R)
   (if __pos_R (setq _pos_R __pos_R)) _pos_R)
  (:spd_L
   (&optional __spd_L)
   (if __spd_L (setq _spd_L __spd_L)) _spd_L)
  (:spd_R
   (&optional __spd_R)
   (if __spd_R (setq _spd_R __spd_R)) _spd_R)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _acc_z
    4
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ;; int64 _pos_L
    8
    ;; int64 _pos_R
    8
    ;; int64 _spd_L
    8
    ;; int64 _spd_R
    8
    ;; float64 _time
    8
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
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get khepera_communicator::SensorReadings :md5sum-) "f0d41b6d37358788208673918228ef9d")
(setf (get khepera_communicator::SensorReadings :datatype-) "khepera_communicator/SensorReadings")
(setf (get khepera_communicator::SensorReadings :definition-)
      "float32 acc_x
float32 acc_y
float32 acc_z
float32 gyro_x
float32 gyro_y
float32 gyro_z
int64 pos_L
int64 pos_R
int64 spd_L
int64 spd_R
float64 time

")



(provide :khepera_communicator/SensorReadings "f0d41b6d37358788208673918228ef9d")



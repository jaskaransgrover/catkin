;; Auto-generated. Do not edit!


(when (boundp 'robosar_messages::taskgen_getwaypts)
  (if (not (find-package "ROBOSAR_MESSAGES"))
    (make-package "ROBOSAR_MESSAGES"))
  (shadow 'taskgen_getwaypts (find-package "ROBOSAR_MESSAGES")))
(unless (find-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTS")
  (make-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTS"))
(unless (find-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTSREQUEST")
  (make-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTSREQUEST"))
(unless (find-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTSRESPONSE")
  (make-package "ROBOSAR_MESSAGES::TASKGEN_GETWAYPTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass robosar_messages::taskgen_getwayptsRequest
  :super ros::object
  :slots (_map _threshold _iterations ))

(defmethod robosar_messages::taskgen_getwayptsRequest
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    ((:threshold __threshold) 0.0)
    ((:iterations __iterations) 0)
    )
   (send-super :init)
   (setq _map __map)
   (setq _threshold (float __threshold))
   (setq _iterations (round __iterations))
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:iterations
   (&optional __iterations)
   (if __iterations (setq _iterations __iterations)) _iterations)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ;; float64 _threshold
    8
    ;; int64 _iterations
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;; float64 _threshold
       (sys::poke _threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _iterations
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _iterations (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _iterations) (= (length (_iterations . bv)) 2)) ;; bignum
              (write-long (ash (elt (_iterations . bv) 0) 0) s)
              (write-long (ash (elt (_iterations . bv) 1) -1) s))
             ((and (class _iterations) (= (length (_iterations . bv)) 1)) ;; big1
              (write-long (elt (_iterations . bv) 0) s)
              (write-long (if (>= _iterations 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _iterations s)(write-long (if (>= _iterations 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; float64 _threshold
     (setq _threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _iterations
#+(or :alpha :irix6 :x86_64)
      (setf _iterations (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _iterations (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass robosar_messages::taskgen_getwayptsResponse
  :super ros::object
  :slots (_num_pts _dims _waypoints ))

(defmethod robosar_messages::taskgen_getwayptsResponse
  (:init
   (&key
    ((:num_pts __num_pts) 0)
    ((:dims __dims) 0)
    ((:waypoints __waypoints) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _num_pts (round __num_pts))
   (setq _dims (round __dims))
   (setq _waypoints __waypoints)
   self)
  (:num_pts
   (&optional __num_pts)
   (if __num_pts (setq _num_pts __num_pts)) _num_pts)
  (:dims
   (&optional __dims)
   (if __dims (setq _dims __dims)) _dims)
  (:waypoints
   (&optional __waypoints)
   (if __waypoints (setq _waypoints __waypoints)) _waypoints)
  (:serialization-length
   ()
   (+
    ;; int64 _num_pts
    8
    ;; int64 _dims
    8
    ;; int64[] _waypoints
    (* 8    (length _waypoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num_pts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_pts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_pts) (= (length (_num_pts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_pts . bv) 0) 0) s)
              (write-long (ash (elt (_num_pts . bv) 1) -1) s))
             ((and (class _num_pts) (= (length (_num_pts . bv)) 1)) ;; big1
              (write-long (elt (_num_pts . bv) 0) s)
              (write-long (if (>= _num_pts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_pts s)(write-long (if (>= _num_pts 0) 0 #xffffffff) s)))
     ;; int64 _dims
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dims (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dims) (= (length (_dims . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dims . bv) 0) 0) s)
              (write-long (ash (elt (_dims . bv) 1) -1) s))
             ((and (class _dims) (= (length (_dims . bv)) 1)) ;; big1
              (write-long (elt (_dims . bv) 0) s)
              (write-long (if (>= _dims 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dims s)(write-long (if (>= _dims 0) 0 #xffffffff) s)))
     ;; int64[] _waypoints
     (write-long (length _waypoints) s)
     (dotimes (i (length _waypoints))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _waypoints i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _waypoints i)) (= (length ((elt _waypoints i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _waypoints i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _waypoints i) . bv) 1) -1) s))
             ((and (class (elt _waypoints i)) (= (length ((elt _waypoints i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _waypoints i) . bv) 0) s)
              (write-long (if (>= (elt _waypoints i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _waypoints i) s)(write-long (if (>= (elt _waypoints i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num_pts
#+(or :alpha :irix6 :x86_64)
      (setf _num_pts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_pts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _dims
#+(or :alpha :irix6 :x86_64)
      (setf _dims (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dims (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _waypoints i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _waypoints i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass robosar_messages::taskgen_getwaypts
  :super ros::object
  :slots ())

(setf (get robosar_messages::taskgen_getwaypts :md5sum-) "8305d31e6e7c96b352b096cf75748977")
(setf (get robosar_messages::taskgen_getwaypts :datatype-) "robosar_messages/taskgen_getwaypts")
(setf (get robosar_messages::taskgen_getwaypts :request) robosar_messages::taskgen_getwayptsRequest)
(setf (get robosar_messages::taskgen_getwaypts :response) robosar_messages::taskgen_getwayptsResponse)

(defmethod robosar_messages::taskgen_getwayptsRequest
  (:response () (instance robosar_messages::taskgen_getwayptsResponse :init)))

(setf (get robosar_messages::taskgen_getwayptsRequest :md5sum-) "8305d31e6e7c96b352b096cf75748977")
(setf (get robosar_messages::taskgen_getwayptsRequest :datatype-) "robosar_messages/taskgen_getwayptsRequest")
(setf (get robosar_messages::taskgen_getwayptsRequest :definition-)
      "nav_msgs/OccupancyGrid map
float64 threshold
int64 iterations

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int64 num_pts
int64 dims
int64[] waypoints

")

(setf (get robosar_messages::taskgen_getwayptsResponse :md5sum-) "8305d31e6e7c96b352b096cf75748977")
(setf (get robosar_messages::taskgen_getwayptsResponse :datatype-) "robosar_messages/taskgen_getwayptsResponse")
(setf (get robosar_messages::taskgen_getwayptsResponse :definition-)
      "nav_msgs/OccupancyGrid map
float64 threshold
int64 iterations

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int64 num_pts
int64 dims
int64[] waypoints

")



(provide :robosar_messages/taskgen_getwaypts "8305d31e6e7c96b352b096cf75748977")



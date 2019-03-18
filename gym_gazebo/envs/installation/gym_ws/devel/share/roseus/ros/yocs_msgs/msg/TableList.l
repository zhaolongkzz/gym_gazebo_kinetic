;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::TableList)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'TableList (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::TABLELIST")
  (make-package "YOCS_MSGS::TABLELIST"))

(in-package "ROS")
;;//! \htmlinclude TableList.msg.html


(defclass yocs_msgs::TableList
  :super ros::object
  :slots (_tables ))

(defmethod yocs_msgs::TableList
  (:init
   (&key
    ((:tables __tables) (let (r) (dotimes (i 0) (push (instance yocs_msgs::Table :init) r)) r))
    )
   (send-super :init)
   (setq _tables __tables)
   self)
  (:tables
   (&rest __tables)
   (if (keywordp (car __tables))
       (send* _tables __tables)
     (progn
       (if __tables (setq _tables (car __tables)))
       _tables)))
  (:serialization-length
   ()
   (+
    ;; yocs_msgs/Table[] _tables
    (apply #'+ (send-all _tables :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yocs_msgs/Table[] _tables
     (write-long (length _tables) s)
     (dolist (elem _tables)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yocs_msgs/Table[] _tables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tables (let (r) (dotimes (i n) (push (instance yocs_msgs::Table :init) r)) r))
     (dolist (elem- _tables)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yocs_msgs::TableList :md5sum-) "88fff7e2df98bd37f03f85cffc55624b")
(setf (get yocs_msgs::TableList :datatype-) "yocs_msgs/TableList")
(setf (get yocs_msgs::TableList :definition-)
      "# A list of tables

Table[] tables

================================================================================
MSG: yocs_msgs/Table
# Semantic annotation for a table; by now a clone of column but with different semantics
# In the future we must support also rectangular tables
#  - Orientation is ignored
#  - Z provides the lower border of the column (normally 0)

string  name
float32 radius
float32 height
geometry_msgs/PoseWithCovarianceStamped pose

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

")



(provide :yocs_msgs/TableList "88fff7e2df98bd37f03f85cffc55624b")



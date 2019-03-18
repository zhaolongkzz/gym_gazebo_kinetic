;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::Wall)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'Wall (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::WALL")
  (make-package "YOCS_MSGS::WALL"))

(in-package "ROS")
;;//! \htmlinclude Wall.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yocs_msgs::Wall
  :super ros::object
  :slots (_name _length _width _height _pose ))

(defmethod yocs_msgs::Wall
  (:init
   (&key
    ((:name __name) "")
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; geometry_msgs/PoseWithCovarianceStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseWithCovarianceStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovarianceStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get yocs_msgs::Wall :md5sum-) "6fba3b6a148ebf1773d978f0b5f0bde8")
(setf (get yocs_msgs::Wall :datatype-) "yocs_msgs/Wall")
(setf (get yocs_msgs::Wall :definition-)
      "# Virtual wall obstacle;
#  - Assumed to be a plan, so width is ignored by now
#  - The yaw provides the orientation of x-axis
#  - Assumed vertically aligned (roll and pitch must be 0)
#  - Z provides the lower border of the wall (normally 0)

string  name
float32 length
float32 width
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



(provide :yocs_msgs/Wall "6fba3b6a148ebf1773d978f0b5f0bde8")



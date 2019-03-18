;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::TrajectoryList)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'TrajectoryList (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::TRAJECTORYLIST")
  (make-package "YOCS_MSGS::TRAJECTORYLIST"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryList.msg.html


(defclass yocs_msgs::TrajectoryList
  :super ros::object
  :slots (_trajectories ))

(defmethod yocs_msgs::TrajectoryList
  (:init
   (&key
    ((:trajectories __trajectories) (let (r) (dotimes (i 0) (push (instance yocs_msgs::Trajectory :init) r)) r))
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; yocs_msgs/Trajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yocs_msgs/Trajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yocs_msgs/Trajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance yocs_msgs::Trajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yocs_msgs::TrajectoryList :md5sum-) "f0901d378c8ac2d2d3d8feafaa343a58")
(setf (get yocs_msgs::TrajectoryList :datatype-) "yocs_msgs/TrajectoryList")
(setf (get yocs_msgs::TrajectoryList :definition-)
      "# A list of trajectories
Trajectory[] trajectories

================================================================================
MSG: yocs_msgs/Trajectory
# A named list of way points
Header header
string name
Waypoint[] waypoints

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
MSG: yocs_msgs/Waypoint
Header header
string name
geometry_msgs/Pose pose

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



(provide :yocs_msgs/TrajectoryList "f0901d378c8ac2d2d3d8feafaa343a58")



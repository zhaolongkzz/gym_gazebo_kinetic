;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::WaypointListService)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'WaypointListService (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::WAYPOINTLISTSERVICE")
  (make-package "YOCS_MSGS::WAYPOINTLISTSERVICE"))
(unless (find-package "YOCS_MSGS::WAYPOINTLISTSERVICEREQUEST")
  (make-package "YOCS_MSGS::WAYPOINTLISTSERVICEREQUEST"))
(unless (find-package "YOCS_MSGS::WAYPOINTLISTSERVICERESPONSE")
  (make-package "YOCS_MSGS::WAYPOINTLISTSERVICERESPONSE"))

(in-package "ROS")





(defclass yocs_msgs::WaypointListServiceRequest
  :super ros::object
  :slots ())

(defmethod yocs_msgs::WaypointListServiceRequest
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

(defclass yocs_msgs::WaypointListServiceResponse
  :super ros::object
  :slots (_success _waypoints ))

(defmethod yocs_msgs::WaypointListServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:waypoints __waypoints) (instance yocs_msgs::WaypointList :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _waypoints __waypoints)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; yocs_msgs/WaypointList _waypoints
    (send _waypoints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; yocs_msgs/WaypointList _waypoints
       (send _waypoints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; yocs_msgs/WaypointList _waypoints
     (send _waypoints :deserialize buf ptr-) (incf ptr- (send _waypoints :serialization-length))
   ;;
   self)
  )

(defclass yocs_msgs::WaypointListService
  :super ros::object
  :slots ())

(setf (get yocs_msgs::WaypointListService :md5sum-) "3b776b847c407c971555820af7e3f3b1")
(setf (get yocs_msgs::WaypointListService :datatype-) "yocs_msgs/WaypointListService")
(setf (get yocs_msgs::WaypointListService :request) yocs_msgs::WaypointListServiceRequest)
(setf (get yocs_msgs::WaypointListService :response) yocs_msgs::WaypointListServiceResponse)

(defmethod yocs_msgs::WaypointListServiceRequest
  (:response () (instance yocs_msgs::WaypointListServiceResponse :init)))

(setf (get yocs_msgs::WaypointListServiceRequest :md5sum-) "3b776b847c407c971555820af7e3f3b1")
(setf (get yocs_msgs::WaypointListServiceRequest :datatype-) "yocs_msgs/WaypointListServiceRequest")
(setf (get yocs_msgs::WaypointListServiceRequest :definition-)
      "---
bool success
WaypointList waypoints


================================================================================
MSG: yocs_msgs/WaypointList
# Way points

Waypoint[] waypoints

================================================================================
MSG: yocs_msgs/Waypoint
Header header
string name
geometry_msgs/Pose pose

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

(setf (get yocs_msgs::WaypointListServiceResponse :md5sum-) "3b776b847c407c971555820af7e3f3b1")
(setf (get yocs_msgs::WaypointListServiceResponse :datatype-) "yocs_msgs/WaypointListServiceResponse")
(setf (get yocs_msgs::WaypointListServiceResponse :definition-)
      "---
bool success
WaypointList waypoints


================================================================================
MSG: yocs_msgs/WaypointList
# Way points

Waypoint[] waypoints

================================================================================
MSG: yocs_msgs/Waypoint
Header header
string name
geometry_msgs/Pose pose

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



(provide :yocs_msgs/WaypointListService "3b776b847c407c971555820af7e3f3b1")



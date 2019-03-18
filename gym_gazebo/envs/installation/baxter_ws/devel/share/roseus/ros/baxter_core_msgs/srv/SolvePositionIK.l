;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::SolvePositionIK)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'SolvePositionIK (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIK")
  (make-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIK"))
(unless (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST")
  (make-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(unless (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKRESPONSE")
  (make-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*SEED_AUTO*" (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_AUTO* (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant baxter_core_msgs::SolvePositionIKRequest::*SEED_AUTO* 0)
(intern "*SEED_USER*" (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_USER* (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant baxter_core_msgs::SolvePositionIKRequest::*SEED_USER* 1)
(intern "*SEED_CURRENT*" (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_CURRENT* (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant baxter_core_msgs::SolvePositionIKRequest::*SEED_CURRENT* 2)
(intern "*SEED_NS_MAP*" (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_NS_MAP* (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant baxter_core_msgs::SolvePositionIKRequest::*SEED_NS_MAP* 3)
(defclass baxter_core_msgs::SolvePositionIKRequest
  :super ros::object
  :slots (_pose_stamp _seed_angles _seed_mode ))

(defmethod baxter_core_msgs::SolvePositionIKRequest
  (:init
   (&key
    ((:pose_stamp __pose_stamp) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:seed_angles __seed_angles) (let (r) (dotimes (i 0) (push (instance sensor_msgs::JointState :init) r)) r))
    ((:seed_mode __seed_mode) 0)
    )
   (send-super :init)
   (setq _pose_stamp __pose_stamp)
   (setq _seed_angles __seed_angles)
   (setq _seed_mode (round __seed_mode))
   self)
  (:pose_stamp
   (&rest __pose_stamp)
   (if (keywordp (car __pose_stamp))
       (send* _pose_stamp __pose_stamp)
     (progn
       (if __pose_stamp (setq _pose_stamp (car __pose_stamp)))
       _pose_stamp)))
  (:seed_angles
   (&rest __seed_angles)
   (if (keywordp (car __seed_angles))
       (send* _seed_angles __seed_angles)
     (progn
       (if __seed_angles (setq _seed_angles (car __seed_angles)))
       _seed_angles)))
  (:seed_mode
   (&optional __seed_mode)
   (if __seed_mode (setq _seed_mode __seed_mode)) _seed_mode)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _pose_stamp
    (apply #'+ (send-all _pose_stamp :serialization-length)) 4
    ;; sensor_msgs/JointState[] _seed_angles
    (apply #'+ (send-all _seed_angles :serialization-length)) 4
    ;; uint8 _seed_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _pose_stamp
     (write-long (length _pose_stamp) s)
     (dolist (elem _pose_stamp)
       (send elem :serialize s)
       )
     ;; sensor_msgs/JointState[] _seed_angles
     (write-long (length _seed_angles) s)
     (dolist (elem _seed_angles)
       (send elem :serialize s)
       )
     ;; uint8 _seed_mode
       (write-byte _seed_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _pose_stamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_stamp (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _pose_stamp)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/JointState[] _seed_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seed_angles (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _seed_angles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _seed_mode
     (setq _seed_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*RESULT_INVALID*" (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(shadow '*RESULT_INVALID* (find-package "BAXTER_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(defconstant baxter_core_msgs::SolvePositionIKResponse::*RESULT_INVALID* 0)
(defclass baxter_core_msgs::SolvePositionIKResponse
  :super ros::object
  :slots (_joints _isValid _result_type ))

(defmethod baxter_core_msgs::SolvePositionIKResponse
  (:init
   (&key
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance sensor_msgs::JointState :init) r)) r))
    ((:isValid __isValid) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:result_type __result_type) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _isValid __isValid)
   (setq _result_type __result_type)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:isValid
   (&optional __isValid)
   (if __isValid (setq _isValid __isValid)) _isValid)
  (:result_type
   (&optional __result_type)
   (if __result_type (setq _result_type __result_type)) _result_type)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; bool[] _isValid
    (* 1    (length _isValid)) 4
    ;; uint8[] _result_type
    (* 1    (length _result_type)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; bool[] _isValid
     (write-long (length _isValid) s)
     (dotimes (i (length _isValid))
       (if (elt _isValid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint8[] _result_type
     (write-long (length _result_type) s)
     (princ _result_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[] _isValid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _isValid (make-list n))
     (dotimes (i n)
     (setf (elt _isValid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint8[] _result_type
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _result_type (make-array n :element-type :char))
     (replace _result_type buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass baxter_core_msgs::SolvePositionIK
  :super ros::object
  :slots ())

(setf (get baxter_core_msgs::SolvePositionIK :md5sum-) "18cc92fd96853eb10b34de0b5c7d3cba")
(setf (get baxter_core_msgs::SolvePositionIK :datatype-) "baxter_core_msgs/SolvePositionIK")
(setf (get baxter_core_msgs::SolvePositionIK :request) baxter_core_msgs::SolvePositionIKRequest)
(setf (get baxter_core_msgs::SolvePositionIK :response) baxter_core_msgs::SolvePositionIKResponse)

(defmethod baxter_core_msgs::SolvePositionIKRequest
  (:response () (instance baxter_core_msgs::SolvePositionIKResponse :init)))

(setf (get baxter_core_msgs::SolvePositionIKRequest :md5sum-) "18cc92fd96853eb10b34de0b5c7d3cba")
(setf (get baxter_core_msgs::SolvePositionIKRequest :datatype-) "baxter_core_msgs/SolvePositionIKRequest")
(setf (get baxter_core_msgs::SolvePositionIKRequest :definition-)
      "
geometry_msgs/PoseStamped[] pose_stamp




sensor_msgs/JointState[] seed_angles





uint8 SEED_AUTO    = 0
uint8 SEED_USER    = 1
uint8 SEED_CURRENT = 2
uint8 SEED_NS_MAP  = 3

uint8 seed_mode

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort
---

sensor_msgs/JointState[] joints


bool[] isValid



uint8 RESULT_INVALID = 0
uint8[] result_type


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
")

(setf (get baxter_core_msgs::SolvePositionIKResponse :md5sum-) "18cc92fd96853eb10b34de0b5c7d3cba")
(setf (get baxter_core_msgs::SolvePositionIKResponse :datatype-) "baxter_core_msgs/SolvePositionIKResponse")
(setf (get baxter_core_msgs::SolvePositionIKResponse :definition-)
      "
geometry_msgs/PoseStamped[] pose_stamp




sensor_msgs/JointState[] seed_angles





uint8 SEED_AUTO    = 0
uint8 SEED_USER    = 1
uint8 SEED_CURRENT = 2
uint8 SEED_NS_MAP  = 3

uint8 seed_mode

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort
---

sensor_msgs/JointState[] joints


bool[] isValid



uint8 RESULT_INVALID = 0
uint8[] result_type


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
")



(provide :baxter_core_msgs/SolvePositionIK "18cc92fd96853eb10b34de0b5c7d3cba")



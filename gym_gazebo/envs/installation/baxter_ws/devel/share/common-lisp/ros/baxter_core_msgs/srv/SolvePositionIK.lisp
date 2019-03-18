; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-srv)


;//! \htmlinclude SolvePositionIK-request.msg.html

(cl:defclass <SolvePositionIK-request> (roslisp-msg-protocol:ros-message)
  ((pose_stamp
    :reader pose_stamp
    :initarg :pose_stamp
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (seed_angles
    :reader seed_angles
    :initarg :seed_angles
    :type (cl:vector sensor_msgs-msg:JointState)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:JointState :initial-element (cl:make-instance 'sensor_msgs-msg:JointState)))
   (seed_mode
    :reader seed_mode
    :initarg :seed_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SolvePositionIK-request (<SolvePositionIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolvePositionIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolvePositionIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<SolvePositionIK-request> is deprecated: use baxter_core_msgs-srv:SolvePositionIK-request instead.")))

(cl:ensure-generic-function 'pose_stamp-val :lambda-list '(m))
(cl:defmethod pose_stamp-val ((m <SolvePositionIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:pose_stamp-val is deprecated.  Use baxter_core_msgs-srv:pose_stamp instead.")
  (pose_stamp m))

(cl:ensure-generic-function 'seed_angles-val :lambda-list '(m))
(cl:defmethod seed_angles-val ((m <SolvePositionIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:seed_angles-val is deprecated.  Use baxter_core_msgs-srv:seed_angles instead.")
  (seed_angles m))

(cl:ensure-generic-function 'seed_mode-val :lambda-list '(m))
(cl:defmethod seed_mode-val ((m <SolvePositionIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:seed_mode-val is deprecated.  Use baxter_core_msgs-srv:seed_mode instead.")
  (seed_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SolvePositionIK-request>)))
    "Constants for message type '<SolvePositionIK-request>"
  '((:SEED_AUTO . 0)
    (:SEED_USER . 1)
    (:SEED_CURRENT . 2)
    (:SEED_NS_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SolvePositionIK-request)))
    "Constants for message type 'SolvePositionIK-request"
  '((:SEED_AUTO . 0)
    (:SEED_USER . 1)
    (:SEED_CURRENT . 2)
    (:SEED_NS_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolvePositionIK-request>) ostream)
  "Serializes a message object of type '<SolvePositionIK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_stamp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seed_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'seed_angles))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seed_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolvePositionIK-request>) istream)
  "Deserializes a message object of type '<SolvePositionIK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_stamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_stamp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seed_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seed_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:JointState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seed_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolvePositionIK-request>)))
  "Returns string type for a service object of type '<SolvePositionIK-request>"
  "baxter_core_msgs/SolvePositionIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionIK-request)))
  "Returns string type for a service object of type 'SolvePositionIK-request"
  "baxter_core_msgs/SolvePositionIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolvePositionIK-request>)))
  "Returns md5sum for a message object of type '<SolvePositionIK-request>"
  "18cc92fd96853eb10b34de0b5c7d3cba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolvePositionIK-request)))
  "Returns md5sum for a message object of type 'SolvePositionIK-request"
  "18cc92fd96853eb10b34de0b5c7d3cba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolvePositionIK-request>)))
  "Returns full string definition for message of type '<SolvePositionIK-request>"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped[] pose_stamp~%~%~%~%~%sensor_msgs/JointState[] seed_angles~%~%~%~%~%~%uint8 SEED_AUTO    = 0~%uint8 SEED_USER    = 1~%uint8 SEED_CURRENT = 2~%uint8 SEED_NS_MAP  = 3~%~%uint8 seed_mode~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolvePositionIK-request)))
  "Returns full string definition for message of type 'SolvePositionIK-request"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped[] pose_stamp~%~%~%~%~%sensor_msgs/JointState[] seed_angles~%~%~%~%~%~%uint8 SEED_AUTO    = 0~%uint8 SEED_USER    = 1~%uint8 SEED_CURRENT = 2~%uint8 SEED_NS_MAP  = 3~%~%uint8 seed_mode~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolvePositionIK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_stamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seed_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolvePositionIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SolvePositionIK-request
    (cl:cons ':pose_stamp (pose_stamp msg))
    (cl:cons ':seed_angles (seed_angles msg))
    (cl:cons ':seed_mode (seed_mode msg))
))
;//! \htmlinclude SolvePositionIK-response.msg.html

(cl:defclass <SolvePositionIK-response> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector sensor_msgs-msg:JointState)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:JointState :initial-element (cl:make-instance 'sensor_msgs-msg:JointState)))
   (isValid
    :reader isValid
    :initarg :isValid
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (result_type
    :reader result_type
    :initarg :result_type
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SolvePositionIK-response (<SolvePositionIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolvePositionIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolvePositionIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<SolvePositionIK-response> is deprecated: use baxter_core_msgs-srv:SolvePositionIK-response instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <SolvePositionIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:joints-val is deprecated.  Use baxter_core_msgs-srv:joints instead.")
  (joints m))

(cl:ensure-generic-function 'isValid-val :lambda-list '(m))
(cl:defmethod isValid-val ((m <SolvePositionIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:isValid-val is deprecated.  Use baxter_core_msgs-srv:isValid instead.")
  (isValid m))

(cl:ensure-generic-function 'result_type-val :lambda-list '(m))
(cl:defmethod result_type-val ((m <SolvePositionIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:result_type-val is deprecated.  Use baxter_core_msgs-srv:result_type instead.")
  (result_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SolvePositionIK-response>)))
    "Constants for message type '<SolvePositionIK-response>"
  '((:RESULT_INVALID . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SolvePositionIK-response)))
    "Constants for message type 'SolvePositionIK-response"
  '((:RESULT_INVALID . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolvePositionIK-response>) ostream)
  "Serializes a message object of type '<SolvePositionIK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'isValid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'isValid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'result_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolvePositionIK-response>) istream)
  "Deserializes a message object of type '<SolvePositionIK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:JointState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'isValid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'isValid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolvePositionIK-response>)))
  "Returns string type for a service object of type '<SolvePositionIK-response>"
  "baxter_core_msgs/SolvePositionIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionIK-response)))
  "Returns string type for a service object of type 'SolvePositionIK-response"
  "baxter_core_msgs/SolvePositionIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolvePositionIK-response>)))
  "Returns md5sum for a message object of type '<SolvePositionIK-response>"
  "18cc92fd96853eb10b34de0b5c7d3cba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolvePositionIK-response)))
  "Returns md5sum for a message object of type 'SolvePositionIK-response"
  "18cc92fd96853eb10b34de0b5c7d3cba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolvePositionIK-response>)))
  "Returns full string definition for message of type '<SolvePositionIK-response>"
  (cl:format cl:nil "~%sensor_msgs/JointState[] joints~%~%~%bool[] isValid~%~%~%~%uint8 RESULT_INVALID = 0~%uint8[] result_type~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolvePositionIK-response)))
  "Returns full string definition for message of type 'SolvePositionIK-response"
  (cl:format cl:nil "~%sensor_msgs/JointState[] joints~%~%~%bool[] isValid~%~%~%~%uint8 RESULT_INVALID = 0~%uint8[] result_type~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolvePositionIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'isValid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolvePositionIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SolvePositionIK-response
    (cl:cons ':joints (joints msg))
    (cl:cons ':isValid (isValid msg))
    (cl:cons ':result_type (result_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SolvePositionIK)))
  'SolvePositionIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SolvePositionIK)))
  'SolvePositionIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionIK)))
  "Returns string type for a service object of type '<SolvePositionIK>"
  "baxter_core_msgs/SolvePositionIK")
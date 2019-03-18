; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude CollisionAvoidanceState.msg.html

(cl:defclass <CollisionAvoidanceState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (other_arm
    :reader other_arm
    :initarg :other_arm
    :type cl:boolean
    :initform cl:nil)
   (collision_object
    :reader collision_object
    :initarg :collision_object
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CollisionAvoidanceState (<CollisionAvoidanceState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionAvoidanceState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionAvoidanceState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<CollisionAvoidanceState> is deprecated: use baxter_core_msgs-msg:CollisionAvoidanceState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CollisionAvoidanceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:header-val is deprecated.  Use baxter_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'other_arm-val :lambda-list '(m))
(cl:defmethod other_arm-val ((m <CollisionAvoidanceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:other_arm-val is deprecated.  Use baxter_core_msgs-msg:other_arm instead.")
  (other_arm m))

(cl:ensure-generic-function 'collision_object-val :lambda-list '(m))
(cl:defmethod collision_object-val ((m <CollisionAvoidanceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:collision_object-val is deprecated.  Use baxter_core_msgs-msg:collision_object instead.")
  (collision_object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionAvoidanceState>) ostream)
  "Serializes a message object of type '<CollisionAvoidanceState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'other_arm) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'collision_object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionAvoidanceState>) istream)
  "Deserializes a message object of type '<CollisionAvoidanceState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'other_arm) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_object) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_object)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionAvoidanceState>)))
  "Returns string type for a message object of type '<CollisionAvoidanceState>"
  "baxter_core_msgs/CollisionAvoidanceState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionAvoidanceState)))
  "Returns string type for a message object of type 'CollisionAvoidanceState"
  "baxter_core_msgs/CollisionAvoidanceState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionAvoidanceState>)))
  "Returns md5sum for a message object of type '<CollisionAvoidanceState>"
  "30f5cb8ae019f1ffe8b599e6d2e589c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionAvoidanceState)))
  "Returns md5sum for a message object of type 'CollisionAvoidanceState"
  "30f5cb8ae019f1ffe8b599e6d2e589c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionAvoidanceState>)))
  "Returns full string definition for message of type '<CollisionAvoidanceState>"
  (cl:format cl:nil "std_msgs/Header header~%bool other_arm~%string[] collision_object~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionAvoidanceState)))
  "Returns full string definition for message of type 'CollisionAvoidanceState"
  (cl:format cl:nil "std_msgs/Header header~%bool other_arm~%string[] collision_object~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionAvoidanceState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_object) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionAvoidanceState>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionAvoidanceState
    (cl:cons ':header (header msg))
    (cl:cons ':other_arm (other_arm msg))
    (cl:cons ':collision_object (collision_object msg))
))

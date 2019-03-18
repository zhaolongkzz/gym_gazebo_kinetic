; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude CollisionDetectionState.msg.html

(cl:defclass <CollisionDetectionState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (collision_state
    :reader collision_state
    :initarg :collision_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CollisionDetectionState (<CollisionDetectionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionDetectionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionDetectionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<CollisionDetectionState> is deprecated: use baxter_core_msgs-msg:CollisionDetectionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CollisionDetectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:header-val is deprecated.  Use baxter_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'collision_state-val :lambda-list '(m))
(cl:defmethod collision_state-val ((m <CollisionDetectionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:collision_state-val is deprecated.  Use baxter_core_msgs-msg:collision_state instead.")
  (collision_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionDetectionState>) ostream)
  "Serializes a message object of type '<CollisionDetectionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionDetectionState>) istream)
  "Deserializes a message object of type '<CollisionDetectionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'collision_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionDetectionState>)))
  "Returns string type for a message object of type '<CollisionDetectionState>"
  "baxter_core_msgs/CollisionDetectionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionDetectionState)))
  "Returns string type for a message object of type 'CollisionDetectionState"
  "baxter_core_msgs/CollisionDetectionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionDetectionState>)))
  "Returns md5sum for a message object of type '<CollisionDetectionState>"
  "7bde38c182b4d08fdc0635b116f65d04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionDetectionState)))
  "Returns md5sum for a message object of type 'CollisionDetectionState"
  "7bde38c182b4d08fdc0635b116f65d04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionDetectionState>)))
  "Returns full string definition for message of type '<CollisionDetectionState>"
  (cl:format cl:nil "std_msgs/Header header~%bool collision_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionDetectionState)))
  "Returns full string definition for message of type 'CollisionDetectionState"
  (cl:format cl:nil "std_msgs/Header header~%bool collision_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionDetectionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionDetectionState>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionDetectionState
    (cl:cons ':header (header msg))
    (cl:cons ':collision_state (collision_state msg))
))

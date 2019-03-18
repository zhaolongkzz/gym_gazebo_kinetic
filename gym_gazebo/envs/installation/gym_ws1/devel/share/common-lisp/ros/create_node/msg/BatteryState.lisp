; Auto-generated. Do not edit!


(cl:in-package create_node-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0)
   (charge
    :reader charge
    :initarg :charge
    :type cl:fixnum
    :initform 0)
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-msg:<BatteryState> is deprecated: use create_node-msg:BatteryState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:header-val is deprecated.  Use create_node-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:temperature-val is deprecated.  Use create_node-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charge-val is deprecated.  Use create_node-msg:charge instead.")
  (charge m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:capacity-val is deprecated.  Use create_node-msg:capacity instead.")
  (capacity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "create_node/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "create_node/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "481447a4e24f212e7b403e4f04aa2ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "481447a4e24f212e7b403e4f04aa2ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "Header header~%int8 temperature~%uint16 charge~%uint16 capacity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "Header header~%int8 temperature~%uint16 charge~%uint16 capacity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':header (header msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':charge (charge msg))
    (cl:cons ':capacity (capacity msg))
))

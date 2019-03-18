; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude ScanAngle.msg.html

(cl:defclass <ScanAngle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scan_angle
    :reader scan_angle
    :initarg :scan_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ScanAngle (<ScanAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<ScanAngle> is deprecated: use kobuki_msgs-msg:ScanAngle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScanAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:header-val is deprecated.  Use kobuki_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scan_angle-val :lambda-list '(m))
(cl:defmethod scan_angle-val ((m <ScanAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:scan_angle-val is deprecated.  Use kobuki_msgs-msg:scan_angle instead.")
  (scan_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanAngle>) ostream)
  "Serializes a message object of type '<ScanAngle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scan_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanAngle>) istream)
  "Deserializes a message object of type '<ScanAngle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scan_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanAngle>)))
  "Returns string type for a message object of type '<ScanAngle>"
  "kobuki_msgs/ScanAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanAngle)))
  "Returns string type for a message object of type 'ScanAngle"
  "kobuki_msgs/ScanAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanAngle>)))
  "Returns md5sum for a message object of type '<ScanAngle>"
  "06e2c839dc5c7f5c13ac09a8b4ff0a6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanAngle)))
  "Returns md5sum for a message object of type 'ScanAngle"
  "06e2c839dc5c7f5c13ac09a8b4ff0a6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanAngle>)))
  "Returns full string definition for message of type '<ScanAngle>"
  (cl:format cl:nil "Header header~%float64 scan_angle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanAngle)))
  "Returns full string definition for message of type 'ScanAngle"
  (cl:format cl:nil "Header header~%float64 scan_angle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanAngle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanAngle
    (cl:cons ':header (header msg))
    (cl:cons ':scan_angle (scan_angle msg))
))

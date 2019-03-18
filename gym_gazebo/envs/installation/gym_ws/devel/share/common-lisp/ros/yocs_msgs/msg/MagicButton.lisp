; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude MagicButton.msg.html

(cl:defclass <MagicButton> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pressed
    :reader pressed
    :initarg :pressed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MagicButton (<MagicButton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagicButton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagicButton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<MagicButton> is deprecated: use yocs_msgs-msg:MagicButton instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagicButton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:header-val is deprecated.  Use yocs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pressed-val :lambda-list '(m))
(cl:defmethod pressed-val ((m <MagicButton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:pressed-val is deprecated.  Use yocs_msgs-msg:pressed instead.")
  (pressed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagicButton>) ostream)
  "Serializes a message object of type '<MagicButton>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagicButton>) istream)
  "Deserializes a message object of type '<MagicButton>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagicButton>)))
  "Returns string type for a message object of type '<MagicButton>"
  "yocs_msgs/MagicButton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagicButton)))
  "Returns string type for a message object of type 'MagicButton"
  "yocs_msgs/MagicButton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagicButton>)))
  "Returns md5sum for a message object of type '<MagicButton>"
  "bfc1e2424321b1d3dcc226b473f78588")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagicButton)))
  "Returns md5sum for a message object of type 'MagicButton"
  "bfc1e2424321b1d3dcc226b473f78588")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagicButton>)))
  "Returns full string definition for message of type '<MagicButton>"
  (cl:format cl:nil "# Used to send status and timestamp of a magic button press (typically~%# from a joystick). Used in yocs_joyop.~%~%std_msgs/Header header~%bool pressed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagicButton)))
  "Returns full string definition for message of type 'MagicButton"
  (cl:format cl:nil "# Used to send status and timestamp of a magic button press (typically~%# from a joystick). Used in yocs_joyop.~%~%std_msgs/Header header~%bool pressed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagicButton>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagicButton>))
  "Converts a ROS message object to a list"
  (cl:list 'MagicButton
    (cl:cons ':header (header msg))
    (cl:cons ':pressed (pressed msg))
))

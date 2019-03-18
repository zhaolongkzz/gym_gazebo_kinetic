; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude NavigationControl.msg.html

(cl:defclass <NavigationControl> (roslisp-msg-protocol:ros-message)
  ((control
    :reader control
    :initarg :control
    :type cl:fixnum
    :initform 0)
   (goal_name
    :reader goal_name
    :initarg :goal_name
    :type cl:string
    :initform ""))
)

(cl:defclass NavigationControl (<NavigationControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<NavigationControl> is deprecated: use yocs_msgs-msg:NavigationControl instead.")))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <NavigationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:control-val is deprecated.  Use yocs_msgs-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'goal_name-val :lambda-list '(m))
(cl:defmethod goal_name-val ((m <NavigationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:goal_name-val is deprecated.  Use yocs_msgs-msg:goal_name instead.")
  (goal_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationControl>)))
    "Constants for message type '<NavigationControl>"
  '((:STOP . 0)
    (:START . 1)
    (:PAUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationControl)))
    "Constants for message type 'NavigationControl"
  '((:STOP . 0)
    (:START . 1)
    (:PAUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationControl>) ostream)
  "Serializes a message object of type '<NavigationControl>"
  (cl:let* ((signed (cl:slot-value msg 'control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationControl>) istream)
  "Deserializes a message object of type '<NavigationControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationControl>)))
  "Returns string type for a message object of type '<NavigationControl>"
  "yocs_msgs/NavigationControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationControl)))
  "Returns string type for a message object of type 'NavigationControl"
  "yocs_msgs/NavigationControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationControl>)))
  "Returns md5sum for a message object of type '<NavigationControl>"
  "f2ddf02b376d1d00aed5addfb5cfe0ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationControl)))
  "Returns md5sum for a message object of type 'NavigationControl"
  "f2ddf02b376d1d00aed5addfb5cfe0ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationControl>)))
  "Returns full string definition for message of type '<NavigationControl>"
  (cl:format cl:nil "# control the way point/trajectory navigation~%int8 control~%~%int8 STOP  = 0~%int8 START = 1~%int8 PAUSE = 2~%~%# name of the way point(s) / trajectory to be execute~%# leave empty, when stopping or pausing~%string goal_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationControl)))
  "Returns full string definition for message of type 'NavigationControl"
  (cl:format cl:nil "# control the way point/trajectory navigation~%int8 control~%~%int8 STOP  = 0~%int8 START = 1~%int8 PAUSE = 2~%~%# name of the way point(s) / trajectory to be execute~%# leave empty, when stopping or pausing~%string goal_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationControl>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'goal_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationControl>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationControl
    (cl:cons ':control (control msg))
    (cl:cons ':goal_name (goal_name msg))
))

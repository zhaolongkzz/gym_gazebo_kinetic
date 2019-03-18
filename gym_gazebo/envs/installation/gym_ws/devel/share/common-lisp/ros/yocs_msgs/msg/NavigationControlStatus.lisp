; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude NavigationControlStatus.msg.html

(cl:defclass <NavigationControlStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (status_desc
    :reader status_desc
    :initarg :status_desc
    :type cl:string
    :initform ""))
)

(cl:defclass NavigationControlStatus (<NavigationControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<NavigationControlStatus> is deprecated: use yocs_msgs-msg:NavigationControlStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigationControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:status-val is deprecated.  Use yocs_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <NavigationControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:status_desc-val is deprecated.  Use yocs_msgs-msg:status_desc instead.")
  (status_desc m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationControlStatus>)))
    "Constants for message type '<NavigationControlStatus>"
  '((:ERROR . -1)
    (:IDLING . 0)
    (:RUNNING . 1)
    (:PAUSED . 2)
    (:COMPLETED . 3)
    (:CANCELLED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationControlStatus)))
    "Constants for message type 'NavigationControlStatus"
  '((:ERROR . -1)
    (:IDLING . 0)
    (:RUNNING . 1)
    (:PAUSED . 2)
    (:COMPLETED . 3)
    (:CANCELLED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationControlStatus>) ostream)
  "Serializes a message object of type '<NavigationControlStatus>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_desc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationControlStatus>) istream)
  "Deserializes a message object of type '<NavigationControlStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_desc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_desc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationControlStatus>)))
  "Returns string type for a message object of type '<NavigationControlStatus>"
  "yocs_msgs/NavigationControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationControlStatus)))
  "Returns string type for a message object of type 'NavigationControlStatus"
  "yocs_msgs/NavigationControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationControlStatus>)))
  "Returns md5sum for a message object of type '<NavigationControlStatus>"
  "f97c2c5903b273dd04cfb815fadb9f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationControlStatus)))
  "Returns md5sum for a message object of type 'NavigationControlStatus"
  "f97c2c5903b273dd04cfb815fadb9f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationControlStatus>)))
  "Returns full string definition for message of type '<NavigationControlStatus>"
  (cl:format cl:nil "# Control the way point/trajectory navigation~%int8 status~%~%int8 ERROR     = -1~%int8 IDLING    = 0~%int8 RUNNING   = 1~%int8 PAUSED    = 2~%int8 COMPLETED = 3~%int8 CANCELLED = 4~%~%# Human-readable status description~%string status_desc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationControlStatus)))
  "Returns full string definition for message of type 'NavigationControlStatus"
  (cl:format cl:nil "# Control the way point/trajectory navigation~%int8 status~%~%int8 ERROR     = -1~%int8 IDLING    = 0~%int8 RUNNING   = 1~%int8 PAUSED    = 2~%int8 COMPLETED = 3~%int8 CANCELLED = 4~%~%# Human-readable status description~%string status_desc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationControlStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_desc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationControlStatus
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
))

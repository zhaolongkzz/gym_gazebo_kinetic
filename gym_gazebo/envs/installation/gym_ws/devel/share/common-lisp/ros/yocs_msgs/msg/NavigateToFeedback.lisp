; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude NavigateToFeedback.msg.html

(cl:defclass <NavigateToFeedback> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (remain_time
    :reader remain_time
    :initarg :remain_time
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavigateToFeedback (<NavigateToFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateToFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateToFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<NavigateToFeedback> is deprecated: use yocs_msgs-msg:NavigateToFeedback instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NavigateToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:message-val is deprecated.  Use yocs_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <NavigateToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:distance-val is deprecated.  Use yocs_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'remain_time-val :lambda-list '(m))
(cl:defmethod remain_time-val ((m <NavigateToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:remain_time-val is deprecated.  Use yocs_msgs-msg:remain_time instead.")
  (remain_time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigateToFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:status-val is deprecated.  Use yocs_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigateToFeedback>)))
    "Constants for message type '<NavigateToFeedback>"
  '((:STATUS_RETRY . 21)
    (:STATUS_INPROGRESS . 22)
    (:STATUS_ERROR . 23))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigateToFeedback)))
    "Constants for message type 'NavigateToFeedback"
  '((:STATUS_RETRY . 21)
    (:STATUS_INPROGRESS . 22)
    (:STATUS_ERROR . 23))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateToFeedback>) ostream)
  "Serializes a message object of type '<NavigateToFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remain_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateToFeedback>) istream)
  "Deserializes a message object of type '<NavigateToFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remain_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateToFeedback>)))
  "Returns string type for a message object of type '<NavigateToFeedback>"
  "yocs_msgs/NavigateToFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateToFeedback)))
  "Returns string type for a message object of type 'NavigateToFeedback"
  "yocs_msgs/NavigateToFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateToFeedback>)))
  "Returns md5sum for a message object of type '<NavigateToFeedback>"
  "b7dbba42e365116e557ccba16fa0414a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateToFeedback)))
  "Returns md5sum for a message object of type 'NavigateToFeedback"
  "b7dbba42e365116e557ccba16fa0414a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateToFeedback>)))
  "Returns full string definition for message of type '<NavigateToFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string  message~%float32 distance~%float32 remain_time~%int8    status~%~%int8 STATUS_RETRY       = 21~%int8 STATUS_INPROGRESS  = 22~%int8 STATUS_ERROR       = 23~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateToFeedback)))
  "Returns full string definition for message of type 'NavigateToFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string  message~%float32 distance~%float32 remain_time~%int8    status~%~%int8 STATUS_RETRY       = 21~%int8 STATUS_INPROGRESS  = 22~%int8 STATUS_ERROR       = 23~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateToFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateToFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateToFeedback
    (cl:cons ':message (message msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':remain_time (remain_time msg))
    (cl:cons ':status (status msg))
))

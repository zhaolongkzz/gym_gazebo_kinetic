; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude NavigateToGoal.msg.html

(cl:defclass <NavigateToGoal> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (approach_type
    :reader approach_type
    :initarg :approach_type
    :type cl:fixnum
    :initform 0)
   (num_retry
    :reader num_retry
    :initarg :num_retry
    :type cl:fixnum
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavigateToGoal (<NavigateToGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateToGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateToGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<NavigateToGoal> is deprecated: use yocs_msgs-msg:NavigateToGoal instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:location-val is deprecated.  Use yocs_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'approach_type-val :lambda-list '(m))
(cl:defmethod approach_type-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:approach_type-val is deprecated.  Use yocs_msgs-msg:approach_type instead.")
  (approach_type m))

(cl:ensure-generic-function 'num_retry-val :lambda-list '(m))
(cl:defmethod num_retry-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:num_retry-val is deprecated.  Use yocs_msgs-msg:num_retry instead.")
  (num_retry m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:timeout-val is deprecated.  Use yocs_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:distance-val is deprecated.  Use yocs_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigateToGoal>)))
    "Constants for message type '<NavigateToGoal>"
  '((:APPROACH_NEAR . 11)
    (:APPROACH_ON . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigateToGoal)))
    "Constants for message type 'NavigateToGoal"
  '((:APPROACH_NEAR . 11)
    (:APPROACH_ON . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateToGoal>) ostream)
  "Serializes a message object of type '<NavigateToGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let* ((signed (cl:slot-value msg 'approach_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_retry)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateToGoal>) istream)
  "Deserializes a message object of type '<NavigateToGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'approach_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_retry) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateToGoal>)))
  "Returns string type for a message object of type '<NavigateToGoal>"
  "yocs_msgs/NavigateToGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateToGoal)))
  "Returns string type for a message object of type 'NavigateToGoal"
  "yocs_msgs/NavigateToGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateToGoal>)))
  "Returns md5sum for a message object of type '<NavigateToGoal>"
  "1549bb00469af4886dd492a95637d796")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateToGoal)))
  "Returns md5sum for a message object of type 'NavigateToGoal"
  "1549bb00469af4886dd492a95637d796")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateToGoal>)))
  "Returns full string definition for message of type '<NavigateToGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string location~%int8   approach_type~%int8   num_retry~%float32 timeout~%~%# This variable used when approach near is requested~%float32 distance~%~%int8 APPROACH_NEAR = 11~%int8 APPROACH_ON   = 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateToGoal)))
  "Returns full string definition for message of type 'NavigateToGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string location~%int8   approach_type~%int8   num_retry~%float32 timeout~%~%# This variable used when approach near is requested~%float32 distance~%~%int8 APPROACH_NEAR = 11~%int8 APPROACH_ON   = 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateToGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateToGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateToGoal
    (cl:cons ':location (location msg))
    (cl:cons ':approach_type (approach_type msg))
    (cl:cons ':num_retry (num_retry msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':distance (distance msg))
))

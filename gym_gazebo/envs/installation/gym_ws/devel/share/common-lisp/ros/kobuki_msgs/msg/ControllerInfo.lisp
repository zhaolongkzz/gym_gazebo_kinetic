; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude ControllerInfo.msg.html

(cl:defclass <ControllerInfo> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (p_gain
    :reader p_gain
    :initarg :p_gain
    :type cl:float
    :initform 0.0)
   (i_gain
    :reader i_gain
    :initarg :i_gain
    :type cl:float
    :initform 0.0)
   (d_gain
    :reader d_gain
    :initarg :d_gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControllerInfo (<ControllerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<ControllerInfo> is deprecated: use kobuki_msgs-msg:ControllerInfo instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:type-val is deprecated.  Use kobuki_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'p_gain-val :lambda-list '(m))
(cl:defmethod p_gain-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:p_gain-val is deprecated.  Use kobuki_msgs-msg:p_gain instead.")
  (p_gain m))

(cl:ensure-generic-function 'i_gain-val :lambda-list '(m))
(cl:defmethod i_gain-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:i_gain-val is deprecated.  Use kobuki_msgs-msg:i_gain instead.")
  (i_gain m))

(cl:ensure-generic-function 'd_gain-val :lambda-list '(m))
(cl:defmethod d_gain-val ((m <ControllerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:d_gain-val is deprecated.  Use kobuki_msgs-msg:d_gain instead.")
  (d_gain m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControllerInfo>)))
    "Constants for message type '<ControllerInfo>"
  '((:DEFAULT . 0)
    (:USER_CONFIGURED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControllerInfo)))
    "Constants for message type 'ControllerInfo"
  '((:DEFAULT . 0)
    (:USER_CONFIGURED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerInfo>) ostream)
  "Serializes a message object of type '<ControllerInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'i_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerInfo>) istream)
  "Deserializes a message object of type '<ControllerInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_gain) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerInfo>)))
  "Returns string type for a message object of type '<ControllerInfo>"
  "kobuki_msgs/ControllerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerInfo)))
  "Returns string type for a message object of type 'ControllerInfo"
  "kobuki_msgs/ControllerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerInfo>)))
  "Returns md5sum for a message object of type '<ControllerInfo>"
  "46af38e72f0640f41ed22174d43a2550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerInfo)))
  "Returns md5sum for a message object of type 'ControllerInfo"
  "46af38e72f0640f41ed22174d43a2550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerInfo>)))
  "Returns full string definition for message of type '<ControllerInfo>"
  (cl:format cl:nil "# Controller info message, contains PID parameters~%~%uint8 DEFAULT   =  0~%uint8 USER_CONFIGURED =  1~%~%uint8 type~%float64 p_gain #should be positive~%float64 i_gain #should be positive~%float64 d_gain #should be positive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerInfo)))
  "Returns full string definition for message of type 'ControllerInfo"
  (cl:format cl:nil "# Controller info message, contains PID parameters~%~%uint8 DEFAULT   =  0~%uint8 USER_CONFIGURED =  1~%~%uint8 type~%float64 p_gain #should be positive~%float64 i_gain #should be positive~%float64 d_gain #should be positive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerInfo>))
  (cl:+ 0
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerInfo
    (cl:cons ':type (type msg))
    (cl:cons ':p_gain (p_gain msg))
    (cl:cons ':i_gain (i_gain msg))
    (cl:cons ':d_gain (d_gain msg))
))

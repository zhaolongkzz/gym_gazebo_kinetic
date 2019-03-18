; Auto-generated. Do not edit!


(cl:in-package driver_base-msg)


;//! \htmlinclude ConfigValue.msg.html

(cl:defclass <ConfigValue> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConfigValue (<ConfigValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name driver_base-msg:<ConfigValue> is deprecated: use driver_base-msg:ConfigValue instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ConfigValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_base-msg:name-val is deprecated.  Use driver_base-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ConfigValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_base-msg:value-val is deprecated.  Use driver_base-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigValue>) ostream)
  "Serializes a message object of type '<ConfigValue>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigValue>) istream)
  "Deserializes a message object of type '<ConfigValue>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigValue>)))
  "Returns string type for a message object of type '<ConfigValue>"
  "driver_base/ConfigValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigValue)))
  "Returns string type for a message object of type 'ConfigValue"
  "driver_base/ConfigValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigValue>)))
  "Returns md5sum for a message object of type '<ConfigValue>"
  "d8512f27253c0f65f928a67c329cd658")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigValue)))
  "Returns md5sum for a message object of type 'ConfigValue"
  "d8512f27253c0f65f928a67c329cd658")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigValue>)))
  "Returns full string definition for message of type '<ConfigValue>"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigValue)))
  "Returns full string definition for message of type 'ConfigValue"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigValue>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigValue>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigValue
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))

; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude AnalogIOState.msg.html

(cl:defclass <AnalogIOState> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (isInputOnly
    :reader isInputOnly
    :initarg :isInputOnly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AnalogIOState (<AnalogIOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogIOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogIOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<AnalogIOState> is deprecated: use baxter_core_msgs-msg:AnalogIOState instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <AnalogIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:timestamp-val is deprecated.  Use baxter_core_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AnalogIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:value-val is deprecated.  Use baxter_core_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'isInputOnly-val :lambda-list '(m))
(cl:defmethod isInputOnly-val ((m <AnalogIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:isInputOnly-val is deprecated.  Use baxter_core_msgs-msg:isInputOnly instead.")
  (isInputOnly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogIOState>) ostream)
  "Serializes a message object of type '<AnalogIOState>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isInputOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogIOState>) istream)
  "Deserializes a message object of type '<AnalogIOState>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
    (cl:setf (cl:slot-value msg 'isInputOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogIOState>)))
  "Returns string type for a message object of type '<AnalogIOState>"
  "baxter_core_msgs/AnalogIOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogIOState)))
  "Returns string type for a message object of type 'AnalogIOState"
  "baxter_core_msgs/AnalogIOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogIOState>)))
  "Returns md5sum for a message object of type '<AnalogIOState>"
  "39af371963dc9e4447e91f430c720b33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogIOState)))
  "Returns md5sum for a message object of type 'AnalogIOState"
  "39af371963dc9e4447e91f430c720b33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogIOState>)))
  "Returns full string definition for message of type '<AnalogIOState>"
  (cl:format cl:nil "time timestamp~%float64 value~%bool isInputOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogIOState)))
  "Returns full string definition for message of type 'AnalogIOState"
  (cl:format cl:nil "time timestamp~%float64 value~%bool isInputOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogIOState>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogIOState>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogIOState
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':value (value msg))
    (cl:cons ':isInputOnly (isInputOnly msg))
))

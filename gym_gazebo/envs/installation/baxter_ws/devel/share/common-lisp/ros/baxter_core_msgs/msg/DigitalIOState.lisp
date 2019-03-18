; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude DigitalIOState.msg.html

(cl:defclass <DigitalIOState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (isInputOnly
    :reader isInputOnly
    :initarg :isInputOnly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DigitalIOState (<DigitalIOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalIOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalIOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<DigitalIOState> is deprecated: use baxter_core_msgs-msg:DigitalIOState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DigitalIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:state-val is deprecated.  Use baxter_core_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'isInputOnly-val :lambda-list '(m))
(cl:defmethod isInputOnly-val ((m <DigitalIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:isInputOnly-val is deprecated.  Use baxter_core_msgs-msg:isInputOnly instead.")
  (isInputOnly m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DigitalIOState>)))
    "Constants for message type '<DigitalIOState>"
  '((:OFF . 0)
    (:ON . 1)
    (:PRESSED . 1)
    (:UNPRESSED . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DigitalIOState)))
    "Constants for message type 'DigitalIOState"
  '((:OFF . 0)
    (:ON . 1)
    (:PRESSED . 1)
    (:UNPRESSED . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalIOState>) ostream)
  "Serializes a message object of type '<DigitalIOState>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isInputOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalIOState>) istream)
  "Deserializes a message object of type '<DigitalIOState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'isInputOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalIOState>)))
  "Returns string type for a message object of type '<DigitalIOState>"
  "baxter_core_msgs/DigitalIOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalIOState)))
  "Returns string type for a message object of type 'DigitalIOState"
  "baxter_core_msgs/DigitalIOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalIOState>)))
  "Returns md5sum for a message object of type '<DigitalIOState>"
  "29d0be3859dae81a66b28f167ecec98c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalIOState)))
  "Returns md5sum for a message object of type 'DigitalIOState"
  "29d0be3859dae81a66b28f167ecec98c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalIOState>)))
  "Returns full string definition for message of type '<DigitalIOState>"
  (cl:format cl:nil "int8 state~%bool isInputOnly~%~%int8 OFF = 0~%int8 ON  = 1~%int8 PRESSED = 1~%int8 UNPRESSED = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalIOState)))
  "Returns full string definition for message of type 'DigitalIOState"
  (cl:format cl:nil "int8 state~%bool isInputOnly~%~%int8 OFF = 0~%int8 ON  = 1~%int8 PRESSED = 1~%int8 UNPRESSED = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalIOState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalIOState>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalIOState
    (cl:cons ':state (state msg))
    (cl:cons ':isInputOnly (isInputOnly msg))
))

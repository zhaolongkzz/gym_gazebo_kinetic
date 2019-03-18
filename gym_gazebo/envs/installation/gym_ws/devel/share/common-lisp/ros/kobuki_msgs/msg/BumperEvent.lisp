; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude BumperEvent.msg.html

(cl:defclass <BumperEvent> (roslisp-msg-protocol:ros-message)
  ((bumper
    :reader bumper
    :initarg :bumper
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BumperEvent (<BumperEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<BumperEvent> is deprecated: use kobuki_msgs-msg:BumperEvent instead.")))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <BumperEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:bumper-val is deprecated.  Use kobuki_msgs-msg:bumper instead.")
  (bumper m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <BumperEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:state-val is deprecated.  Use kobuki_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BumperEvent>)))
    "Constants for message type '<BumperEvent>"
  '((:LEFT . 0)
    (:CENTER . 1)
    (:RIGHT . 2)
    (:RELEASED . 0)
    (:PRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BumperEvent)))
    "Constants for message type 'BumperEvent"
  '((:LEFT . 0)
    (:CENTER . 1)
    (:RIGHT . 2)
    (:RELEASED . 0)
    (:PRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperEvent>) ostream)
  "Serializes a message object of type '<BumperEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumper)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperEvent>) istream)
  "Deserializes a message object of type '<BumperEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumper)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperEvent>)))
  "Returns string type for a message object of type '<BumperEvent>"
  "kobuki_msgs/BumperEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperEvent)))
  "Returns string type for a message object of type 'BumperEvent"
  "kobuki_msgs/BumperEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperEvent>)))
  "Returns md5sum for a message object of type '<BumperEvent>"
  "ffe360cd50f14f9251d9844083e72ac5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperEvent)))
  "Returns md5sum for a message object of type 'BumperEvent"
  "ffe360cd50f14f9251d9844083e72ac5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperEvent>)))
  "Returns full string definition for message of type '<BumperEvent>"
  (cl:format cl:nil "# Provides a bumper event.~%# This message is generated whenever a particular bumper is pressed or released.~%# Note that, despite bumper field on SensorState messages, state field is not a~%# bitmask, but the new state of a single sensor.~%~%# bumper~%uint8 LEFT   = 0~%uint8 CENTER = 1~%uint8 RIGHT  = 2~%~%# state~%uint8 RELEASED = 0~%uint8 PRESSED  = 1~%~%uint8 bumper~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperEvent)))
  "Returns full string definition for message of type 'BumperEvent"
  (cl:format cl:nil "# Provides a bumper event.~%# This message is generated whenever a particular bumper is pressed or released.~%# Note that, despite bumper field on SensorState messages, state field is not a~%# bitmask, but the new state of a single sensor.~%~%# bumper~%uint8 LEFT   = 0~%uint8 CENTER = 1~%uint8 RIGHT  = 2~%~%# state~%uint8 RELEASED = 0~%uint8 PRESSED  = 1~%~%uint8 bumper~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperEvent>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperEvent
    (cl:cons ':bumper (bumper msg))
    (cl:cons ':state (state msg))
))

; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude WheelDropEvent.msg.html

(cl:defclass <WheelDropEvent> (roslisp-msg-protocol:ros-message)
  ((wheel
    :reader wheel
    :initarg :wheel
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WheelDropEvent (<WheelDropEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDropEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDropEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<WheelDropEvent> is deprecated: use kobuki_msgs-msg:WheelDropEvent instead.")))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <WheelDropEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:wheel-val is deprecated.  Use kobuki_msgs-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WheelDropEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:state-val is deprecated.  Use kobuki_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelDropEvent>)))
    "Constants for message type '<WheelDropEvent>"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:RAISED . 0)
    (:DROPPED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelDropEvent)))
    "Constants for message type 'WheelDropEvent"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:RAISED . 0)
    (:DROPPED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDropEvent>) ostream)
  "Serializes a message object of type '<WheelDropEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDropEvent>) istream)
  "Deserializes a message object of type '<WheelDropEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDropEvent>)))
  "Returns string type for a message object of type '<WheelDropEvent>"
  "kobuki_msgs/WheelDropEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDropEvent)))
  "Returns string type for a message object of type 'WheelDropEvent"
  "kobuki_msgs/WheelDropEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDropEvent>)))
  "Returns md5sum for a message object of type '<WheelDropEvent>"
  "e102837d89384d67669a0df86b63f33b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDropEvent)))
  "Returns md5sum for a message object of type 'WheelDropEvent"
  "e102837d89384d67669a0df86b63f33b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDropEvent>)))
  "Returns full string definition for message of type '<WheelDropEvent>"
  (cl:format cl:nil "# Provides a wheel drop event.~%# This message is generated whenever one of the wheels is dropped (robot fell~%# or was raised) or raised (normal condition).~%# Note that, despite wheel_drop field on SensorState messages, state field is~%# not a bitmask, but the new state of a single sensor.~%~%# wheel~%uint8 LEFT  = 0~%uint8 RIGHT = 1~%~%# state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDropEvent)))
  "Returns full string definition for message of type 'WheelDropEvent"
  (cl:format cl:nil "# Provides a wheel drop event.~%# This message is generated whenever one of the wheels is dropped (robot fell~%# or was raised) or raised (normal condition).~%# Note that, despite wheel_drop field on SensorState messages, state field is~%# not a bitmask, but the new state of a single sensor.~%~%# wheel~%uint8 LEFT  = 0~%uint8 RIGHT = 1~%~%# state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDropEvent>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDropEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDropEvent
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':state (state msg))
))

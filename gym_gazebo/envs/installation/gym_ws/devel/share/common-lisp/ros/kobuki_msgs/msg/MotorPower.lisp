; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude MotorPower.msg.html

(cl:defclass <MotorPower> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorPower (<MotorPower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorPower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorPower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<MotorPower> is deprecated: use kobuki_msgs-msg:MotorPower instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MotorPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:state-val is deprecated.  Use kobuki_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorPower>)))
    "Constants for message type '<MotorPower>"
  '((:OFF . 0)
    (:ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorPower)))
    "Constants for message type 'MotorPower"
  '((:OFF . 0)
    (:ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorPower>) ostream)
  "Serializes a message object of type '<MotorPower>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorPower>) istream)
  "Deserializes a message object of type '<MotorPower>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorPower>)))
  "Returns string type for a message object of type '<MotorPower>"
  "kobuki_msgs/MotorPower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorPower)))
  "Returns string type for a message object of type 'MotorPower"
  "kobuki_msgs/MotorPower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorPower>)))
  "Returns md5sum for a message object of type '<MotorPower>"
  "8f77c0161e0f2021493136bb5f3f0e51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorPower)))
  "Returns md5sum for a message object of type 'MotorPower"
  "8f77c0161e0f2021493136bb5f3f0e51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorPower>)))
  "Returns full string definition for message of type '<MotorPower>"
  (cl:format cl:nil "# Turn on/off Kobuki's motors~%~%# State~%uint8 OFF = 0~%uint8 ON  = 1~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorPower)))
  "Returns full string definition for message of type 'MotorPower"
  (cl:format cl:nil "# Turn on/off Kobuki's motors~%~%# State~%uint8 OFF = 0~%uint8 ON  = 1~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorPower>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorPower>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorPower
    (cl:cons ':state (state msg))
))

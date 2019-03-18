; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude ExternalPower.msg.html

(cl:defclass <ExternalPower> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExternalPower (<ExternalPower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExternalPower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExternalPower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<ExternalPower> is deprecated: use kobuki_msgs-msg:ExternalPower instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <ExternalPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:source-val is deprecated.  Use kobuki_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ExternalPower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:state-val is deprecated.  Use kobuki_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExternalPower>)))
    "Constants for message type '<ExternalPower>"
  '((:PWR_3_3V1A . 0)
    (:PWR_5V1A . 1)
    (:PWR_12V5A . 2)
    (:PWR_12V1_5A . 3)
    (:OFF . 0)
    (:ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExternalPower)))
    "Constants for message type 'ExternalPower"
  '((:PWR_3_3V1A . 0)
    (:PWR_5V1A . 1)
    (:PWR_12V5A . 2)
    (:PWR_12V1_5A . 3)
    (:OFF . 0)
    (:ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExternalPower>) ostream)
  "Serializes a message object of type '<ExternalPower>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExternalPower>) istream)
  "Deserializes a message object of type '<ExternalPower>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExternalPower>)))
  "Returns string type for a message object of type '<ExternalPower>"
  "kobuki_msgs/ExternalPower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExternalPower)))
  "Returns string type for a message object of type 'ExternalPower"
  "kobuki_msgs/ExternalPower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExternalPower>)))
  "Returns md5sum for a message object of type '<ExternalPower>"
  "95149d524971a4c6d19e64c827307194")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExternalPower)))
  "Returns md5sum for a message object of type 'ExternalPower"
  "95149d524971a4c6d19e64c827307194")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExternalPower>)))
  "Returns full string definition for message of type '<ExternalPower>"
  (cl:format cl:nil "# Turn on/off Kobuki's external power sources~%~%# Power sources~%uint8 PWR_3_3V1A  = 0 # DB25 connector only~%uint8 PWR_5V1A    = 1 # DB25 connector and Micro Molex connector~%uint8 PWR_12V5A   = 2 # Micro Molex connector only~%uint8 PWR_12V1_5A = 3 # Micro Molex connector only~%~%# State~%uint8 OFF = 0~%uint8 ON  = 1~%~%uint8 source~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExternalPower)))
  "Returns full string definition for message of type 'ExternalPower"
  (cl:format cl:nil "# Turn on/off Kobuki's external power sources~%~%# Power sources~%uint8 PWR_3_3V1A  = 0 # DB25 connector only~%uint8 PWR_5V1A    = 1 # DB25 connector and Micro Molex connector~%uint8 PWR_12V5A   = 2 # Micro Molex connector only~%uint8 PWR_12V1_5A = 3 # Micro Molex connector only~%~%# State~%uint8 OFF = 0~%uint8 ON  = 1~%~%uint8 source~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExternalPower>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExternalPower>))
  "Converts a ROS message object to a list"
  (cl:list 'ExternalPower
    (cl:cons ':source (source msg))
    (cl:cons ':state (state msg))
))

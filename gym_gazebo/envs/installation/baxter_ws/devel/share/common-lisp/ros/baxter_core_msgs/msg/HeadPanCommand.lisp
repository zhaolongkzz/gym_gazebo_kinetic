; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude HeadPanCommand.msg.html

(cl:defclass <HeadPanCommand> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type cl:float
    :initform 0.0)
   (speed_ratio
    :reader speed_ratio
    :initarg :speed_ratio
    :type cl:float
    :initform 0.0)
   (enable_pan_request
    :reader enable_pan_request
    :initarg :enable_pan_request
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeadPanCommand (<HeadPanCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPanCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPanCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<HeadPanCommand> is deprecated: use baxter_core_msgs-msg:HeadPanCommand instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:target-val is deprecated.  Use baxter_core_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'speed_ratio-val :lambda-list '(m))
(cl:defmethod speed_ratio-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:speed_ratio-val is deprecated.  Use baxter_core_msgs-msg:speed_ratio instead.")
  (speed_ratio m))

(cl:ensure-generic-function 'enable_pan_request-val :lambda-list '(m))
(cl:defmethod enable_pan_request-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:enable_pan_request-val is deprecated.  Use baxter_core_msgs-msg:enable_pan_request instead.")
  (enable_pan_request m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadPanCommand>)))
    "Constants for message type '<HeadPanCommand>"
  '((:MAX_SPEED_RATIO . 1.0)
    (:MIN_SPEED_RATIO . 0.0)
    (:REQUEST_PAN_DISABLE . 0)
    (:REQUEST_PAN_ENABLE . 1)
    (:REQUEST_PAN_VOID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadPanCommand)))
    "Constants for message type 'HeadPanCommand"
  '((:MAX_SPEED_RATIO . 1.0)
    (:MIN_SPEED_RATIO . 0.0)
    (:REQUEST_PAN_DISABLE . 0)
    (:REQUEST_PAN_ENABLE . 1)
    (:REQUEST_PAN_VOID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPanCommand>) ostream)
  "Serializes a message object of type '<HeadPanCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable_pan_request)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPanCommand>) istream)
  "Deserializes a message object of type '<HeadPanCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable_pan_request)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPanCommand>)))
  "Returns string type for a message object of type '<HeadPanCommand>"
  "baxter_core_msgs/HeadPanCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPanCommand)))
  "Returns string type for a message object of type 'HeadPanCommand"
  "baxter_core_msgs/HeadPanCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPanCommand>)))
  "Returns md5sum for a message object of type '<HeadPanCommand>"
  "23b8a3f4b7ee9de7099d029e57660a8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPanCommand)))
  "Returns md5sum for a message object of type 'HeadPanCommand"
  "23b8a3f4b7ee9de7099d029e57660a8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPanCommand>)))
  "Returns full string definition for message of type '<HeadPanCommand>"
  (cl:format cl:nil "float32 target              # radians for target, 0 str~%float32 speed_ratio         # Percentage of max speed [0-1]~%#~%  float32 MAX_SPEED_RATIO = 1.0~%  float32 MIN_SPEED_RATIO = 0.0~%#~%uint8   enable_pan_request  # override automatic pan enable/disable~%# enable_pan_request is tristate: 0 = disable pan; 1 = enable pan; 2 = don't change pan~%  uint8   REQUEST_PAN_DISABLE = 0~%  uint8   REQUEST_PAN_ENABLE = 1~%  uint8   REQUEST_PAN_VOID = 2~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPanCommand)))
  "Returns full string definition for message of type 'HeadPanCommand"
  (cl:format cl:nil "float32 target              # radians for target, 0 str~%float32 speed_ratio         # Percentage of max speed [0-1]~%#~%  float32 MAX_SPEED_RATIO = 1.0~%  float32 MIN_SPEED_RATIO = 0.0~%#~%uint8   enable_pan_request  # override automatic pan enable/disable~%# enable_pan_request is tristate: 0 = disable pan; 1 = enable pan; 2 = don't change pan~%  uint8   REQUEST_PAN_DISABLE = 0~%  uint8   REQUEST_PAN_ENABLE = 1~%  uint8   REQUEST_PAN_VOID = 2~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPanCommand>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPanCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPanCommand
    (cl:cons ':target (target msg))
    (cl:cons ':speed_ratio (speed_ratio msg))
    (cl:cons ':enable_pan_request (enable_pan_request msg))
))

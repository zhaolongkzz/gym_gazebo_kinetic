; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude CameraControl.msg.html

(cl:defclass <CameraControl> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass CameraControl (<CameraControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<CameraControl> is deprecated: use baxter_core_msgs-msg:CameraControl instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CameraControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:id-val is deprecated.  Use baxter_core_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CameraControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:value-val is deprecated.  Use baxter_core_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraControl>)))
    "Constants for message type '<CameraControl>"
  '((:CAMERA_CONTROL_EXPOSURE . 100)
    (:CAMERA_CONTROL_GAIN . 101)
    (:CAMERA_CONTROL_WHITE_BALANCE_R . 102)
    (:CAMERA_CONTROL_WHITE_BALANCE_G . 103)
    (:CAMERA_CONTROL_WHITE_BALANCE_B . 104)
    (:CAMERA_CONTROL_WINDOW_X . 105)
    (:CAMERA_CONTROL_WINDOW_Y . 106)
    (:CAMERA_CONTROL_FLIP . 107)
    (:CAMERA_CONTROL_MIRROR . 108)
    (:CAMERA_CONTROL_RESOLUTION_HALF . 109))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraControl)))
    "Constants for message type 'CameraControl"
  '((:CAMERA_CONTROL_EXPOSURE . 100)
    (:CAMERA_CONTROL_GAIN . 101)
    (:CAMERA_CONTROL_WHITE_BALANCE_R . 102)
    (:CAMERA_CONTROL_WHITE_BALANCE_G . 103)
    (:CAMERA_CONTROL_WHITE_BALANCE_B . 104)
    (:CAMERA_CONTROL_WINDOW_X . 105)
    (:CAMERA_CONTROL_WINDOW_Y . 106)
    (:CAMERA_CONTROL_FLIP . 107)
    (:CAMERA_CONTROL_MIRROR . 108)
    (:CAMERA_CONTROL_RESOLUTION_HALF . 109))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraControl>) ostream)
  "Serializes a message object of type '<CameraControl>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraControl>) istream)
  "Deserializes a message object of type '<CameraControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraControl>)))
  "Returns string type for a message object of type '<CameraControl>"
  "baxter_core_msgs/CameraControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraControl)))
  "Returns string type for a message object of type 'CameraControl"
  "baxter_core_msgs/CameraControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraControl>)))
  "Returns md5sum for a message object of type '<CameraControl>"
  "01e38dd67dfb36af457f0915248629d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraControl)))
  "Returns md5sum for a message object of type 'CameraControl"
  "01e38dd67dfb36af457f0915248629d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraControl>)))
  "Returns full string definition for message of type '<CameraControl>"
  (cl:format cl:nil "int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraControl)))
  "Returns full string definition for message of type 'CameraControl"
  (cl:format cl:nil "int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraControl>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraControl
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
))

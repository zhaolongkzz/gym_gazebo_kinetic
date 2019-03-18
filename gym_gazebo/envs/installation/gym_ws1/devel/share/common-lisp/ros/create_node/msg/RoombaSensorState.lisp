; Auto-generated. Do not edit!


(cl:in-package create_node-msg)


;//! \htmlinclude RoombaSensorState.msg.html

(cl:defclass <RoombaSensorState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumps_wheeldrops
    :reader bumps_wheeldrops
    :initarg :bumps_wheeldrops
    :type cl:fixnum
    :initform 0)
   (wall
    :reader wall
    :initarg :wall
    :type cl:boolean
    :initform cl:nil)
   (cliff_left
    :reader cliff_left
    :initarg :cliff_left
    :type cl:boolean
    :initform cl:nil)
   (cliff_front_left
    :reader cliff_front_left
    :initarg :cliff_front_left
    :type cl:boolean
    :initform cl:nil)
   (cliff_front_right
    :reader cliff_front_right
    :initarg :cliff_front_right
    :type cl:boolean
    :initform cl:nil)
   (cliff_right
    :reader cliff_right
    :initarg :cliff_right
    :type cl:boolean
    :initform cl:nil)
   (virtual_wall
    :reader virtual_wall
    :initarg :virtual_wall
    :type cl:boolean
    :initform cl:nil)
   (motor_overcurrents
    :reader motor_overcurrents
    :initarg :motor_overcurrents
    :type cl:fixnum
    :initform 0)
   (dirt_detector_left
    :reader dirt_detector_left
    :initarg :dirt_detector_left
    :type cl:fixnum
    :initform 0)
   (dirt_detector_right
    :reader dirt_detector_right
    :initarg :dirt_detector_right
    :type cl:fixnum
    :initform 0)
   (remote_opcode
    :reader remote_opcode
    :initarg :remote_opcode
    :type cl:fixnum
    :initform 0)
   (buttons
    :reader buttons
    :initarg :buttons
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:fixnum
    :initform 0)
   (charging_state
    :reader charging_state
    :initarg :charging_state
    :type cl:fixnum
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0)
   (charge
    :reader charge
    :initarg :charge
    :type cl:fixnum
    :initform 0)
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoombaSensorState (<RoombaSensorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoombaSensorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoombaSensorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-msg:<RoombaSensorState> is deprecated: use create_node-msg:RoombaSensorState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:header-val is deprecated.  Use create_node-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumps_wheeldrops-val :lambda-list '(m))
(cl:defmethod bumps_wheeldrops-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:bumps_wheeldrops-val is deprecated.  Use create_node-msg:bumps_wheeldrops instead.")
  (bumps_wheeldrops m))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:wall-val is deprecated.  Use create_node-msg:wall instead.")
  (wall m))

(cl:ensure-generic-function 'cliff_left-val :lambda-list '(m))
(cl:defmethod cliff_left-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_left-val is deprecated.  Use create_node-msg:cliff_left instead.")
  (cliff_left m))

(cl:ensure-generic-function 'cliff_front_left-val :lambda-list '(m))
(cl:defmethod cliff_front_left-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_left-val is deprecated.  Use create_node-msg:cliff_front_left instead.")
  (cliff_front_left m))

(cl:ensure-generic-function 'cliff_front_right-val :lambda-list '(m))
(cl:defmethod cliff_front_right-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_right-val is deprecated.  Use create_node-msg:cliff_front_right instead.")
  (cliff_front_right m))

(cl:ensure-generic-function 'cliff_right-val :lambda-list '(m))
(cl:defmethod cliff_right-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_right-val is deprecated.  Use create_node-msg:cliff_right instead.")
  (cliff_right m))

(cl:ensure-generic-function 'virtual_wall-val :lambda-list '(m))
(cl:defmethod virtual_wall-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:virtual_wall-val is deprecated.  Use create_node-msg:virtual_wall instead.")
  (virtual_wall m))

(cl:ensure-generic-function 'motor_overcurrents-val :lambda-list '(m))
(cl:defmethod motor_overcurrents-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:motor_overcurrents-val is deprecated.  Use create_node-msg:motor_overcurrents instead.")
  (motor_overcurrents m))

(cl:ensure-generic-function 'dirt_detector_left-val :lambda-list '(m))
(cl:defmethod dirt_detector_left-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:dirt_detector_left-val is deprecated.  Use create_node-msg:dirt_detector_left instead.")
  (dirt_detector_left m))

(cl:ensure-generic-function 'dirt_detector_right-val :lambda-list '(m))
(cl:defmethod dirt_detector_right-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:dirt_detector_right-val is deprecated.  Use create_node-msg:dirt_detector_right instead.")
  (dirt_detector_right m))

(cl:ensure-generic-function 'remote_opcode-val :lambda-list '(m))
(cl:defmethod remote_opcode-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:remote_opcode-val is deprecated.  Use create_node-msg:remote_opcode instead.")
  (remote_opcode m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:buttons-val is deprecated.  Use create_node-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:distance-val is deprecated.  Use create_node-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:angle-val is deprecated.  Use create_node-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'charging_state-val :lambda-list '(m))
(cl:defmethod charging_state-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charging_state-val is deprecated.  Use create_node-msg:charging_state instead.")
  (charging_state m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:voltage-val is deprecated.  Use create_node-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:current-val is deprecated.  Use create_node-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:temperature-val is deprecated.  Use create_node-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charge-val is deprecated.  Use create_node-msg:charge instead.")
  (charge m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <RoombaSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:capacity-val is deprecated.  Use create_node-msg:capacity instead.")
  (capacity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoombaSensorState>)))
    "Constants for message type '<RoombaSensorState>"
  '((:CHARGING_NOT_CHARGING . 0)
    (:CHARGING_CHARGING_RECOVERY . 1)
    (:CHARGING_CHARGING . 2)
    (:CHARGING_TRICKLE_CHARGING . 3)
    (:CHARGING_WAITING . 4)
    (:CHARGING_CHARGING_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoombaSensorState)))
    "Constants for message type 'RoombaSensorState"
  '((:CHARGING_NOT_CHARGING . 0)
    (:CHARGING_CHARGING_RECOVERY . 1)
    (:CHARGING_CHARGING . 2)
    (:CHARGING_TRICKLE_CHARGING . 3)
    (:CHARGING_WAITING . 4)
    (:CHARGING_CHARGING_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoombaSensorState>) ostream)
  "Serializes a message object of type '<RoombaSensorState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumps_wheeldrops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wall) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_front_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_front_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'virtual_wall) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_overcurrents)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dirt_detector_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dirt_detector_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_opcode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoombaSensorState>) istream)
  "Deserializes a message object of type '<RoombaSensorState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumps_wheeldrops)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wall) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_front_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_front_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'virtual_wall) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_overcurrents)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dirt_detector_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dirt_detector_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_opcode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'capacity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoombaSensorState>)))
  "Returns string type for a message object of type '<RoombaSensorState>"
  "create_node/RoombaSensorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoombaSensorState)))
  "Returns string type for a message object of type 'RoombaSensorState"
  "create_node/RoombaSensorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoombaSensorState>)))
  "Returns md5sum for a message object of type '<RoombaSensorState>"
  "9e8632c0937537603a670e96e85cd991")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoombaSensorState)))
  "Returns md5sum for a message object of type 'RoombaSensorState"
  "9e8632c0937537603a670e96e85cd991")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoombaSensorState>)))
  "Returns full string definition for message of type '<RoombaSensorState>"
  (cl:format cl:nil "Header header~%~%uint8 CHARGING_NOT_CHARGING = 0~%uint8 CHARGING_CHARGING_RECOVERY = 1~%uint8 CHARGING_CHARGING = 2~%uint8 CHARGING_TRICKLE_CHARGING = 3~%uint8 CHARGING_WAITING = 4 ~%uint8 CHARGING_CHARGING_ERROR = 5~%~%uint8 bumps_wheeldrops~%bool wall~%bool cliff_left~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_right~%bool virtual_wall~%uint8 motor_overcurrents~%uint8 dirt_detector_left  #roomba_only~%uint8 dirt_detector_right #roomba_only~%uint8 remote_opcode~%uint8 buttons~%int16 distance  # mm~%int16 angle # degrees~%uint8 charging_state~%uint16 voltage  # mV~%int16 current  # mA~%int8 temperature  # C~%uint16 charge  # mAh~%uint16 capacity  # mAh~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoombaSensorState)))
  "Returns full string definition for message of type 'RoombaSensorState"
  (cl:format cl:nil "Header header~%~%uint8 CHARGING_NOT_CHARGING = 0~%uint8 CHARGING_CHARGING_RECOVERY = 1~%uint8 CHARGING_CHARGING = 2~%uint8 CHARGING_TRICKLE_CHARGING = 3~%uint8 CHARGING_WAITING = 4 ~%uint8 CHARGING_CHARGING_ERROR = 5~%~%uint8 bumps_wheeldrops~%bool wall~%bool cliff_left~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_right~%bool virtual_wall~%uint8 motor_overcurrents~%uint8 dirt_detector_left  #roomba_only~%uint8 dirt_detector_right #roomba_only~%uint8 remote_opcode~%uint8 buttons~%int16 distance  # mm~%int16 angle # degrees~%uint8 charging_state~%uint16 voltage  # mV~%int16 current  # mA~%int8 temperature  # C~%uint16 charge  # mAh~%uint16 capacity  # mAh~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoombaSensorState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     2
     1
     2
     2
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoombaSensorState>))
  "Converts a ROS message object to a list"
  (cl:list 'RoombaSensorState
    (cl:cons ':header (header msg))
    (cl:cons ':bumps_wheeldrops (bumps_wheeldrops msg))
    (cl:cons ':wall (wall msg))
    (cl:cons ':cliff_left (cliff_left msg))
    (cl:cons ':cliff_front_left (cliff_front_left msg))
    (cl:cons ':cliff_front_right (cliff_front_right msg))
    (cl:cons ':cliff_right (cliff_right msg))
    (cl:cons ':virtual_wall (virtual_wall msg))
    (cl:cons ':motor_overcurrents (motor_overcurrents msg))
    (cl:cons ':dirt_detector_left (dirt_detector_left msg))
    (cl:cons ':dirt_detector_right (dirt_detector_right msg))
    (cl:cons ':remote_opcode (remote_opcode msg))
    (cl:cons ':buttons (buttons msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':charging_state (charging_state msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':charge (charge msg))
    (cl:cons ':capacity (capacity msg))
))

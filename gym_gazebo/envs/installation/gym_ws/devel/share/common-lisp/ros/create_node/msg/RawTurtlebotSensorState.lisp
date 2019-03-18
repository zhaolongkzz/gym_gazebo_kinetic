; Auto-generated. Do not edit!


(cl:in-package create_node-msg)


;//! \htmlinclude RawTurtlebotSensorState.msg.html

(cl:defclass <RawTurtlebotSensorState> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (wall_signal
    :reader wall_signal
    :initarg :wall_signal
    :type cl:fixnum
    :initform 0)
   (cliff_left_signal
    :reader cliff_left_signal
    :initarg :cliff_left_signal
    :type cl:fixnum
    :initform 0)
   (cliff_front_left_signal
    :reader cliff_front_left_signal
    :initarg :cliff_front_left_signal
    :type cl:fixnum
    :initform 0)
   (cliff_front_right_signal
    :reader cliff_front_right_signal
    :initarg :cliff_front_right_signal
    :type cl:fixnum
    :initform 0)
   (cliff_right_signal
    :reader cliff_right_signal
    :initarg :cliff_right_signal
    :type cl:fixnum
    :initform 0)
   (user_digital_inputs
    :reader user_digital_inputs
    :initarg :user_digital_inputs
    :type cl:fixnum
    :initform 0)
   (user_analog_input
    :reader user_analog_input
    :initarg :user_analog_input
    :type cl:fixnum
    :initform 0)
   (charging_sources_available
    :reader charging_sources_available
    :initarg :charging_sources_available
    :type cl:fixnum
    :initform 0)
   (oi_mode
    :reader oi_mode
    :initarg :oi_mode
    :type cl:fixnum
    :initform 0)
   (song_number
    :reader song_number
    :initarg :song_number
    :type cl:fixnum
    :initform 0)
   (song_playing
    :reader song_playing
    :initarg :song_playing
    :type cl:boolean
    :initform cl:nil)
   (number_of_stream_packets
    :reader number_of_stream_packets
    :initarg :number_of_stream_packets
    :type cl:fixnum
    :initform 0)
   (requested_velocity
    :reader requested_velocity
    :initarg :requested_velocity
    :type cl:fixnum
    :initform 0)
   (requested_radius
    :reader requested_radius
    :initarg :requested_radius
    :type cl:fixnum
    :initform 0)
   (requested_right_velocity
    :reader requested_right_velocity
    :initarg :requested_right_velocity
    :type cl:fixnum
    :initform 0)
   (requested_left_velocity
    :reader requested_left_velocity
    :initarg :requested_left_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawTurtlebotSensorState (<RawTurtlebotSensorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawTurtlebotSensorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawTurtlebotSensorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-msg:<RawTurtlebotSensorState> is deprecated: use create_node-msg:RawTurtlebotSensorState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:header-val is deprecated.  Use create_node-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumps_wheeldrops-val :lambda-list '(m))
(cl:defmethod bumps_wheeldrops-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:bumps_wheeldrops-val is deprecated.  Use create_node-msg:bumps_wheeldrops instead.")
  (bumps_wheeldrops m))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:wall-val is deprecated.  Use create_node-msg:wall instead.")
  (wall m))

(cl:ensure-generic-function 'cliff_left-val :lambda-list '(m))
(cl:defmethod cliff_left-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_left-val is deprecated.  Use create_node-msg:cliff_left instead.")
  (cliff_left m))

(cl:ensure-generic-function 'cliff_front_left-val :lambda-list '(m))
(cl:defmethod cliff_front_left-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_left-val is deprecated.  Use create_node-msg:cliff_front_left instead.")
  (cliff_front_left m))

(cl:ensure-generic-function 'cliff_front_right-val :lambda-list '(m))
(cl:defmethod cliff_front_right-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_right-val is deprecated.  Use create_node-msg:cliff_front_right instead.")
  (cliff_front_right m))

(cl:ensure-generic-function 'cliff_right-val :lambda-list '(m))
(cl:defmethod cliff_right-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_right-val is deprecated.  Use create_node-msg:cliff_right instead.")
  (cliff_right m))

(cl:ensure-generic-function 'virtual_wall-val :lambda-list '(m))
(cl:defmethod virtual_wall-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:virtual_wall-val is deprecated.  Use create_node-msg:virtual_wall instead.")
  (virtual_wall m))

(cl:ensure-generic-function 'motor_overcurrents-val :lambda-list '(m))
(cl:defmethod motor_overcurrents-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:motor_overcurrents-val is deprecated.  Use create_node-msg:motor_overcurrents instead.")
  (motor_overcurrents m))

(cl:ensure-generic-function 'dirt_detector_left-val :lambda-list '(m))
(cl:defmethod dirt_detector_left-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:dirt_detector_left-val is deprecated.  Use create_node-msg:dirt_detector_left instead.")
  (dirt_detector_left m))

(cl:ensure-generic-function 'dirt_detector_right-val :lambda-list '(m))
(cl:defmethod dirt_detector_right-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:dirt_detector_right-val is deprecated.  Use create_node-msg:dirt_detector_right instead.")
  (dirt_detector_right m))

(cl:ensure-generic-function 'remote_opcode-val :lambda-list '(m))
(cl:defmethod remote_opcode-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:remote_opcode-val is deprecated.  Use create_node-msg:remote_opcode instead.")
  (remote_opcode m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:buttons-val is deprecated.  Use create_node-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:distance-val is deprecated.  Use create_node-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:angle-val is deprecated.  Use create_node-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'charging_state-val :lambda-list '(m))
(cl:defmethod charging_state-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charging_state-val is deprecated.  Use create_node-msg:charging_state instead.")
  (charging_state m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:voltage-val is deprecated.  Use create_node-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:current-val is deprecated.  Use create_node-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:temperature-val is deprecated.  Use create_node-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charge-val is deprecated.  Use create_node-msg:charge instead.")
  (charge m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:capacity-val is deprecated.  Use create_node-msg:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'wall_signal-val :lambda-list '(m))
(cl:defmethod wall_signal-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:wall_signal-val is deprecated.  Use create_node-msg:wall_signal instead.")
  (wall_signal m))

(cl:ensure-generic-function 'cliff_left_signal-val :lambda-list '(m))
(cl:defmethod cliff_left_signal-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_left_signal-val is deprecated.  Use create_node-msg:cliff_left_signal instead.")
  (cliff_left_signal m))

(cl:ensure-generic-function 'cliff_front_left_signal-val :lambda-list '(m))
(cl:defmethod cliff_front_left_signal-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_left_signal-val is deprecated.  Use create_node-msg:cliff_front_left_signal instead.")
  (cliff_front_left_signal m))

(cl:ensure-generic-function 'cliff_front_right_signal-val :lambda-list '(m))
(cl:defmethod cliff_front_right_signal-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_front_right_signal-val is deprecated.  Use create_node-msg:cliff_front_right_signal instead.")
  (cliff_front_right_signal m))

(cl:ensure-generic-function 'cliff_right_signal-val :lambda-list '(m))
(cl:defmethod cliff_right_signal-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:cliff_right_signal-val is deprecated.  Use create_node-msg:cliff_right_signal instead.")
  (cliff_right_signal m))

(cl:ensure-generic-function 'user_digital_inputs-val :lambda-list '(m))
(cl:defmethod user_digital_inputs-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:user_digital_inputs-val is deprecated.  Use create_node-msg:user_digital_inputs instead.")
  (user_digital_inputs m))

(cl:ensure-generic-function 'user_analog_input-val :lambda-list '(m))
(cl:defmethod user_analog_input-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:user_analog_input-val is deprecated.  Use create_node-msg:user_analog_input instead.")
  (user_analog_input m))

(cl:ensure-generic-function 'charging_sources_available-val :lambda-list '(m))
(cl:defmethod charging_sources_available-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:charging_sources_available-val is deprecated.  Use create_node-msg:charging_sources_available instead.")
  (charging_sources_available m))

(cl:ensure-generic-function 'oi_mode-val :lambda-list '(m))
(cl:defmethod oi_mode-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:oi_mode-val is deprecated.  Use create_node-msg:oi_mode instead.")
  (oi_mode m))

(cl:ensure-generic-function 'song_number-val :lambda-list '(m))
(cl:defmethod song_number-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:song_number-val is deprecated.  Use create_node-msg:song_number instead.")
  (song_number m))

(cl:ensure-generic-function 'song_playing-val :lambda-list '(m))
(cl:defmethod song_playing-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:song_playing-val is deprecated.  Use create_node-msg:song_playing instead.")
  (song_playing m))

(cl:ensure-generic-function 'number_of_stream_packets-val :lambda-list '(m))
(cl:defmethod number_of_stream_packets-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:number_of_stream_packets-val is deprecated.  Use create_node-msg:number_of_stream_packets instead.")
  (number_of_stream_packets m))

(cl:ensure-generic-function 'requested_velocity-val :lambda-list '(m))
(cl:defmethod requested_velocity-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:requested_velocity-val is deprecated.  Use create_node-msg:requested_velocity instead.")
  (requested_velocity m))

(cl:ensure-generic-function 'requested_radius-val :lambda-list '(m))
(cl:defmethod requested_radius-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:requested_radius-val is deprecated.  Use create_node-msg:requested_radius instead.")
  (requested_radius m))

(cl:ensure-generic-function 'requested_right_velocity-val :lambda-list '(m))
(cl:defmethod requested_right_velocity-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:requested_right_velocity-val is deprecated.  Use create_node-msg:requested_right_velocity instead.")
  (requested_right_velocity m))

(cl:ensure-generic-function 'requested_left_velocity-val :lambda-list '(m))
(cl:defmethod requested_left_velocity-val ((m <RawTurtlebotSensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:requested_left_velocity-val is deprecated.  Use create_node-msg:requested_left_velocity instead.")
  (requested_left_velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RawTurtlebotSensorState>)))
    "Constants for message type '<RawTurtlebotSensorState>"
  '((:OI_MODE_OFF . 0)
    (:OI_MODE_PASSIVE . 1)
    (:OI_MODE_SAFE . 2)
    (:OI_MODE_FULL . 3)
    (:REMOTE_LEFT . 129)
    (:REMOTE_FORWARD . 130)
    (:REMOTE_RIGHT . 131)
    (:REMOTE_SPOT . 132)
    (:REMOTE_MAX . 133)
    (:REMOTE_SMALL . 134)
    (:REMOTE_MEDIUM . 135)
    (:REMOTE_LARGE . 136)
    (:REMOTE_CLEAN . 136)
    (:REMOTE_PAUSE . 137)
    (:REMOTE_POWER . 138)
    (:REMOTE_ARC_LEFT . 139)
    (:REMOTE_ARC_RIGHT . 140)
    (:REMOTE_DRIVE_STOP . 141)
    (:REMOTE_SEND_ALL . 142)
    (:REMOTE_SEEK_DOCK . 143)
    (:REMOTE_RESERVED . 240)
    (:REMOTE_FORCE_FIELD . 242)
    (:REMOTE_GREEN_BUOY . 244)
    (:REMOTE_GREEN_BUOY_AND_FORCE_FIELD . 246)
    (:REMOTE_RED_BUOY . 248)
    (:REMOTE_RED_BUOY_AND_FORCE_FIELD . 250)
    (:REMOTE_RED_BUOY_AND_GREEN_BUOY . 252)
    (:REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD . 254)
    (:REMOTE_NONE . 255)
    (:CHARGING_NOT_CHARGING . 0)
    (:CHARGING_CHARGING_RECOVERY . 1)
    (:CHARGING_CHARGING . 2)
    (:CHARGING_TRICKLE_CHARGING . 3)
    (:CHARGING_WAITING . 4)
    (:CHARGING_CHARGING_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RawTurtlebotSensorState)))
    "Constants for message type 'RawTurtlebotSensorState"
  '((:OI_MODE_OFF . 0)
    (:OI_MODE_PASSIVE . 1)
    (:OI_MODE_SAFE . 2)
    (:OI_MODE_FULL . 3)
    (:REMOTE_LEFT . 129)
    (:REMOTE_FORWARD . 130)
    (:REMOTE_RIGHT . 131)
    (:REMOTE_SPOT . 132)
    (:REMOTE_MAX . 133)
    (:REMOTE_SMALL . 134)
    (:REMOTE_MEDIUM . 135)
    (:REMOTE_LARGE . 136)
    (:REMOTE_CLEAN . 136)
    (:REMOTE_PAUSE . 137)
    (:REMOTE_POWER . 138)
    (:REMOTE_ARC_LEFT . 139)
    (:REMOTE_ARC_RIGHT . 140)
    (:REMOTE_DRIVE_STOP . 141)
    (:REMOTE_SEND_ALL . 142)
    (:REMOTE_SEEK_DOCK . 143)
    (:REMOTE_RESERVED . 240)
    (:REMOTE_FORCE_FIELD . 242)
    (:REMOTE_GREEN_BUOY . 244)
    (:REMOTE_GREEN_BUOY_AND_FORCE_FIELD . 246)
    (:REMOTE_RED_BUOY . 248)
    (:REMOTE_RED_BUOY_AND_FORCE_FIELD . 250)
    (:REMOTE_RED_BUOY_AND_GREEN_BUOY . 252)
    (:REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD . 254)
    (:REMOTE_NONE . 255)
    (:CHARGING_NOT_CHARGING . 0)
    (:CHARGING_CHARGING_RECOVERY . 1)
    (:CHARGING_CHARGING . 2)
    (:CHARGING_TRICKLE_CHARGING . 3)
    (:CHARGING_WAITING . 4)
    (:CHARGING_CHARGING_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawTurtlebotSensorState>) ostream)
  "Serializes a message object of type '<RawTurtlebotSensorState>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wall_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_left_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_left_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_front_left_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_front_left_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_front_right_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_front_right_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_right_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_right_signal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_digital_inputs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_analog_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'user_analog_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_sources_available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'oi_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'song_playing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_stream_packets)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'requested_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requested_radius)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requested_right_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requested_left_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawTurtlebotSensorState>) istream)
  "Deserializes a message object of type '<RawTurtlebotSensorState>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wall_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_left_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_left_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_front_left_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_front_left_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_front_right_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_front_right_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff_right_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cliff_right_signal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_digital_inputs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user_analog_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'user_analog_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_sources_available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'oi_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song_number)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'song_playing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_stream_packets)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_radius) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_right_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_left_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawTurtlebotSensorState>)))
  "Returns string type for a message object of type '<RawTurtlebotSensorState>"
  "create_node/RawTurtlebotSensorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawTurtlebotSensorState)))
  "Returns string type for a message object of type 'RawTurtlebotSensorState"
  "create_node/RawTurtlebotSensorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawTurtlebotSensorState>)))
  "Returns md5sum for a message object of type '<RawTurtlebotSensorState>"
  "103d192c45e953c8bb1c3c046e89e2ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawTurtlebotSensorState)))
  "Returns md5sum for a message object of type 'RawTurtlebotSensorState"
  "103d192c45e953c8bb1c3c046e89e2ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawTurtlebotSensorState>)))
  "Returns full string definition for message of type '<RawTurtlebotSensorState>"
  (cl:format cl:nil "uint8 OI_MODE_OFF = 0~%uint8 OI_MODE_PASSIVE = 1~%uint8 OI_MODE_SAFE = 2~%uint8 OI_MODE_FULL = 3~%~%uint8 REMOTE_LEFT = 129~%uint8 REMOTE_FORWARD = 130 ~%uint8 REMOTE_RIGHT = 131 ~%uint8 REMOTE_SPOT = 132 ~%uint8 REMOTE_MAX = 133 ~%uint8 REMOTE_SMALL = 134 ~%uint8 REMOTE_MEDIUM = 135 ~%uint8 REMOTE_LARGE = 136 ~%uint8 REMOTE_CLEAN = 136 ~%uint8 REMOTE_PAUSE = 137 ~%uint8 REMOTE_POWER = 138 ~%uint8 REMOTE_ARC_LEFT = 139 ~%uint8 REMOTE_ARC_RIGHT = 140 ~%uint8 REMOTE_DRIVE_STOP = 141 ~%# Scheduling remote~%uint8 REMOTE_SEND_ALL = 142 ~%uint8 REMOTE_SEEK_DOCK = 143 ~%# Home base~%uint8 REMOTE_RESERVED = 240 ~%uint8 REMOTE_FORCE_FIELD = 242 ~%uint8 REMOTE_GREEN_BUOY = 244 ~%uint8 REMOTE_GREEN_BUOY_AND_FORCE_FIELD = 246 ~%uint8 REMOTE_RED_BUOY = 248 ~%uint8 REMOTE_RED_BUOY_AND_FORCE_FIELD = 250 ~%uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY = 252 ~%uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD = 254 ~%uint8 REMOTE_NONE = 255~%~%uint8 CHARGING_NOT_CHARGING = 0~%uint8 CHARGING_CHARGING_RECOVERY = 1~%uint8 CHARGING_CHARGING = 2~%uint8 CHARGING_TRICKLE_CHARGING = 3~%uint8 CHARGING_WAITING = 4 ~%uint8 CHARGING_CHARGING_ERROR = 5~%~%Header header~%~%uint8 bumps_wheeldrops~%bool wall~%bool cliff_left~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_right~%bool virtual_wall~%uint8 motor_overcurrents~%uint8 dirt_detector_left  #roomba_only~%uint8 dirt_detector_right #roomba_only~%uint8 remote_opcode~%uint8 buttons~%int16 distance  # mm~%int16 angle # degrees~%uint8 charging_state~%uint16 voltage  # mV~%int16 current  # mA~%int8 temperature  # C~%uint16 charge  # mAh~%uint16 capacity  # mAh~%~%uint16 wall_signal~%uint16 cliff_left_signal~%uint16 cliff_front_left_signal~%uint16 cliff_front_right_signal~%uint16 cliff_right_signal~%uint8 user_digital_inputs~%uint16 user_analog_input~%uint8 charging_sources_available~%uint8 oi_mode~%uint8 song_number~%bool song_playing~%~%uint8 number_of_stream_packets~%int16 requested_velocity  # mm/s~%int16 requested_radius  # mm~%int16 requested_right_velocity  # mm/s~%int16 requested_left_velocity  # mm/s~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawTurtlebotSensorState)))
  "Returns full string definition for message of type 'RawTurtlebotSensorState"
  (cl:format cl:nil "uint8 OI_MODE_OFF = 0~%uint8 OI_MODE_PASSIVE = 1~%uint8 OI_MODE_SAFE = 2~%uint8 OI_MODE_FULL = 3~%~%uint8 REMOTE_LEFT = 129~%uint8 REMOTE_FORWARD = 130 ~%uint8 REMOTE_RIGHT = 131 ~%uint8 REMOTE_SPOT = 132 ~%uint8 REMOTE_MAX = 133 ~%uint8 REMOTE_SMALL = 134 ~%uint8 REMOTE_MEDIUM = 135 ~%uint8 REMOTE_LARGE = 136 ~%uint8 REMOTE_CLEAN = 136 ~%uint8 REMOTE_PAUSE = 137 ~%uint8 REMOTE_POWER = 138 ~%uint8 REMOTE_ARC_LEFT = 139 ~%uint8 REMOTE_ARC_RIGHT = 140 ~%uint8 REMOTE_DRIVE_STOP = 141 ~%# Scheduling remote~%uint8 REMOTE_SEND_ALL = 142 ~%uint8 REMOTE_SEEK_DOCK = 143 ~%# Home base~%uint8 REMOTE_RESERVED = 240 ~%uint8 REMOTE_FORCE_FIELD = 242 ~%uint8 REMOTE_GREEN_BUOY = 244 ~%uint8 REMOTE_GREEN_BUOY_AND_FORCE_FIELD = 246 ~%uint8 REMOTE_RED_BUOY = 248 ~%uint8 REMOTE_RED_BUOY_AND_FORCE_FIELD = 250 ~%uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY = 252 ~%uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD = 254 ~%uint8 REMOTE_NONE = 255~%~%uint8 CHARGING_NOT_CHARGING = 0~%uint8 CHARGING_CHARGING_RECOVERY = 1~%uint8 CHARGING_CHARGING = 2~%uint8 CHARGING_TRICKLE_CHARGING = 3~%uint8 CHARGING_WAITING = 4 ~%uint8 CHARGING_CHARGING_ERROR = 5~%~%Header header~%~%uint8 bumps_wheeldrops~%bool wall~%bool cliff_left~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_right~%bool virtual_wall~%uint8 motor_overcurrents~%uint8 dirt_detector_left  #roomba_only~%uint8 dirt_detector_right #roomba_only~%uint8 remote_opcode~%uint8 buttons~%int16 distance  # mm~%int16 angle # degrees~%uint8 charging_state~%uint16 voltage  # mV~%int16 current  # mA~%int8 temperature  # C~%uint16 charge  # mAh~%uint16 capacity  # mAh~%~%uint16 wall_signal~%uint16 cliff_left_signal~%uint16 cliff_front_left_signal~%uint16 cliff_front_right_signal~%uint16 cliff_right_signal~%uint8 user_digital_inputs~%uint16 user_analog_input~%uint8 charging_sources_available~%uint8 oi_mode~%uint8 song_number~%bool song_playing~%~%uint8 number_of_stream_packets~%int16 requested_velocity  # mm/s~%int16 requested_radius  # mm~%int16 requested_right_velocity  # mm/s~%int16 requested_left_velocity  # mm/s~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawTurtlebotSensorState>))
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
     2
     2
     2
     2
     2
     1
     2
     1
     1
     1
     1
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawTurtlebotSensorState>))
  "Converts a ROS message object to a list"
  (cl:list 'RawTurtlebotSensorState
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
    (cl:cons ':wall_signal (wall_signal msg))
    (cl:cons ':cliff_left_signal (cliff_left_signal msg))
    (cl:cons ':cliff_front_left_signal (cliff_front_left_signal msg))
    (cl:cons ':cliff_front_right_signal (cliff_front_right_signal msg))
    (cl:cons ':cliff_right_signal (cliff_right_signal msg))
    (cl:cons ':user_digital_inputs (user_digital_inputs msg))
    (cl:cons ':user_analog_input (user_analog_input msg))
    (cl:cons ':charging_sources_available (charging_sources_available msg))
    (cl:cons ':oi_mode (oi_mode msg))
    (cl:cons ':song_number (song_number msg))
    (cl:cons ':song_playing (song_playing msg))
    (cl:cons ':number_of_stream_packets (number_of_stream_packets msg))
    (cl:cons ':requested_velocity (requested_velocity msg))
    (cl:cons ':requested_radius (requested_radius msg))
    (cl:cons ':requested_right_velocity (requested_right_velocity msg))
    (cl:cons ':requested_left_velocity (requested_left_velocity msg))
))

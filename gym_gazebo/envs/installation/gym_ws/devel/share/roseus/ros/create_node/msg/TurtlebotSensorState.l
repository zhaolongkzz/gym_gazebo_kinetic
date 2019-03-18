;; Auto-generated. Do not edit!


(when (boundp 'create_node::TurtlebotSensorState)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'TurtlebotSensorState (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE")
  (make-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude TurtlebotSensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OI_MODE_OFF*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*OI_MODE_OFF* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*OI_MODE_OFF* 0)
(intern "*OI_MODE_PASSIVE*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*OI_MODE_PASSIVE* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*OI_MODE_PASSIVE* 1)
(intern "*OI_MODE_SAFE*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*OI_MODE_SAFE* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*OI_MODE_SAFE* 2)
(intern "*OI_MODE_FULL*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*OI_MODE_FULL* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*OI_MODE_FULL* 3)
(intern "*REMOTE_LEFT*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_LEFT* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_LEFT* 129)
(intern "*REMOTE_FORWARD*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_FORWARD* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_FORWARD* 130)
(intern "*REMOTE_RIGHT*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RIGHT* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RIGHT* 131)
(intern "*REMOTE_SPOT*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_SPOT* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_SPOT* 132)
(intern "*REMOTE_MAX*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_MAX* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_MAX* 133)
(intern "*REMOTE_SMALL*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_SMALL* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_SMALL* 134)
(intern "*REMOTE_MEDIUM*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_MEDIUM* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_MEDIUM* 135)
(intern "*REMOTE_LARGE*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_LARGE* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_LARGE* 136)
(intern "*REMOTE_CLEAN*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_CLEAN* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_CLEAN* 136)
(intern "*REMOTE_PAUSE*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_PAUSE* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_PAUSE* 137)
(intern "*REMOTE_POWER*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_POWER* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_POWER* 138)
(intern "*REMOTE_ARC_LEFT*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_ARC_LEFT* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_ARC_LEFT* 139)
(intern "*REMOTE_ARC_RIGHT*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_ARC_RIGHT* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_ARC_RIGHT* 140)
(intern "*REMOTE_DRIVE_STOP*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_DRIVE_STOP* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_DRIVE_STOP* 141)
(intern "*REMOTE_SEND_ALL*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_SEND_ALL* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_SEND_ALL* 142)
(intern "*REMOTE_SEEK_DOCK*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_SEEK_DOCK* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_SEEK_DOCK* 143)
(intern "*REMOTE_RESERVED*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RESERVED* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RESERVED* 240)
(intern "*REMOTE_FORCE_FIELD*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_FORCE_FIELD* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_FORCE_FIELD* 242)
(intern "*REMOTE_GREEN_BUOY*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_GREEN_BUOY* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_GREEN_BUOY* 244)
(intern "*REMOTE_GREEN_BUOY_AND_FORCE_FIELD*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_GREEN_BUOY_AND_FORCE_FIELD* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_GREEN_BUOY_AND_FORCE_FIELD* 246)
(intern "*REMOTE_RED_BUOY*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RED_BUOY* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RED_BUOY* 248)
(intern "*REMOTE_RED_BUOY_AND_FORCE_FIELD*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RED_BUOY_AND_FORCE_FIELD* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RED_BUOY_AND_FORCE_FIELD* 250)
(intern "*REMOTE_RED_BUOY_AND_GREEN_BUOY*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RED_BUOY_AND_GREEN_BUOY* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RED_BUOY_AND_GREEN_BUOY* 252)
(intern "*REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD* 254)
(intern "*REMOTE_NONE*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*REMOTE_NONE* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*REMOTE_NONE* 255)
(intern "*CHARGING_NOT_CHARGING*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_NOT_CHARGING* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_NOT_CHARGING* 0)
(intern "*CHARGING_CHARGING_RECOVERY*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_CHARGING_RECOVERY* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_CHARGING_RECOVERY* 1)
(intern "*CHARGING_CHARGING*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_CHARGING* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_CHARGING* 2)
(intern "*CHARGING_TRICKLE_CHARGING*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_TRICKLE_CHARGING* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_TRICKLE_CHARGING* 3)
(intern "*CHARGING_WAITING*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_WAITING* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_WAITING* 4)
(intern "*CHARGING_CHARGING_ERROR*" (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(shadow '*CHARGING_CHARGING_ERROR* (find-package "CREATE_NODE::TURTLEBOTSENSORSTATE"))
(defconstant create_node::TurtlebotSensorState::*CHARGING_CHARGING_ERROR* 5)
(defclass create_node::TurtlebotSensorState
  :super ros::object
  :slots (_header _bumps_wheeldrops _wall _cliff_left _cliff_front_left _cliff_front_right _cliff_right _virtual_wall _motor_overcurrents _dirt_detector_left _dirt_detector_right _remote_opcode _buttons _distance _angle _charging_state _voltage _current _temperature _charge _capacity _wall_signal _cliff_left_signal _cliff_front_left_signal _cliff_front_right_signal _cliff_right_signal _user_digital_outputs _user_digital_inputs _user_analog_input _charging_sources_available _oi_mode _song_number _song_playing _number_of_stream_packets _requested_velocity _requested_radius _requested_right_velocity _requested_left_velocity ))

(defmethod create_node::TurtlebotSensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumps_wheeldrops __bumps_wheeldrops) 0)
    ((:wall __wall) nil)
    ((:cliff_left __cliff_left) nil)
    ((:cliff_front_left __cliff_front_left) nil)
    ((:cliff_front_right __cliff_front_right) nil)
    ((:cliff_right __cliff_right) nil)
    ((:virtual_wall __virtual_wall) nil)
    ((:motor_overcurrents __motor_overcurrents) 0)
    ((:dirt_detector_left __dirt_detector_left) 0)
    ((:dirt_detector_right __dirt_detector_right) 0)
    ((:remote_opcode __remote_opcode) 0)
    ((:buttons __buttons) 0)
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    ((:charging_state __charging_state) 0)
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:temperature __temperature) 0)
    ((:charge __charge) 0)
    ((:capacity __capacity) 0)
    ((:wall_signal __wall_signal) 0)
    ((:cliff_left_signal __cliff_left_signal) 0)
    ((:cliff_front_left_signal __cliff_front_left_signal) 0)
    ((:cliff_front_right_signal __cliff_front_right_signal) 0)
    ((:cliff_right_signal __cliff_right_signal) 0)
    ((:user_digital_outputs __user_digital_outputs) 0)
    ((:user_digital_inputs __user_digital_inputs) 0)
    ((:user_analog_input __user_analog_input) 0)
    ((:charging_sources_available __charging_sources_available) 0)
    ((:oi_mode __oi_mode) 0)
    ((:song_number __song_number) 0)
    ((:song_playing __song_playing) nil)
    ((:number_of_stream_packets __number_of_stream_packets) 0)
    ((:requested_velocity __requested_velocity) 0)
    ((:requested_radius __requested_radius) 0)
    ((:requested_right_velocity __requested_right_velocity) 0)
    ((:requested_left_velocity __requested_left_velocity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumps_wheeldrops (round __bumps_wheeldrops))
   (setq _wall __wall)
   (setq _cliff_left __cliff_left)
   (setq _cliff_front_left __cliff_front_left)
   (setq _cliff_front_right __cliff_front_right)
   (setq _cliff_right __cliff_right)
   (setq _virtual_wall __virtual_wall)
   (setq _motor_overcurrents (round __motor_overcurrents))
   (setq _dirt_detector_left (round __dirt_detector_left))
   (setq _dirt_detector_right (round __dirt_detector_right))
   (setq _remote_opcode (round __remote_opcode))
   (setq _buttons (round __buttons))
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   (setq _charging_state (round __charging_state))
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _temperature (round __temperature))
   (setq _charge (round __charge))
   (setq _capacity (round __capacity))
   (setq _wall_signal (round __wall_signal))
   (setq _cliff_left_signal (round __cliff_left_signal))
   (setq _cliff_front_left_signal (round __cliff_front_left_signal))
   (setq _cliff_front_right_signal (round __cliff_front_right_signal))
   (setq _cliff_right_signal (round __cliff_right_signal))
   (setq _user_digital_outputs (round __user_digital_outputs))
   (setq _user_digital_inputs (round __user_digital_inputs))
   (setq _user_analog_input (round __user_analog_input))
   (setq _charging_sources_available (round __charging_sources_available))
   (setq _oi_mode (round __oi_mode))
   (setq _song_number (round __song_number))
   (setq _song_playing __song_playing)
   (setq _number_of_stream_packets (round __number_of_stream_packets))
   (setq _requested_velocity (round __requested_velocity))
   (setq _requested_radius (round __requested_radius))
   (setq _requested_right_velocity (round __requested_right_velocity))
   (setq _requested_left_velocity (round __requested_left_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumps_wheeldrops
   (&optional __bumps_wheeldrops)
   (if __bumps_wheeldrops (setq _bumps_wheeldrops __bumps_wheeldrops)) _bumps_wheeldrops)
  (:wall
   (&optional __wall)
   (if __wall (setq _wall __wall)) _wall)
  (:cliff_left
   (&optional __cliff_left)
   (if __cliff_left (setq _cliff_left __cliff_left)) _cliff_left)
  (:cliff_front_left
   (&optional __cliff_front_left)
   (if __cliff_front_left (setq _cliff_front_left __cliff_front_left)) _cliff_front_left)
  (:cliff_front_right
   (&optional __cliff_front_right)
   (if __cliff_front_right (setq _cliff_front_right __cliff_front_right)) _cliff_front_right)
  (:cliff_right
   (&optional __cliff_right)
   (if __cliff_right (setq _cliff_right __cliff_right)) _cliff_right)
  (:virtual_wall
   (&optional __virtual_wall)
   (if __virtual_wall (setq _virtual_wall __virtual_wall)) _virtual_wall)
  (:motor_overcurrents
   (&optional __motor_overcurrents)
   (if __motor_overcurrents (setq _motor_overcurrents __motor_overcurrents)) _motor_overcurrents)
  (:dirt_detector_left
   (&optional __dirt_detector_left)
   (if __dirt_detector_left (setq _dirt_detector_left __dirt_detector_left)) _dirt_detector_left)
  (:dirt_detector_right
   (&optional __dirt_detector_right)
   (if __dirt_detector_right (setq _dirt_detector_right __dirt_detector_right)) _dirt_detector_right)
  (:remote_opcode
   (&optional __remote_opcode)
   (if __remote_opcode (setq _remote_opcode __remote_opcode)) _remote_opcode)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:charging_state
   (&optional __charging_state)
   (if __charging_state (setq _charging_state __charging_state)) _charging_state)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:wall_signal
   (&optional __wall_signal)
   (if __wall_signal (setq _wall_signal __wall_signal)) _wall_signal)
  (:cliff_left_signal
   (&optional __cliff_left_signal)
   (if __cliff_left_signal (setq _cliff_left_signal __cliff_left_signal)) _cliff_left_signal)
  (:cliff_front_left_signal
   (&optional __cliff_front_left_signal)
   (if __cliff_front_left_signal (setq _cliff_front_left_signal __cliff_front_left_signal)) _cliff_front_left_signal)
  (:cliff_front_right_signal
   (&optional __cliff_front_right_signal)
   (if __cliff_front_right_signal (setq _cliff_front_right_signal __cliff_front_right_signal)) _cliff_front_right_signal)
  (:cliff_right_signal
   (&optional __cliff_right_signal)
   (if __cliff_right_signal (setq _cliff_right_signal __cliff_right_signal)) _cliff_right_signal)
  (:user_digital_outputs
   (&optional __user_digital_outputs)
   (if __user_digital_outputs (setq _user_digital_outputs __user_digital_outputs)) _user_digital_outputs)
  (:user_digital_inputs
   (&optional __user_digital_inputs)
   (if __user_digital_inputs (setq _user_digital_inputs __user_digital_inputs)) _user_digital_inputs)
  (:user_analog_input
   (&optional __user_analog_input)
   (if __user_analog_input (setq _user_analog_input __user_analog_input)) _user_analog_input)
  (:charging_sources_available
   (&optional __charging_sources_available)
   (if __charging_sources_available (setq _charging_sources_available __charging_sources_available)) _charging_sources_available)
  (:oi_mode
   (&optional __oi_mode)
   (if __oi_mode (setq _oi_mode __oi_mode)) _oi_mode)
  (:song_number
   (&optional __song_number)
   (if __song_number (setq _song_number __song_number)) _song_number)
  (:song_playing
   (&optional __song_playing)
   (if __song_playing (setq _song_playing __song_playing)) _song_playing)
  (:number_of_stream_packets
   (&optional __number_of_stream_packets)
   (if __number_of_stream_packets (setq _number_of_stream_packets __number_of_stream_packets)) _number_of_stream_packets)
  (:requested_velocity
   (&optional __requested_velocity)
   (if __requested_velocity (setq _requested_velocity __requested_velocity)) _requested_velocity)
  (:requested_radius
   (&optional __requested_radius)
   (if __requested_radius (setq _requested_radius __requested_radius)) _requested_radius)
  (:requested_right_velocity
   (&optional __requested_right_velocity)
   (if __requested_right_velocity (setq _requested_right_velocity __requested_right_velocity)) _requested_right_velocity)
  (:requested_left_velocity
   (&optional __requested_left_velocity)
   (if __requested_left_velocity (setq _requested_left_velocity __requested_left_velocity)) _requested_left_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _bumps_wheeldrops
    1
    ;; bool _wall
    1
    ;; bool _cliff_left
    1
    ;; bool _cliff_front_left
    1
    ;; bool _cliff_front_right
    1
    ;; bool _cliff_right
    1
    ;; bool _virtual_wall
    1
    ;; uint8 _motor_overcurrents
    1
    ;; uint8 _dirt_detector_left
    1
    ;; uint8 _dirt_detector_right
    1
    ;; uint8 _remote_opcode
    1
    ;; uint8 _buttons
    1
    ;; float64 _distance
    8
    ;; float64 _angle
    8
    ;; uint8 _charging_state
    1
    ;; uint16 _voltage
    2
    ;; int16 _current
    2
    ;; int8 _temperature
    1
    ;; uint16 _charge
    2
    ;; uint16 _capacity
    2
    ;; uint16 _wall_signal
    2
    ;; uint16 _cliff_left_signal
    2
    ;; uint16 _cliff_front_left_signal
    2
    ;; uint16 _cliff_front_right_signal
    2
    ;; uint16 _cliff_right_signal
    2
    ;; uint8 _user_digital_outputs
    1
    ;; uint8 _user_digital_inputs
    1
    ;; uint16 _user_analog_input
    2
    ;; uint8 _charging_sources_available
    1
    ;; uint8 _oi_mode
    1
    ;; uint8 _song_number
    1
    ;; bool _song_playing
    1
    ;; uint8 _number_of_stream_packets
    1
    ;; int32 _requested_velocity
    4
    ;; int32 _requested_radius
    4
    ;; int32 _requested_right_velocity
    4
    ;; int32 _requested_left_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _bumps_wheeldrops
       (write-byte _bumps_wheeldrops s)
     ;; bool _wall
       (if _wall (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_left
       (if _cliff_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_front_left
       (if _cliff_front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_front_right
       (if _cliff_front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_right
       (if _cliff_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _virtual_wall
       (if _virtual_wall (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _motor_overcurrents
       (write-byte _motor_overcurrents s)
     ;; uint8 _dirt_detector_left
       (write-byte _dirt_detector_left s)
     ;; uint8 _dirt_detector_right
       (write-byte _dirt_detector_right s)
     ;; uint8 _remote_opcode
       (write-byte _remote_opcode s)
     ;; uint8 _buttons
       (write-byte _buttons s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _charging_state
       (write-byte _charging_state s)
     ;; uint16 _voltage
       (write-word _voltage s)
     ;; int16 _current
       (write-word _current s)
     ;; int8 _temperature
       (write-byte _temperature s)
     ;; uint16 _charge
       (write-word _charge s)
     ;; uint16 _capacity
       (write-word _capacity s)
     ;; uint16 _wall_signal
       (write-word _wall_signal s)
     ;; uint16 _cliff_left_signal
       (write-word _cliff_left_signal s)
     ;; uint16 _cliff_front_left_signal
       (write-word _cliff_front_left_signal s)
     ;; uint16 _cliff_front_right_signal
       (write-word _cliff_front_right_signal s)
     ;; uint16 _cliff_right_signal
       (write-word _cliff_right_signal s)
     ;; uint8 _user_digital_outputs
       (write-byte _user_digital_outputs s)
     ;; uint8 _user_digital_inputs
       (write-byte _user_digital_inputs s)
     ;; uint16 _user_analog_input
       (write-word _user_analog_input s)
     ;; uint8 _charging_sources_available
       (write-byte _charging_sources_available s)
     ;; uint8 _oi_mode
       (write-byte _oi_mode s)
     ;; uint8 _song_number
       (write-byte _song_number s)
     ;; bool _song_playing
       (if _song_playing (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _number_of_stream_packets
       (write-byte _number_of_stream_packets s)
     ;; int32 _requested_velocity
       (write-long _requested_velocity s)
     ;; int32 _requested_radius
       (write-long _requested_radius s)
     ;; int32 _requested_right_velocity
       (write-long _requested_right_velocity s)
     ;; int32 _requested_left_velocity
       (write-long _requested_left_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _bumps_wheeldrops
     (setq _bumps_wheeldrops (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _wall
     (setq _wall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_left
     (setq _cliff_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_front_left
     (setq _cliff_front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_front_right
     (setq _cliff_front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_right
     (setq _cliff_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _virtual_wall
     (setq _virtual_wall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _motor_overcurrents
     (setq _motor_overcurrents (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dirt_detector_left
     (setq _dirt_detector_left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dirt_detector_right
     (setq _dirt_detector_right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _remote_opcode
     (setq _remote_opcode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _buttons
     (setq _buttons (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _charging_state
     (setq _charging_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _voltage
     (setq _voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temperature 127) (setq _temperature (- _temperature 256)))
   ;; uint16 _charge
     (setq _charge (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _capacity
     (setq _capacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wall_signal
     (setq _wall_signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cliff_left_signal
     (setq _cliff_left_signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cliff_front_left_signal
     (setq _cliff_front_left_signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cliff_front_right_signal
     (setq _cliff_front_right_signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cliff_right_signal
     (setq _cliff_right_signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _user_digital_outputs
     (setq _user_digital_outputs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _user_digital_inputs
     (setq _user_digital_inputs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _user_analog_input
     (setq _user_analog_input (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _charging_sources_available
     (setq _charging_sources_available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _oi_mode
     (setq _oi_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _song_number
     (setq _song_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _song_playing
     (setq _song_playing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _number_of_stream_packets
     (setq _number_of_stream_packets (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _requested_velocity
     (setq _requested_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _requested_radius
     (setq _requested_radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _requested_right_velocity
     (setq _requested_right_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _requested_left_velocity
     (setq _requested_left_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get create_node::TurtlebotSensorState :md5sum-) "d8f8ec7fa031fc9cc88e8319cd08a785")
(setf (get create_node::TurtlebotSensorState :datatype-) "create_node/TurtlebotSensorState")
(setf (get create_node::TurtlebotSensorState :definition-)
      "uint8 OI_MODE_OFF = 0
uint8 OI_MODE_PASSIVE = 1
uint8 OI_MODE_SAFE = 2
uint8 OI_MODE_FULL = 3

uint8 REMOTE_LEFT = 129
uint8 REMOTE_FORWARD = 130 
uint8 REMOTE_RIGHT = 131 
uint8 REMOTE_SPOT = 132 
uint8 REMOTE_MAX = 133 
uint8 REMOTE_SMALL = 134 
uint8 REMOTE_MEDIUM = 135 
uint8 REMOTE_LARGE = 136 
uint8 REMOTE_CLEAN = 136 
uint8 REMOTE_PAUSE = 137 
uint8 REMOTE_POWER = 138 
uint8 REMOTE_ARC_LEFT = 139 
uint8 REMOTE_ARC_RIGHT = 140 
uint8 REMOTE_DRIVE_STOP = 141 
# Scheduling remote
uint8 REMOTE_SEND_ALL = 142 
uint8 REMOTE_SEEK_DOCK = 143 
# Home base
uint8 REMOTE_RESERVED = 240 
uint8 REMOTE_FORCE_FIELD = 242 
uint8 REMOTE_GREEN_BUOY = 244 
uint8 REMOTE_GREEN_BUOY_AND_FORCE_FIELD = 246 
uint8 REMOTE_RED_BUOY = 248 
uint8 REMOTE_RED_BUOY_AND_FORCE_FIELD = 250 
uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY = 252 
uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD = 254 
uint8 REMOTE_NONE = 255

uint8 CHARGING_NOT_CHARGING = 0
uint8 CHARGING_CHARGING_RECOVERY = 1
uint8 CHARGING_CHARGING = 2
uint8 CHARGING_TRICKLE_CHARGING = 3
uint8 CHARGING_WAITING = 4 
uint8 CHARGING_CHARGING_ERROR = 5

Header header

uint8 bumps_wheeldrops
bool wall
bool cliff_left
bool cliff_front_left
bool cliff_front_right
bool cliff_right
bool virtual_wall
uint8 motor_overcurrents
uint8 dirt_detector_left  #roomba_only
uint8 dirt_detector_right #roomba_only
uint8 remote_opcode
uint8 buttons
float64 distance  # m
float64 angle #radians
uint8 charging_state
uint16 voltage  # mV
int16 current  # mA
int8 temperature  # C
uint16 charge  # mAh
uint16 capacity  # mAh

uint16 wall_signal
uint16 cliff_left_signal
uint16 cliff_front_left_signal
uint16 cliff_front_right_signal
uint16 cliff_right_signal
uint8 user_digital_outputs
uint8 user_digital_inputs
uint16 user_analog_input
uint8 charging_sources_available
uint8 oi_mode
uint8 song_number
bool song_playing

uint8 number_of_stream_packets
int32 requested_velocity  # m/s
int32 requested_radius  # m
int32 requested_right_velocity  # m/s
int32 requested_left_velocity  # m/s


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :create_node/TurtlebotSensorState "d8f8ec7fa031fc9cc88e8319cd08a785")



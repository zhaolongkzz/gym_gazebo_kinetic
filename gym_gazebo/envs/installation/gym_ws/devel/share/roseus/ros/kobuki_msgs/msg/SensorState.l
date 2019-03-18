;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::SensorState)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'SensorState (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::SENSORSTATE")
  (make-package "KOBUKI_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BUMPER_RIGHT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUMPER_RIGHT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUMPER_RIGHT* 1)
(intern "*BUMPER_CENTRE*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUMPER_CENTRE* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUMPER_CENTRE* 2)
(intern "*BUMPER_LEFT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUMPER_LEFT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUMPER_LEFT* 4)
(intern "*WHEEL_DROP_RIGHT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*WHEEL_DROP_RIGHT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*WHEEL_DROP_RIGHT* 1)
(intern "*WHEEL_DROP_LEFT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*WHEEL_DROP_LEFT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*WHEEL_DROP_LEFT* 2)
(intern "*CLIFF_RIGHT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*CLIFF_RIGHT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*CLIFF_RIGHT* 1)
(intern "*CLIFF_CENTRE*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*CLIFF_CENTRE* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*CLIFF_CENTRE* 2)
(intern "*CLIFF_LEFT*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*CLIFF_LEFT* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*CLIFF_LEFT* 4)
(intern "*BUTTON0*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUTTON0* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUTTON0* 1)
(intern "*BUTTON1*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUTTON1* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUTTON1* 2)
(intern "*BUTTON2*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*BUTTON2* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*BUTTON2* 4)
(intern "*DISCHARGING*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DISCHARGING* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DISCHARGING* 0)
(intern "*DOCKING_CHARGED*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DOCKING_CHARGED* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DOCKING_CHARGED* 2)
(intern "*DOCKING_CHARGING*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DOCKING_CHARGING* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DOCKING_CHARGING* 6)
(intern "*ADAPTER_CHARGED*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*ADAPTER_CHARGED* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*ADAPTER_CHARGED* 18)
(intern "*ADAPTER_CHARGING*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*ADAPTER_CHARGING* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*ADAPTER_CHARGING* 22)
(intern "*OVER_CURRENT_LEFT_WHEEL*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*OVER_CURRENT_LEFT_WHEEL* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*OVER_CURRENT_LEFT_WHEEL* 1)
(intern "*OVER_CURRENT_RIGHT_WHEEL*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*OVER_CURRENT_RIGHT_WHEEL* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*OVER_CURRENT_RIGHT_WHEEL* 2)
(intern "*OVER_CURRENT_BOTH_WHEELS*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*OVER_CURRENT_BOTH_WHEELS* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*OVER_CURRENT_BOTH_WHEELS* 3)
(intern "*DIGITAL_INPUT0*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DIGITAL_INPUT0* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DIGITAL_INPUT0* 1)
(intern "*DIGITAL_INPUT1*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DIGITAL_INPUT1* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DIGITAL_INPUT1* 2)
(intern "*DIGITAL_INPUT2*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DIGITAL_INPUT2* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DIGITAL_INPUT2* 4)
(intern "*DIGITAL_INPUT3*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DIGITAL_INPUT3* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DIGITAL_INPUT3* 8)
(intern "*DB25_TEST_BOARD_CONNECTED*" (find-package "KOBUKI_MSGS::SENSORSTATE"))
(shadow '*DB25_TEST_BOARD_CONNECTED* (find-package "KOBUKI_MSGS::SENSORSTATE"))
(defconstant kobuki_msgs::SensorState::*DB25_TEST_BOARD_CONNECTED* 64)
(defclass kobuki_msgs::SensorState
  :super ros::object
  :slots (_header _time_stamp _bumper _wheel_drop _cliff _left_encoder _right_encoder _left_pwm _right_pwm _buttons _charger _battery _bottom _current _over_current _digital_input _analog_input ))

(defmethod kobuki_msgs::SensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_stamp __time_stamp) 0)
    ((:bumper __bumper) 0)
    ((:wheel_drop __wheel_drop) 0)
    ((:cliff __cliff) 0)
    ((:left_encoder __left_encoder) 0)
    ((:right_encoder __right_encoder) 0)
    ((:left_pwm __left_pwm) 0)
    ((:right_pwm __right_pwm) 0)
    ((:buttons __buttons) 0)
    ((:charger __charger) 0)
    ((:battery __battery) 0)
    ((:bottom __bottom) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current __current) (make-array 0 :initial-element 0 :element-type :char))
    ((:over_current __over_current) 0)
    ((:digital_input __digital_input) 0)
    ((:analog_input __analog_input) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_stamp (round __time_stamp))
   (setq _bumper (round __bumper))
   (setq _wheel_drop (round __wheel_drop))
   (setq _cliff (round __cliff))
   (setq _left_encoder (round __left_encoder))
   (setq _right_encoder (round __right_encoder))
   (setq _left_pwm (round __left_pwm))
   (setq _right_pwm (round __right_pwm))
   (setq _buttons (round __buttons))
   (setq _charger (round __charger))
   (setq _battery (round __battery))
   (setq _bottom __bottom)
   (setq _current __current)
   (setq _over_current (round __over_current))
   (setq _digital_input (round __digital_input))
   (setq _analog_input __analog_input)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:wheel_drop
   (&optional __wheel_drop)
   (if __wheel_drop (setq _wheel_drop __wheel_drop)) _wheel_drop)
  (:cliff
   (&optional __cliff)
   (if __cliff (setq _cliff __cliff)) _cliff)
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:left_pwm
   (&optional __left_pwm)
   (if __left_pwm (setq _left_pwm __left_pwm)) _left_pwm)
  (:right_pwm
   (&optional __right_pwm)
   (if __right_pwm (setq _right_pwm __right_pwm)) _right_pwm)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:charger
   (&optional __charger)
   (if __charger (setq _charger __charger)) _charger)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:over_current
   (&optional __over_current)
   (if __over_current (setq _over_current __over_current)) _over_current)
  (:digital_input
   (&optional __digital_input)
   (if __digital_input (setq _digital_input __digital_input)) _digital_input)
  (:analog_input
   (&optional __analog_input)
   (if __analog_input (setq _analog_input __analog_input)) _analog_input)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _time_stamp
    2
    ;; uint8 _bumper
    1
    ;; uint8 _wheel_drop
    1
    ;; uint8 _cliff
    1
    ;; uint16 _left_encoder
    2
    ;; uint16 _right_encoder
    2
    ;; int8 _left_pwm
    1
    ;; int8 _right_pwm
    1
    ;; uint8 _buttons
    1
    ;; uint8 _charger
    1
    ;; uint8 _battery
    1
    ;; uint16[] _bottom
    (* 2    (length _bottom)) 4
    ;; uint8[] _current
    (* 1    (length _current)) 4
    ;; uint8 _over_current
    1
    ;; uint16 _digital_input
    2
    ;; uint16[] _analog_input
    (* 2    (length _analog_input)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _time_stamp
       (write-word _time_stamp s)
     ;; uint8 _bumper
       (write-byte _bumper s)
     ;; uint8 _wheel_drop
       (write-byte _wheel_drop s)
     ;; uint8 _cliff
       (write-byte _cliff s)
     ;; uint16 _left_encoder
       (write-word _left_encoder s)
     ;; uint16 _right_encoder
       (write-word _right_encoder s)
     ;; int8 _left_pwm
       (write-byte _left_pwm s)
     ;; int8 _right_pwm
       (write-byte _right_pwm s)
     ;; uint8 _buttons
       (write-byte _buttons s)
     ;; uint8 _charger
       (write-byte _charger s)
     ;; uint8 _battery
       (write-byte _battery s)
     ;; uint16[] _bottom
     (write-long (length _bottom) s)
     (dotimes (i (length _bottom))
       (write-word (elt _bottom i) s)
       )
     ;; uint8[] _current
     (write-long (length _current) s)
     (princ _current s)
     ;; uint8 _over_current
       (write-byte _over_current s)
     ;; uint16 _digital_input
       (write-word _digital_input s)
     ;; uint16[] _analog_input
     (write-long (length _analog_input) s)
     (dotimes (i (length _analog_input))
       (write-word (elt _analog_input i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheel_drop
     (setq _wheel_drop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cliff
     (setq _cliff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _left_pwm
     (setq _left_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _left_pwm 127) (setq _left_pwm (- _left_pwm 256)))
   ;; int8 _right_pwm
     (setq _right_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _right_pwm 127) (setq _right_pwm (- _right_pwm 256)))
   ;; uint8 _buttons
     (setq _buttons (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _charger
     (setq _charger (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _battery
     (setq _battery (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[] _bottom
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _bottom i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint8[] _current
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _current (make-array n :element-type :char))
     (replace _current buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _over_current
     (setq _over_current (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _digital_input
     (setq _digital_input (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _analog_input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_input (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _analog_input i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get kobuki_msgs::SensorState :md5sum-) "430a4bfd78449c8740bfef32b26613a6")
(setf (get kobuki_msgs::SensorState :datatype-) "kobuki_msgs/SensorState")
(setf (get kobuki_msgs::SensorState :definition-)
      "# Kobuki Sensor Data Messages
#
# For more direct simple interactions (buttons, leds, gyro, motor velocity
# etc) use the other topics. This provides detailed information about the
# entire state package that is transmitted at 50Hz from the robot.
#


###### CONSTANTS ######
# Bumper states (states are combined, when multiple bumpers are pressed)
uint8 BUMPER_RIGHT  = 1
uint8 BUMPER_CENTRE = 2
uint8 BUMPER_LEFT   = 4

# Wheel drop sensor states (states are combined, when both wheel drop sensors are triggered)
uint8 WHEEL_DROP_RIGHT = 1
uint8 WHEEL_DROP_LEFT  = 2

# Cliff sensor states (states are combined, when multiple cliff sensors are triggered)
uint8 CLIFF_RIGHT  = 1
uint8 CLIFF_CENTRE = 2
uint8 CLIFF_LEFT   = 4

# Button states (only one button can be triggered at a time)
uint8 BUTTON0 = 1
uint8 BUTTON1 = 2
uint8 BUTTON2 = 4

# Charger state is a combination of charging device (adapter, docking station)
# and state (charging, charged, discharging):
uint8 DISCHARGING      = 0
uint8 DOCKING_CHARGED  = 2
uint8 DOCKING_CHARGING = 6
uint8 ADAPTER_CHARGED  = 18
uint8 ADAPTER_CHARGING = 22

# Over current states
uint8 OVER_CURRENT_LEFT_WHEEL  = 1
uint8 OVER_CURRENT_RIGHT_WHEEL = 2
uint8 OVER_CURRENT_BOTH_WHEELS = 3

# Digital input states (states are combined, when multiple inputs are set at the same time)
# When connecting Yujin's test board, it acts as pull-up what inverts the behaviour:
# No input: 79, all inputs set (e.g. buttons pressed): 64
uint8 DIGITAL_INPUT0 = 1
uint8 DIGITAL_INPUT1 = 2
uint8 DIGITAL_INPUT2 = 4
uint8 DIGITAL_INPUT3 = 8
uint8 DB25_TEST_BOARD_CONNECTED = 64

###### MESSAGE ######

Header header

###################
# Core Packet
###################
uint16 time_stamp      # milliseconds starting when turning on Kobuki (max. 65536, then starts from 0 again)
uint8  bumper          # see bumper states
uint8  wheel_drop      # see wheel drop sensor states
uint8  cliff           # see cliff sensor states
uint16 left_encoder    # accumulated ticks left wheel starting with turning on Kobuki (max. 65535)
uint16 right_encoder   # accumulated ticks right wheel starting with turning on Kobuki (max. 65535)
int8   left_pwm        # % of applied maximum voltage left wheel: -100 (max. voltage backward) to +100 (max. voltage forward)
int8   right_pwm       # % of applied maximum voltage right wheel: -100 (max. voltage backward) to +100 (max. voltage forward)
uint8  buttons         # see button states
uint8  charger         # see charger states
uint8  battery         # battery voltage in 0.1V (ex. 16.1V -> 161)

###################
# Cliff Packet
###################
uint16[] bottom        # ADC output of the right, centre, left cliff PSD sensor (0 - 4095, distance measure is non-linear)

###################
# Current Packet
###################
uint8[] current        # motor current for the left and right motor in 10mA (ex. 12 -> 120mA)
uint8   over_current   # see over current states

###################
# Input Packet
###################
uint16   digital_input # see digital input states; will show garbage when nothing is connected
uint16[] analog_input  # ADC values for the 4 analog inputs; 0 - 4095: 0.0 - 3.3V; will show garbage when nothing is connected

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



(provide :kobuki_msgs/SensorState "430a4bfd78449c8740bfef32b26613a6")



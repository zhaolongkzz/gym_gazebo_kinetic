; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude SensorState.msg.html

(cl:defclass <SensorState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:fixnum
    :initform 0)
   (bumper
    :reader bumper
    :initarg :bumper
    :type cl:fixnum
    :initform 0)
   (wheel_drop
    :reader wheel_drop
    :initarg :wheel_drop
    :type cl:fixnum
    :initform 0)
   (cliff
    :reader cliff
    :initarg :cliff
    :type cl:fixnum
    :initform 0)
   (left_encoder
    :reader left_encoder
    :initarg :left_encoder
    :type cl:fixnum
    :initform 0)
   (right_encoder
    :reader right_encoder
    :initarg :right_encoder
    :type cl:fixnum
    :initform 0)
   (left_pwm
    :reader left_pwm
    :initarg :left_pwm
    :type cl:fixnum
    :initform 0)
   (right_pwm
    :reader right_pwm
    :initarg :right_pwm
    :type cl:fixnum
    :initform 0)
   (buttons
    :reader buttons
    :initarg :buttons
    :type cl:fixnum
    :initform 0)
   (charger
    :reader charger
    :initarg :charger
    :type cl:fixnum
    :initform 0)
   (battery
    :reader battery
    :initarg :battery
    :type cl:fixnum
    :initform 0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (current
    :reader current
    :initarg :current
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (over_current
    :reader over_current
    :initarg :over_current
    :type cl:fixnum
    :initform 0)
   (digital_input
    :reader digital_input
    :initarg :digital_input
    :type cl:fixnum
    :initform 0)
   (analog_input
    :reader analog_input
    :initarg :analog_input
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SensorState (<SensorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<SensorState> is deprecated: use kobuki_msgs-msg:SensorState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:header-val is deprecated.  Use kobuki_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:time_stamp-val is deprecated.  Use kobuki_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:bumper-val is deprecated.  Use kobuki_msgs-msg:bumper instead.")
  (bumper m))

(cl:ensure-generic-function 'wheel_drop-val :lambda-list '(m))
(cl:defmethod wheel_drop-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:wheel_drop-val is deprecated.  Use kobuki_msgs-msg:wheel_drop instead.")
  (wheel_drop m))

(cl:ensure-generic-function 'cliff-val :lambda-list '(m))
(cl:defmethod cliff-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:cliff-val is deprecated.  Use kobuki_msgs-msg:cliff instead.")
  (cliff m))

(cl:ensure-generic-function 'left_encoder-val :lambda-list '(m))
(cl:defmethod left_encoder-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:left_encoder-val is deprecated.  Use kobuki_msgs-msg:left_encoder instead.")
  (left_encoder m))

(cl:ensure-generic-function 'right_encoder-val :lambda-list '(m))
(cl:defmethod right_encoder-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:right_encoder-val is deprecated.  Use kobuki_msgs-msg:right_encoder instead.")
  (right_encoder m))

(cl:ensure-generic-function 'left_pwm-val :lambda-list '(m))
(cl:defmethod left_pwm-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:left_pwm-val is deprecated.  Use kobuki_msgs-msg:left_pwm instead.")
  (left_pwm m))

(cl:ensure-generic-function 'right_pwm-val :lambda-list '(m))
(cl:defmethod right_pwm-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:right_pwm-val is deprecated.  Use kobuki_msgs-msg:right_pwm instead.")
  (right_pwm m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:buttons-val is deprecated.  Use kobuki_msgs-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'charger-val :lambda-list '(m))
(cl:defmethod charger-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:charger-val is deprecated.  Use kobuki_msgs-msg:charger instead.")
  (charger m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:battery-val is deprecated.  Use kobuki_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:bottom-val is deprecated.  Use kobuki_msgs-msg:bottom instead.")
  (bottom m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:current-val is deprecated.  Use kobuki_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'over_current-val :lambda-list '(m))
(cl:defmethod over_current-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:over_current-val is deprecated.  Use kobuki_msgs-msg:over_current instead.")
  (over_current m))

(cl:ensure-generic-function 'digital_input-val :lambda-list '(m))
(cl:defmethod digital_input-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:digital_input-val is deprecated.  Use kobuki_msgs-msg:digital_input instead.")
  (digital_input m))

(cl:ensure-generic-function 'analog_input-val :lambda-list '(m))
(cl:defmethod analog_input-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:analog_input-val is deprecated.  Use kobuki_msgs-msg:analog_input instead.")
  (analog_input m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SensorState>)))
    "Constants for message type '<SensorState>"
  '((:BUMPER_RIGHT . 1)
    (:BUMPER_CENTRE . 2)
    (:BUMPER_LEFT . 4)
    (:WHEEL_DROP_RIGHT . 1)
    (:WHEEL_DROP_LEFT . 2)
    (:CLIFF_RIGHT . 1)
    (:CLIFF_CENTRE . 2)
    (:CLIFF_LEFT . 4)
    (:BUTTON0 . 1)
    (:BUTTON1 . 2)
    (:BUTTON2 . 4)
    (:DISCHARGING . 0)
    (:DOCKING_CHARGED . 2)
    (:DOCKING_CHARGING . 6)
    (:ADAPTER_CHARGED . 18)
    (:ADAPTER_CHARGING . 22)
    (:OVER_CURRENT_LEFT_WHEEL . 1)
    (:OVER_CURRENT_RIGHT_WHEEL . 2)
    (:OVER_CURRENT_BOTH_WHEELS . 3)
    (:DIGITAL_INPUT0 . 1)
    (:DIGITAL_INPUT1 . 2)
    (:DIGITAL_INPUT2 . 4)
    (:DIGITAL_INPUT3 . 8)
    (:DB25_TEST_BOARD_CONNECTED . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SensorState)))
    "Constants for message type 'SensorState"
  '((:BUMPER_RIGHT . 1)
    (:BUMPER_CENTRE . 2)
    (:BUMPER_LEFT . 4)
    (:WHEEL_DROP_RIGHT . 1)
    (:WHEEL_DROP_LEFT . 2)
    (:CLIFF_RIGHT . 1)
    (:CLIFF_CENTRE . 2)
    (:CLIFF_LEFT . 4)
    (:BUTTON0 . 1)
    (:BUTTON1 . 2)
    (:BUTTON2 . 4)
    (:DISCHARGING . 0)
    (:DOCKING_CHARGED . 2)
    (:DOCKING_CHARGING . 6)
    (:ADAPTER_CHARGED . 18)
    (:ADAPTER_CHARGING . 22)
    (:OVER_CURRENT_LEFT_WHEEL . 1)
    (:OVER_CURRENT_RIGHT_WHEEL . 2)
    (:OVER_CURRENT_BOTH_WHEELS . 3)
    (:DIGITAL_INPUT0 . 1)
    (:DIGITAL_INPUT1 . 2)
    (:DIGITAL_INPUT2 . 4)
    (:DIGITAL_INPUT3 . 8)
    (:DB25_TEST_BOARD_CONNECTED . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorState>) ostream)
  "Serializes a message object of type '<SensorState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumper)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_drop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_encoder)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_encoder)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_encoder)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_encoder)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'bottom))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'current))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_input)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'analog_input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorState>) istream)
  "Deserializes a message object of type '<SensorState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bumper)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_drop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cliff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_encoder)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_encoder)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_encoder)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_encoder)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_pwm) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_pwm) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bottom) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bottom)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digital_input)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorState>)))
  "Returns string type for a message object of type '<SensorState>"
  "kobuki_msgs/SensorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorState)))
  "Returns string type for a message object of type 'SensorState"
  "kobuki_msgs/SensorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorState>)))
  "Returns md5sum for a message object of type '<SensorState>"
  "430a4bfd78449c8740bfef32b26613a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorState)))
  "Returns md5sum for a message object of type 'SensorState"
  "430a4bfd78449c8740bfef32b26613a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorState>)))
  "Returns full string definition for message of type '<SensorState>"
  (cl:format cl:nil "# Kobuki Sensor Data Messages~%#~%# For more direct simple interactions (buttons, leds, gyro, motor velocity~%# etc) use the other topics. This provides detailed information about the~%# entire state package that is transmitted at 50Hz from the robot.~%#~%~%~%###### CONSTANTS ######~%# Bumper states (states are combined, when multiple bumpers are pressed)~%uint8 BUMPER_RIGHT  = 1~%uint8 BUMPER_CENTRE = 2~%uint8 BUMPER_LEFT   = 4~%~%# Wheel drop sensor states (states are combined, when both wheel drop sensors are triggered)~%uint8 WHEEL_DROP_RIGHT = 1~%uint8 WHEEL_DROP_LEFT  = 2~%~%# Cliff sensor states (states are combined, when multiple cliff sensors are triggered)~%uint8 CLIFF_RIGHT  = 1~%uint8 CLIFF_CENTRE = 2~%uint8 CLIFF_LEFT   = 4~%~%# Button states (only one button can be triggered at a time)~%uint8 BUTTON0 = 1~%uint8 BUTTON1 = 2~%uint8 BUTTON2 = 4~%~%# Charger state is a combination of charging device (adapter, docking station)~%# and state (charging, charged, discharging):~%uint8 DISCHARGING      = 0~%uint8 DOCKING_CHARGED  = 2~%uint8 DOCKING_CHARGING = 6~%uint8 ADAPTER_CHARGED  = 18~%uint8 ADAPTER_CHARGING = 22~%~%# Over current states~%uint8 OVER_CURRENT_LEFT_WHEEL  = 1~%uint8 OVER_CURRENT_RIGHT_WHEEL = 2~%uint8 OVER_CURRENT_BOTH_WHEELS = 3~%~%# Digital input states (states are combined, when multiple inputs are set at the same time)~%# When connecting Yujin's test board, it acts as pull-up what inverts the behaviour:~%# No input: 79, all inputs set (e.g. buttons pressed): 64~%uint8 DIGITAL_INPUT0 = 1~%uint8 DIGITAL_INPUT1 = 2~%uint8 DIGITAL_INPUT2 = 4~%uint8 DIGITAL_INPUT3 = 8~%uint8 DB25_TEST_BOARD_CONNECTED = 64~%~%###### MESSAGE ######~%~%Header header~%~%###################~%# Core Packet~%###################~%uint16 time_stamp      # milliseconds starting when turning on Kobuki (max. 65536, then starts from 0 again)~%uint8  bumper          # see bumper states~%uint8  wheel_drop      # see wheel drop sensor states~%uint8  cliff           # see cliff sensor states~%uint16 left_encoder    # accumulated ticks left wheel starting with turning on Kobuki (max. 65535)~%uint16 right_encoder   # accumulated ticks right wheel starting with turning on Kobuki (max. 65535)~%int8   left_pwm        # % of applied maximum voltage left wheel: -100 (max. voltage backward) to +100 (max. voltage forward)~%int8   right_pwm       # % of applied maximum voltage right wheel: -100 (max. voltage backward) to +100 (max. voltage forward)~%uint8  buttons         # see button states~%uint8  charger         # see charger states~%uint8  battery         # battery voltage in 0.1V (ex. 16.1V -> 161)~%~%###################~%# Cliff Packet~%###################~%uint16[] bottom        # ADC output of the right, centre, left cliff PSD sensor (0 - 4095, distance measure is non-linear)~%~%###################~%# Current Packet~%###################~%uint8[] current        # motor current for the left and right motor in 10mA (ex. 12 -> 120mA)~%uint8   over_current   # see over current states~%~%###################~%# Input Packet~%###################~%uint16   digital_input # see digital input states; will show garbage when nothing is connected~%uint16[] analog_input  # ADC values for the 4 analog inputs; 0 - 4095: 0.0 - 3.3V; will show garbage when nothing is connected~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorState)))
  "Returns full string definition for message of type 'SensorState"
  (cl:format cl:nil "# Kobuki Sensor Data Messages~%#~%# For more direct simple interactions (buttons, leds, gyro, motor velocity~%# etc) use the other topics. This provides detailed information about the~%# entire state package that is transmitted at 50Hz from the robot.~%#~%~%~%###### CONSTANTS ######~%# Bumper states (states are combined, when multiple bumpers are pressed)~%uint8 BUMPER_RIGHT  = 1~%uint8 BUMPER_CENTRE = 2~%uint8 BUMPER_LEFT   = 4~%~%# Wheel drop sensor states (states are combined, when both wheel drop sensors are triggered)~%uint8 WHEEL_DROP_RIGHT = 1~%uint8 WHEEL_DROP_LEFT  = 2~%~%# Cliff sensor states (states are combined, when multiple cliff sensors are triggered)~%uint8 CLIFF_RIGHT  = 1~%uint8 CLIFF_CENTRE = 2~%uint8 CLIFF_LEFT   = 4~%~%# Button states (only one button can be triggered at a time)~%uint8 BUTTON0 = 1~%uint8 BUTTON1 = 2~%uint8 BUTTON2 = 4~%~%# Charger state is a combination of charging device (adapter, docking station)~%# and state (charging, charged, discharging):~%uint8 DISCHARGING      = 0~%uint8 DOCKING_CHARGED  = 2~%uint8 DOCKING_CHARGING = 6~%uint8 ADAPTER_CHARGED  = 18~%uint8 ADAPTER_CHARGING = 22~%~%# Over current states~%uint8 OVER_CURRENT_LEFT_WHEEL  = 1~%uint8 OVER_CURRENT_RIGHT_WHEEL = 2~%uint8 OVER_CURRENT_BOTH_WHEELS = 3~%~%# Digital input states (states are combined, when multiple inputs are set at the same time)~%# When connecting Yujin's test board, it acts as pull-up what inverts the behaviour:~%# No input: 79, all inputs set (e.g. buttons pressed): 64~%uint8 DIGITAL_INPUT0 = 1~%uint8 DIGITAL_INPUT1 = 2~%uint8 DIGITAL_INPUT2 = 4~%uint8 DIGITAL_INPUT3 = 8~%uint8 DB25_TEST_BOARD_CONNECTED = 64~%~%###### MESSAGE ######~%~%Header header~%~%###################~%# Core Packet~%###################~%uint16 time_stamp      # milliseconds starting when turning on Kobuki (max. 65536, then starts from 0 again)~%uint8  bumper          # see bumper states~%uint8  wheel_drop      # see wheel drop sensor states~%uint8  cliff           # see cliff sensor states~%uint16 left_encoder    # accumulated ticks left wheel starting with turning on Kobuki (max. 65535)~%uint16 right_encoder   # accumulated ticks right wheel starting with turning on Kobuki (max. 65535)~%int8   left_pwm        # % of applied maximum voltage left wheel: -100 (max. voltage backward) to +100 (max. voltage forward)~%int8   right_pwm       # % of applied maximum voltage right wheel: -100 (max. voltage backward) to +100 (max. voltage forward)~%uint8  buttons         # see button states~%uint8  charger         # see charger states~%uint8  battery         # battery voltage in 0.1V (ex. 16.1V -> 161)~%~%###################~%# Cliff Packet~%###################~%uint16[] bottom        # ADC output of the right, centre, left cliff PSD sensor (0 - 4095, distance measure is non-linear)~%~%###################~%# Current Packet~%###################~%uint8[] current        # motor current for the left and right motor in 10mA (ex. 12 -> 120mA)~%uint8   over_current   # see over current states~%~%###################~%# Input Packet~%###################~%uint16   digital_input # see digital input states; will show garbage when nothing is connected~%uint16[] analog_input  # ADC values for the 4 analog inputs; 0 - 4095: 0.0 - 3.3V; will show garbage when nothing is connected~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     1
     1
     2
     2
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bottom) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorState>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorState
    (cl:cons ':header (header msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':bumper (bumper msg))
    (cl:cons ':wheel_drop (wheel_drop msg))
    (cl:cons ':cliff (cliff msg))
    (cl:cons ':left_encoder (left_encoder msg))
    (cl:cons ':right_encoder (right_encoder msg))
    (cl:cons ':left_pwm (left_pwm msg))
    (cl:cons ':right_pwm (right_pwm msg))
    (cl:cons ':buttons (buttons msg))
    (cl:cons ':charger (charger msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':bottom (bottom msg))
    (cl:cons ':current (current msg))
    (cl:cons ':over_current (over_current msg))
    (cl:cons ':digital_input (digital_input msg))
    (cl:cons ':analog_input (analog_input msg))
))

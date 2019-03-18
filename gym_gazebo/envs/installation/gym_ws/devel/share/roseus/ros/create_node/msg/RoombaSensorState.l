;; Auto-generated. Do not edit!


(when (boundp 'create_node::RoombaSensorState)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'RoombaSensorState (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::ROOMBASENSORSTATE")
  (make-package "CREATE_NODE::ROOMBASENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude RoombaSensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CHARGING_NOT_CHARGING*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_NOT_CHARGING* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_NOT_CHARGING* 0)
(intern "*CHARGING_CHARGING_RECOVERY*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_CHARGING_RECOVERY* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_CHARGING_RECOVERY* 1)
(intern "*CHARGING_CHARGING*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_CHARGING* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_CHARGING* 2)
(intern "*CHARGING_TRICKLE_CHARGING*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_TRICKLE_CHARGING* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_TRICKLE_CHARGING* 3)
(intern "*CHARGING_WAITING*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_WAITING* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_WAITING* 4)
(intern "*CHARGING_CHARGING_ERROR*" (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(shadow '*CHARGING_CHARGING_ERROR* (find-package "CREATE_NODE::ROOMBASENSORSTATE"))
(defconstant create_node::RoombaSensorState::*CHARGING_CHARGING_ERROR* 5)
(defclass create_node::RoombaSensorState
  :super ros::object
  :slots (_header _bumps_wheeldrops _wall _cliff_left _cliff_front_left _cliff_front_right _cliff_right _virtual_wall _motor_overcurrents _dirt_detector_left _dirt_detector_right _remote_opcode _buttons _distance _angle _charging_state _voltage _current _temperature _charge _capacity ))

(defmethod create_node::RoombaSensorState
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
    ((:distance __distance) 0)
    ((:angle __angle) 0)
    ((:charging_state __charging_state) 0)
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:temperature __temperature) 0)
    ((:charge __charge) 0)
    ((:capacity __capacity) 0)
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
   (setq _distance (round __distance))
   (setq _angle (round __angle))
   (setq _charging_state (round __charging_state))
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _temperature (round __temperature))
   (setq _charge (round __charge))
   (setq _capacity (round __capacity))
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
    ;; int16 _distance
    2
    ;; int16 _angle
    2
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
     ;; int16 _distance
       (write-word _distance s)
     ;; int16 _angle
       (write-word _angle s)
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
   ;; int16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _angle
     (setq _angle (sys::peek buf ptr- :short)) (incf ptr- 2)
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
   ;;
   self)
  )

(setf (get create_node::RoombaSensorState :md5sum-) "9e8632c0937537603a670e96e85cd991")
(setf (get create_node::RoombaSensorState :datatype-) "create_node/RoombaSensorState")
(setf (get create_node::RoombaSensorState :definition-)
      "Header header

uint8 CHARGING_NOT_CHARGING = 0
uint8 CHARGING_CHARGING_RECOVERY = 1
uint8 CHARGING_CHARGING = 2
uint8 CHARGING_TRICKLE_CHARGING = 3
uint8 CHARGING_WAITING = 4 
uint8 CHARGING_CHARGING_ERROR = 5

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
int16 distance  # mm
int16 angle # degrees
uint8 charging_state
uint16 voltage  # mV
int16 current  # mA
int8 temperature  # C
uint16 charge  # mAh
uint16 capacity  # mAh

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



(provide :create_node/RoombaSensorState "9e8632c0937537603a670e96e85cd991")



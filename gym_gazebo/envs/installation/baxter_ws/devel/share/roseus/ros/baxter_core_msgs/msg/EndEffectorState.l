;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::EndEffectorState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'EndEffectorState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE")
  (make-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude EndEffectorState.msg.html


(intern "*STATE_FALSE*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*STATE_FALSE* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*STATE_FALSE* 0)
(intern "*STATE_TRUE*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*STATE_TRUE* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*STATE_TRUE* 1)
(intern "*STATE_UNKNOWN*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*STATE_UNKNOWN* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*STATE_UNKNOWN* 2)
(intern "*POSITION_CLOSED*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*POSITION_CLOSED* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*POSITION_CLOSED* 0.0)
(intern "*POSITION_OPEN*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*POSITION_OPEN* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*POSITION_OPEN* 100.0)
(intern "*FORCE_MIN*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*FORCE_MIN* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*FORCE_MIN* 0.0)
(intern "*FORCE_MAX*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(shadow '*FORCE_MAX* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORSTATE"))
(defconstant baxter_core_msgs::EndEffectorState::*FORCE_MAX* 100.0)
(defclass baxter_core_msgs::EndEffectorState
  :super ros::object
  :slots (_timestamp _id _enabled _calibrated _ready _moving _gripping _missed _error _reverse _position _force _state _command _command_sender _command_sequence ))

(defmethod baxter_core_msgs::EndEffectorState
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:id __id) 0)
    ((:enabled __enabled) 0)
    ((:calibrated __calibrated) 0)
    ((:ready __ready) 0)
    ((:moving __moving) 0)
    ((:gripping __gripping) 0)
    ((:missed __missed) 0)
    ((:error __error) 0)
    ((:reverse __reverse) 0)
    ((:position __position) 0.0)
    ((:force __force) 0.0)
    ((:state __state) "")
    ((:command __command) "")
    ((:command_sender __command_sender) "")
    ((:command_sequence __command_sequence) 0)
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _id (round __id))
   (setq _enabled (round __enabled))
   (setq _calibrated (round __calibrated))
   (setq _ready (round __ready))
   (setq _moving (round __moving))
   (setq _gripping (round __gripping))
   (setq _missed (round __missed))
   (setq _error (round __error))
   (setq _reverse (round __reverse))
   (setq _position (float __position))
   (setq _force (float __force))
   (setq _state (string __state))
   (setq _command (string __command))
   (setq _command_sender (string __command_sender))
   (setq _command_sequence (round __command_sequence))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:calibrated
   (&optional __calibrated)
   (if __calibrated (setq _calibrated __calibrated)) _calibrated)
  (:ready
   (&optional __ready)
   (if __ready (setq _ready __ready)) _ready)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:gripping
   (&optional __gripping)
   (if __gripping (setq _gripping __gripping)) _gripping)
  (:missed
   (&optional __missed)
   (if __missed (setq _missed __missed)) _missed)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:command_sender
   (&optional __command_sender)
   (if __command_sender (setq _command_sender __command_sender)) _command_sender)
  (:command_sequence
   (&optional __command_sequence)
   (if __command_sequence (setq _command_sequence __command_sequence)) _command_sequence)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; uint32 _id
    4
    ;; uint8 _enabled
    1
    ;; uint8 _calibrated
    1
    ;; uint8 _ready
    1
    ;; uint8 _moving
    1
    ;; uint8 _gripping
    1
    ;; uint8 _missed
    1
    ;; uint8 _error
    1
    ;; uint8 _reverse
    1
    ;; float32 _position
    4
    ;; float32 _force
    4
    ;; string _state
    4 (length _state)
    ;; string _command
    4 (length _command)
    ;; string _command_sender
    4 (length _command_sender)
    ;; uint32 _command_sequence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _enabled
       (write-byte _enabled s)
     ;; uint8 _calibrated
       (write-byte _calibrated s)
     ;; uint8 _ready
       (write-byte _ready s)
     ;; uint8 _moving
       (write-byte _moving s)
     ;; uint8 _gripping
       (write-byte _gripping s)
     ;; uint8 _missed
       (write-byte _missed s)
     ;; uint8 _error
       (write-byte _error s)
     ;; uint8 _reverse
       (write-byte _reverse s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _command_sender
       (write-long (length _command_sender) s) (princ _command_sender s)
     ;; uint32 _command_sequence
       (write-long _command_sequence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _enabled
     (setq _enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _calibrated
     (setq _calibrated (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ready
     (setq _ready (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _moving
     (setq _moving (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gripping
     (setq _gripping (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _missed
     (setq _missed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reverse
     (setq _reverse (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command_sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _command_sequence
     (setq _command_sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get baxter_core_msgs::EndEffectorState :md5sum-) "ade777f069d738595bc19e246b8ec7a0")
(setf (get baxter_core_msgs::EndEffectorState :datatype-) "baxter_core_msgs/EndEffectorState")
(setf (get baxter_core_msgs::EndEffectorState :definition-)
      "#
time timestamp              # time when state was updated
uint32 id                   # EndEffectorId
#
# The following State fields are tristate: 0 = false; 1 = true; 2 = unknown/unsupported
  uint8   STATE_FALSE = 0
  uint8   STATE_TRUE = 1
  uint8   STATE_UNKNOWN = 2
#
uint8   enabled             # true if enabled
uint8   calibrated          # true if calibration has completed
uint8   ready               # true if ready for another command
uint8   moving              # true if moving
uint8   gripping            # true if gripping
uint8   missed              # true if GRIP/GOTO/SET was commanded and the gripper reaches the end of travel
uint8   error               # true if the gripper is in an error state
uint8   reverse             # true if the gripper is in reverse mode
#
float32 position            # position as a percentage of the max position;      0=closed - 100=open
#
  float32 POSITION_CLOSED = 0.0
  float32 POSITION_OPEN   = 100.0
#
float32 force               # force as a percentage of max force;                0=none   - 100=max
#
  float32 FORCE_MIN = 0.0
  float32 FORCE_MAX = 100.0
#
string state                # JSON: other state information
#
string command              # from the last command message
string command_sender
uint32 command_sequence
#

")



(provide :baxter_core_msgs/EndEffectorState "ade777f069d738595bc19e246b8ec7a0")



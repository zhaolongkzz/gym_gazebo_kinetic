;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::AssemblyState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'AssemblyState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE")
  (make-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))

(in-package "ROS")
;;//! \htmlinclude AssemblyState.msg.html


(intern "*ESTOP_BUTTON_UNPRESSED*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_UNPRESSED* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_BUTTON_UNPRESSED* 0)
(intern "*ESTOP_BUTTON_PRESSED*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_PRESSED* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_BUTTON_PRESSED* 1)
(intern "*ESTOP_BUTTON_UNKNOWN*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_UNKNOWN* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_BUTTON_UNKNOWN* 2)
(intern "*ESTOP_BUTTON_RELEASED*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_RELEASED* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_BUTTON_RELEASED* 3)
(intern "*ESTOP_SOURCE_NONE*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_NONE* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_SOURCE_NONE* 0)
(intern "*ESTOP_SOURCE_USER*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_USER* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_SOURCE_USER* 1)
(intern "*ESTOP_SOURCE_UNKNOWN*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_UNKNOWN* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_SOURCE_UNKNOWN* 2)
(intern "*ESTOP_SOURCE_FAULT*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_FAULT* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_SOURCE_FAULT* 3)
(intern "*ESTOP_SOURCE_BRAIN*" (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_BRAIN* (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATE"))
(defconstant baxter_core_msgs::AssemblyState::*ESTOP_SOURCE_BRAIN* 4)
(defclass baxter_core_msgs::AssemblyState
  :super ros::object
  :slots (_ready _enabled _stopped _error _estop_button _estop_source ))

(defmethod baxter_core_msgs::AssemblyState
  (:init
   (&key
    ((:ready __ready) nil)
    ((:enabled __enabled) nil)
    ((:stopped __stopped) nil)
    ((:error __error) nil)
    ((:estop_button __estop_button) 0)
    ((:estop_source __estop_source) 0)
    )
   (send-super :init)
   (setq _ready __ready)
   (setq _enabled __enabled)
   (setq _stopped __stopped)
   (setq _error __error)
   (setq _estop_button (round __estop_button))
   (setq _estop_source (round __estop_source))
   self)
  (:ready
   (&optional __ready)
   (if __ready (setq _ready __ready)) _ready)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:stopped
   (&optional __stopped)
   (if __stopped (setq _stopped __stopped)) _stopped)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:estop_button
   (&optional __estop_button)
   (if __estop_button (setq _estop_button __estop_button)) _estop_button)
  (:estop_source
   (&optional __estop_source)
   (if __estop_source (setq _estop_source __estop_source)) _estop_source)
  (:serialization-length
   ()
   (+
    ;; bool _ready
    1
    ;; bool _enabled
    1
    ;; bool _stopped
    1
    ;; bool _error
    1
    ;; uint8 _estop_button
    1
    ;; uint8 _estop_source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ready
       (if _ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _stopped
       (if _stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _error
       (if _error (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _estop_button
       (write-byte _estop_button s)
     ;; uint8 _estop_source
       (write-byte _estop_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stopped
     (setq _stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error
     (setq _error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _estop_button
     (setq _estop_button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _estop_source
     (setq _estop_source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::AssemblyState :md5sum-) "356d9dd237ce73b2667da9235f541933")
(setf (get baxter_core_msgs::AssemblyState :datatype-) "baxter_core_msgs/AssemblyState")
(setf (get baxter_core_msgs::AssemblyState :definition-)
      "bool ready               # true if enabled and ready to operate, e.g., not homing
bool enabled             # true if enabled
bool stopped             # true if stopped -- e-stop asserted
bool error               # true if a component of the assembly has an error
#
# The following are specific to the robot top-level assembly:
uint8  estop_button      # One of the following:
  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed
  uint8   ESTOP_BUTTON_PRESSED   = 1
  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source
  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.
#
uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:
  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted
  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)
  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown
  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault
  uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat

")



(provide :baxter_core_msgs/AssemblyState "356d9dd237ce73b2667da9235f541933")



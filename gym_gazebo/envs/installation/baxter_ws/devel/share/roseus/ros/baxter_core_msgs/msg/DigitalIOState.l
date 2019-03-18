;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::DigitalIOState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'DigitalIOState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE")
  (make-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude DigitalIOState.msg.html


(intern "*OFF*" (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(shadow '*OFF* (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(defconstant baxter_core_msgs::DigitalIOState::*OFF* 0)
(intern "*ON*" (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(shadow '*ON* (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(defconstant baxter_core_msgs::DigitalIOState::*ON* 1)
(intern "*PRESSED*" (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(shadow '*PRESSED* (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(defconstant baxter_core_msgs::DigitalIOState::*PRESSED* 1)
(intern "*UNPRESSED*" (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(shadow '*UNPRESSED* (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATE"))
(defconstant baxter_core_msgs::DigitalIOState::*UNPRESSED* 0)
(defclass baxter_core_msgs::DigitalIOState
  :super ros::object
  :slots (_state _isInputOnly ))

(defmethod baxter_core_msgs::DigitalIOState
  (:init
   (&key
    ((:state __state) 0)
    ((:isInputOnly __isInputOnly) nil)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _isInputOnly __isInputOnly)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:isInputOnly
   (&optional __isInputOnly)
   (if __isInputOnly (setq _isInputOnly __isInputOnly)) _isInputOnly)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ;; bool _isInputOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;; bool _isInputOnly
       (if _isInputOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; bool _isInputOnly
     (setq _isInputOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::DigitalIOState :md5sum-) "29d0be3859dae81a66b28f167ecec98c")
(setf (get baxter_core_msgs::DigitalIOState :datatype-) "baxter_core_msgs/DigitalIOState")
(setf (get baxter_core_msgs::DigitalIOState :definition-)
      "int8 state
bool isInputOnly

int8 OFF = 0
int8 ON  = 1
int8 PRESSED = 1
int8 UNPRESSED = 0
")



(provide :baxter_core_msgs/DigitalIOState "29d0be3859dae81a66b28f167ecec98c")



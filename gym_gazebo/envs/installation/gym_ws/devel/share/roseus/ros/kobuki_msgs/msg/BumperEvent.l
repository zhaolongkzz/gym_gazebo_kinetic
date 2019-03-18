;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::BumperEvent)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'BumperEvent (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::BUMPEREVENT")
  (make-package "KOBUKI_MSGS::BUMPEREVENT"))

(in-package "ROS")
;;//! \htmlinclude BumperEvent.msg.html


(intern "*LEFT*" (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(shadow '*LEFT* (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(defconstant kobuki_msgs::BumperEvent::*LEFT* 0)
(intern "*CENTER*" (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(shadow '*CENTER* (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(defconstant kobuki_msgs::BumperEvent::*CENTER* 1)
(intern "*RIGHT*" (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(shadow '*RIGHT* (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(defconstant kobuki_msgs::BumperEvent::*RIGHT* 2)
(intern "*RELEASED*" (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(shadow '*RELEASED* (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(defconstant kobuki_msgs::BumperEvent::*RELEASED* 0)
(intern "*PRESSED*" (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(shadow '*PRESSED* (find-package "KOBUKI_MSGS::BUMPEREVENT"))
(defconstant kobuki_msgs::BumperEvent::*PRESSED* 1)
(defclass kobuki_msgs::BumperEvent
  :super ros::object
  :slots (_bumper _state ))

(defmethod kobuki_msgs::BumperEvent
  (:init
   (&key
    ((:bumper __bumper) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _bumper (round __bumper))
   (setq _state (round __state))
   self)
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _bumper
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _bumper
       (write-byte _bumper s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::BumperEvent :md5sum-) "ffe360cd50f14f9251d9844083e72ac5")
(setf (get kobuki_msgs::BumperEvent :datatype-) "kobuki_msgs/BumperEvent")
(setf (get kobuki_msgs::BumperEvent :definition-)
      "# Provides a bumper event.
# This message is generated whenever a particular bumper is pressed or released.
# Note that, despite bumper field on SensorState messages, state field is not a
# bitmask, but the new state of a single sensor.

# bumper
uint8 LEFT   = 0
uint8 CENTER = 1
uint8 RIGHT  = 2

# state
uint8 RELEASED = 0
uint8 PRESSED  = 1

uint8 bumper
uint8 state

")



(provide :kobuki_msgs/BumperEvent "ffe360cd50f14f9251d9844083e72ac5")



;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::ButtonEvent)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'ButtonEvent (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::BUTTONEVENT")
  (make-package "KOBUKI_MSGS::BUTTONEVENT"))

(in-package "ROS")
;;//! \htmlinclude ButtonEvent.msg.html


(intern "*BUTTON0*" (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(shadow '*BUTTON0* (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(defconstant kobuki_msgs::ButtonEvent::*BUTTON0* 0)
(intern "*BUTTON1*" (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(shadow '*BUTTON1* (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(defconstant kobuki_msgs::ButtonEvent::*BUTTON1* 1)
(intern "*BUTTON2*" (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(shadow '*BUTTON2* (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(defconstant kobuki_msgs::ButtonEvent::*BUTTON2* 2)
(intern "*RELEASED*" (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(shadow '*RELEASED* (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(defconstant kobuki_msgs::ButtonEvent::*RELEASED* 0)
(intern "*PRESSED*" (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(shadow '*PRESSED* (find-package "KOBUKI_MSGS::BUTTONEVENT"))
(defconstant kobuki_msgs::ButtonEvent::*PRESSED* 1)
(defclass kobuki_msgs::ButtonEvent
  :super ros::object
  :slots (_button _state ))

(defmethod kobuki_msgs::ButtonEvent
  (:init
   (&key
    ((:button __button) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _button (round __button))
   (setq _state (round __state))
   self)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _button
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _button
       (write-byte _button s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::ButtonEvent :md5sum-) "49eca512765dbdec759a79083ffcec8d")
(setf (get kobuki_msgs::ButtonEvent :datatype-) "kobuki_msgs/ButtonEvent")
(setf (get kobuki_msgs::ButtonEvent :definition-)
      "# Provides a button event.
# This message is generated whenever a particular button is pressed or released.
# Note that, despite buttons field on SensorState messages, state field is not a
# bitmask, but the new state of a single button.

uint8 Button0 = 0
uint8 Button1 = 1
uint8 Button2 = 2

uint8 RELEASED = 0
uint8 PRESSED  = 1

uint8 button
uint8 state

")



(provide :kobuki_msgs/ButtonEvent "49eca512765dbdec759a79083ffcec8d")



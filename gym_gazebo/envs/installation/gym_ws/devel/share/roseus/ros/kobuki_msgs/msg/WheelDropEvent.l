;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::WheelDropEvent)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'WheelDropEvent (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::WHEELDROPEVENT")
  (make-package "KOBUKI_MSGS::WHEELDROPEVENT"))

(in-package "ROS")
;;//! \htmlinclude WheelDropEvent.msg.html


(intern "*LEFT*" (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(shadow '*LEFT* (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(defconstant kobuki_msgs::WheelDropEvent::*LEFT* 0)
(intern "*RIGHT*" (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(shadow '*RIGHT* (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(defconstant kobuki_msgs::WheelDropEvent::*RIGHT* 1)
(intern "*RAISED*" (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(shadow '*RAISED* (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(defconstant kobuki_msgs::WheelDropEvent::*RAISED* 0)
(intern "*DROPPED*" (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(shadow '*DROPPED* (find-package "KOBUKI_MSGS::WHEELDROPEVENT"))
(defconstant kobuki_msgs::WheelDropEvent::*DROPPED* 1)
(defclass kobuki_msgs::WheelDropEvent
  :super ros::object
  :slots (_wheel _state ))

(defmethod kobuki_msgs::WheelDropEvent
  (:init
   (&key
    ((:wheel __wheel) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _wheel (round __wheel))
   (setq _state (round __state))
   self)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _wheel
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _wheel
       (write-byte _wheel s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _wheel
     (setq _wheel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::WheelDropEvent :md5sum-) "e102837d89384d67669a0df86b63f33b")
(setf (get kobuki_msgs::WheelDropEvent :datatype-) "kobuki_msgs/WheelDropEvent")
(setf (get kobuki_msgs::WheelDropEvent :definition-)
      "# Provides a wheel drop event.
# This message is generated whenever one of the wheels is dropped (robot fell
# or was raised) or raised (normal condition).
# Note that, despite wheel_drop field on SensorState messages, state field is
# not a bitmask, but the new state of a single sensor.

# wheel
uint8 LEFT  = 0
uint8 RIGHT = 1

# state
uint8 RAISED  = 0
uint8 DROPPED = 1

uint8 wheel
uint8 state

")



(provide :kobuki_msgs/WheelDropEvent "e102837d89384d67669a0df86b63f33b")



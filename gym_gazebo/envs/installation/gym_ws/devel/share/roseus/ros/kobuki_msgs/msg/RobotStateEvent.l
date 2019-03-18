;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::RobotStateEvent)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'RobotStateEvent (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::ROBOTSTATEEVENT")
  (make-package "KOBUKI_MSGS::ROBOTSTATEEVENT"))

(in-package "ROS")
;;//! \htmlinclude RobotStateEvent.msg.html


(intern "*ONLINE*" (find-package "KOBUKI_MSGS::ROBOTSTATEEVENT"))
(shadow '*ONLINE* (find-package "KOBUKI_MSGS::ROBOTSTATEEVENT"))
(defconstant kobuki_msgs::RobotStateEvent::*ONLINE* 1)
(intern "*OFFLINE*" (find-package "KOBUKI_MSGS::ROBOTSTATEEVENT"))
(shadow '*OFFLINE* (find-package "KOBUKI_MSGS::ROBOTSTATEEVENT"))
(defconstant kobuki_msgs::RobotStateEvent::*OFFLINE* 0)
(defclass kobuki_msgs::RobotStateEvent
  :super ros::object
  :slots (_state ))

(defmethod kobuki_msgs::RobotStateEvent
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::RobotStateEvent :md5sum-) "c6eccd4cb1f95df95635b56d6226ea32")
(setf (get kobuki_msgs::RobotStateEvent :datatype-) "kobuki_msgs/RobotStateEvent")
(setf (get kobuki_msgs::RobotStateEvent :definition-)
      "# Provides a robot state event
# This message is generated whenever the robot gets online/offline

uint8 ONLINE  = 1
uint8 OFFLINE = 0

uint8 state

")



(provide :kobuki_msgs/RobotStateEvent "c6eccd4cb1f95df95635b56d6226ea32")



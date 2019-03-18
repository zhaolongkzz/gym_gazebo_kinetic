;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::MotorPower)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'MotorPower (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::MOTORPOWER")
  (make-package "KOBUKI_MSGS::MOTORPOWER"))

(in-package "ROS")
;;//! \htmlinclude MotorPower.msg.html


(intern "*OFF*" (find-package "KOBUKI_MSGS::MOTORPOWER"))
(shadow '*OFF* (find-package "KOBUKI_MSGS::MOTORPOWER"))
(defconstant kobuki_msgs::MotorPower::*OFF* 0)
(intern "*ON*" (find-package "KOBUKI_MSGS::MOTORPOWER"))
(shadow '*ON* (find-package "KOBUKI_MSGS::MOTORPOWER"))
(defconstant kobuki_msgs::MotorPower::*ON* 1)
(defclass kobuki_msgs::MotorPower
  :super ros::object
  :slots (_state ))

(defmethod kobuki_msgs::MotorPower
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

(setf (get kobuki_msgs::MotorPower :md5sum-) "8f77c0161e0f2021493136bb5f3f0e51")
(setf (get kobuki_msgs::MotorPower :datatype-) "kobuki_msgs/MotorPower")
(setf (get kobuki_msgs::MotorPower :definition-)
      "# Turn on/off Kobuki's motors

# State
uint8 OFF = 0
uint8 ON  = 1

uint8 state
")



(provide :kobuki_msgs/MotorPower "8f77c0161e0f2021493136bb5f3f0e51")



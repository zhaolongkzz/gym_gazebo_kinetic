;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::Sound)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'Sound (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::SOUND")
  (make-package "KOBUKI_MSGS::SOUND"))

(in-package "ROS")
;;//! \htmlinclude Sound.msg.html


(intern "*ON*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*ON* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*ON* 0)
(intern "*OFF*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*OFF* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*OFF* 1)
(intern "*RECHARGE*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*RECHARGE* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*RECHARGE* 2)
(intern "*BUTTON*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*BUTTON* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*BUTTON* 3)
(intern "*ERROR*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*ERROR* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*ERROR* 4)
(intern "*CLEANINGSTART*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*CLEANINGSTART* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*CLEANINGSTART* 5)
(intern "*CLEANINGEND*" (find-package "KOBUKI_MSGS::SOUND"))
(shadow '*CLEANINGEND* (find-package "KOBUKI_MSGS::SOUND"))
(defconstant kobuki_msgs::Sound::*CLEANINGEND* 6)
(defclass kobuki_msgs::Sound
  :super ros::object
  :slots (_value ))

(defmethod kobuki_msgs::Sound
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::Sound :md5sum-) "dfeab0daae67749c426c1db741a4f420")
(setf (get kobuki_msgs::Sound :datatype-) "kobuki_msgs/Sound")
(setf (get kobuki_msgs::Sound :definition-)
      "# Sends a command for playing sounds.
# The available sound sequences:
# 0 - turn on
# 1 - turn off
# 2 - recharge start
# 3 - press button,
# 4 - error sound
# 5 - start cleaning
# 6 - cleaning end

uint8 ON            = 0
uint8 OFF           = 1
uint8 RECHARGE      = 2
uint8 BUTTON        = 3
uint8 ERROR         = 4
uint8 CLEANINGSTART = 5
uint8 CLEANINGEND   = 6

uint8 value
")



(provide :kobuki_msgs/Sound "dfeab0daae67749c426c1db741a4f420")



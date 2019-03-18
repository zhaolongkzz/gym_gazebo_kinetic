;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::Led)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'Led (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::LED")
  (make-package "KOBUKI_MSGS::LED"))

(in-package "ROS")
;;//! \htmlinclude Led.msg.html


(intern "*BLACK*" (find-package "KOBUKI_MSGS::LED"))
(shadow '*BLACK* (find-package "KOBUKI_MSGS::LED"))
(defconstant kobuki_msgs::Led::*BLACK* 0)
(intern "*GREEN*" (find-package "KOBUKI_MSGS::LED"))
(shadow '*GREEN* (find-package "KOBUKI_MSGS::LED"))
(defconstant kobuki_msgs::Led::*GREEN* 1)
(intern "*ORANGE*" (find-package "KOBUKI_MSGS::LED"))
(shadow '*ORANGE* (find-package "KOBUKI_MSGS::LED"))
(defconstant kobuki_msgs::Led::*ORANGE* 2)
(intern "*RED*" (find-package "KOBUKI_MSGS::LED"))
(shadow '*RED* (find-package "KOBUKI_MSGS::LED"))
(defconstant kobuki_msgs::Led::*RED* 3)
(defclass kobuki_msgs::Led
  :super ros::object
  :slots (_value ))

(defmethod kobuki_msgs::Led
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

(setf (get kobuki_msgs::Led :md5sum-) "4391183b0cf05f8f25d04220401b9f43")
(setf (get kobuki_msgs::Led :datatype-) "kobuki_msgs/Led")
(setf (get kobuki_msgs::Led :definition-)
      "# Sends a command for controlling the a LED.
# 
# Typically the first LED is always reserved to denote
# the state - the remainder will be controllable. 

uint8 BLACK   = 0
uint8 GREEN   = 1
uint8 ORANGE  = 2
uint8 RED     = 3

# For kobuki there are only two controllable LED's.
uint8 value

")



(provide :kobuki_msgs/Led "4391183b0cf05f8f25d04220401b9f43")



;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::ExternalPower)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'ExternalPower (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::EXTERNALPOWER")
  (make-package "KOBUKI_MSGS::EXTERNALPOWER"))

(in-package "ROS")
;;//! \htmlinclude ExternalPower.msg.html


(intern "*PWR_3_3V1A*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*PWR_3_3V1A* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*PWR_3_3V1A* 0)
(intern "*PWR_5V1A*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*PWR_5V1A* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*PWR_5V1A* 1)
(intern "*PWR_12V5A*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*PWR_12V5A* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*PWR_12V5A* 2)
(intern "*PWR_12V1_5A*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*PWR_12V1_5A* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*PWR_12V1_5A* 3)
(intern "*OFF*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*OFF* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*OFF* 0)
(intern "*ON*" (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(shadow '*ON* (find-package "KOBUKI_MSGS::EXTERNALPOWER"))
(defconstant kobuki_msgs::ExternalPower::*ON* 1)
(defclass kobuki_msgs::ExternalPower
  :super ros::object
  :slots (_source _state ))

(defmethod kobuki_msgs::ExternalPower
  (:init
   (&key
    ((:source __source) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _state (round __state))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _source
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _source
       (write-byte _source s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kobuki_msgs::ExternalPower :md5sum-) "95149d524971a4c6d19e64c827307194")
(setf (get kobuki_msgs::ExternalPower :datatype-) "kobuki_msgs/ExternalPower")
(setf (get kobuki_msgs::ExternalPower :definition-)
      "# Turn on/off Kobuki's external power sources

# Power sources
uint8 PWR_3_3V1A  = 0 # DB25 connector only
uint8 PWR_5V1A    = 1 # DB25 connector and Micro Molex connector
uint8 PWR_12V5A   = 2 # Micro Molex connector only
uint8 PWR_12V1_5A = 3 # Micro Molex connector only

# State
uint8 OFF = 0
uint8 ON  = 1

uint8 source

uint8 state
")



(provide :kobuki_msgs/ExternalPower "95149d524971a4c6d19e64c827307194")



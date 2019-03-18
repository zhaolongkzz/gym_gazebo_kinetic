;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::ControllerInfo)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'ControllerInfo (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::CONTROLLERINFO")
  (make-package "KOBUKI_MSGS::CONTROLLERINFO"))

(in-package "ROS")
;;//! \htmlinclude ControllerInfo.msg.html


(intern "*DEFAULT*" (find-package "KOBUKI_MSGS::CONTROLLERINFO"))
(shadow '*DEFAULT* (find-package "KOBUKI_MSGS::CONTROLLERINFO"))
(defconstant kobuki_msgs::ControllerInfo::*DEFAULT* 0)
(intern "*USER_CONFIGURED*" (find-package "KOBUKI_MSGS::CONTROLLERINFO"))
(shadow '*USER_CONFIGURED* (find-package "KOBUKI_MSGS::CONTROLLERINFO"))
(defconstant kobuki_msgs::ControllerInfo::*USER_CONFIGURED* 1)
(defclass kobuki_msgs::ControllerInfo
  :super ros::object
  :slots (_type _p_gain _i_gain _d_gain ))

(defmethod kobuki_msgs::ControllerInfo
  (:init
   (&key
    ((:type __type) 0)
    ((:p_gain __p_gain) 0.0)
    ((:i_gain __i_gain) 0.0)
    ((:d_gain __d_gain) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _p_gain (float __p_gain))
   (setq _i_gain (float __i_gain))
   (setq _d_gain (float __d_gain))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:p_gain
   (&optional __p_gain)
   (if __p_gain (setq _p_gain __p_gain)) _p_gain)
  (:i_gain
   (&optional __i_gain)
   (if __i_gain (setq _i_gain __i_gain)) _i_gain)
  (:d_gain
   (&optional __d_gain)
   (if __d_gain (setq _d_gain __d_gain)) _d_gain)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float64 _p_gain
    8
    ;; float64 _i_gain
    8
    ;; float64 _d_gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float64 _p_gain
       (sys::poke _p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_gain
       (sys::poke _i_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_gain
       (sys::poke _d_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _p_gain
     (setq _p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_gain
     (setq _i_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_gain
     (setq _d_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kobuki_msgs::ControllerInfo :md5sum-) "46af38e72f0640f41ed22174d43a2550")
(setf (get kobuki_msgs::ControllerInfo :datatype-) "kobuki_msgs/ControllerInfo")
(setf (get kobuki_msgs::ControllerInfo :definition-)
      "# Controller info message, contains PID parameters

uint8 DEFAULT   =  0
uint8 USER_CONFIGURED =  1

uint8 type
float64 p_gain #should be positive
float64 i_gain #should be positive
float64 d_gain #should be positive

")



(provide :kobuki_msgs/ControllerInfo "46af38e72f0640f41ed22174d43a2550")



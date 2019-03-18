;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::HeadPanCommand)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'HeadPanCommand (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND")
  (make-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HeadPanCommand.msg.html


(intern "*MAX_SPEED_RATIO*" (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*MAX_SPEED_RATIO* (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(defconstant baxter_core_msgs::HeadPanCommand::*MAX_SPEED_RATIO* 1.0)
(intern "*MIN_SPEED_RATIO*" (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*MIN_SPEED_RATIO* (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(defconstant baxter_core_msgs::HeadPanCommand::*MIN_SPEED_RATIO* 0.0)
(intern "*REQUEST_PAN_DISABLE*" (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*REQUEST_PAN_DISABLE* (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(defconstant baxter_core_msgs::HeadPanCommand::*REQUEST_PAN_DISABLE* 0)
(intern "*REQUEST_PAN_ENABLE*" (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*REQUEST_PAN_ENABLE* (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(defconstant baxter_core_msgs::HeadPanCommand::*REQUEST_PAN_ENABLE* 1)
(intern "*REQUEST_PAN_VOID*" (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*REQUEST_PAN_VOID* (find-package "BAXTER_CORE_MSGS::HEADPANCOMMAND"))
(defconstant baxter_core_msgs::HeadPanCommand::*REQUEST_PAN_VOID* 2)
(defclass baxter_core_msgs::HeadPanCommand
  :super ros::object
  :slots (_target _speed_ratio _enable_pan_request ))

(defmethod baxter_core_msgs::HeadPanCommand
  (:init
   (&key
    ((:target __target) 0.0)
    ((:speed_ratio __speed_ratio) 0.0)
    ((:enable_pan_request __enable_pan_request) 0)
    )
   (send-super :init)
   (setq _target (float __target))
   (setq _speed_ratio (float __speed_ratio))
   (setq _enable_pan_request (round __enable_pan_request))
   self)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:speed_ratio
   (&optional __speed_ratio)
   (if __speed_ratio (setq _speed_ratio __speed_ratio)) _speed_ratio)
  (:enable_pan_request
   (&optional __enable_pan_request)
   (if __enable_pan_request (setq _enable_pan_request __enable_pan_request)) _enable_pan_request)
  (:serialization-length
   ()
   (+
    ;; float32 _target
    4
    ;; float32 _speed_ratio
    4
    ;; uint8 _enable_pan_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target
       (sys::poke _target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_ratio
       (sys::poke _speed_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _enable_pan_request
       (write-byte _enable_pan_request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target
     (setq _target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_ratio
     (setq _speed_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _enable_pan_request
     (setq _enable_pan_request (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::HeadPanCommand :md5sum-) "23b8a3f4b7ee9de7099d029e57660a8c")
(setf (get baxter_core_msgs::HeadPanCommand :datatype-) "baxter_core_msgs/HeadPanCommand")
(setf (get baxter_core_msgs::HeadPanCommand :definition-)
      "float32 target              # radians for target, 0 str
float32 speed_ratio         # Percentage of max speed [0-1]
#
  float32 MAX_SPEED_RATIO = 1.0
  float32 MIN_SPEED_RATIO = 0.0
#
uint8   enable_pan_request  # override automatic pan enable/disable
# enable_pan_request is tristate: 0 = disable pan; 1 = enable pan; 2 = don't change pan
  uint8   REQUEST_PAN_DISABLE = 0
  uint8   REQUEST_PAN_ENABLE = 1
  uint8   REQUEST_PAN_VOID = 2
#

")



(provide :baxter_core_msgs/HeadPanCommand "23b8a3f4b7ee9de7099d029e57660a8c")



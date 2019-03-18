;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::CameraControl)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'CameraControl (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::CAMERACONTROL")
  (make-package "BAXTER_CORE_MSGS::CAMERACONTROL"))

(in-package "ROS")
;;//! \htmlinclude CameraControl.msg.html


(intern "*CAMERA_CONTROL_EXPOSURE*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_EXPOSURE* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_EXPOSURE* 100)
(intern "*CAMERA_CONTROL_GAIN*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_GAIN* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_GAIN* 101)
(intern "*CAMERA_CONTROL_WHITE_BALANCE_R*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_WHITE_BALANCE_R* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_WHITE_BALANCE_R* 102)
(intern "*CAMERA_CONTROL_WHITE_BALANCE_G*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_WHITE_BALANCE_G* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_WHITE_BALANCE_G* 103)
(intern "*CAMERA_CONTROL_WHITE_BALANCE_B*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_WHITE_BALANCE_B* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_WHITE_BALANCE_B* 104)
(intern "*CAMERA_CONTROL_WINDOW_X*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_WINDOW_X* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_WINDOW_X* 105)
(intern "*CAMERA_CONTROL_WINDOW_Y*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_WINDOW_Y* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_WINDOW_Y* 106)
(intern "*CAMERA_CONTROL_FLIP*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_FLIP* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_FLIP* 107)
(intern "*CAMERA_CONTROL_MIRROR*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_MIRROR* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_MIRROR* 108)
(intern "*CAMERA_CONTROL_RESOLUTION_HALF*" (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(shadow '*CAMERA_CONTROL_RESOLUTION_HALF* (find-package "BAXTER_CORE_MSGS::CAMERACONTROL"))
(defconstant baxter_core_msgs::CameraControl::*CAMERA_CONTROL_RESOLUTION_HALF* 109)
(defclass baxter_core_msgs::CameraControl
  :super ros::object
  :slots (_id _value ))

(defmethod baxter_core_msgs::CameraControl
  (:init
   (&key
    ((:id __id) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _value (round __value))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get baxter_core_msgs::CameraControl :md5sum-) "01e38dd67dfb36af457f0915248629d1")
(setf (get baxter_core_msgs::CameraControl :datatype-) "baxter_core_msgs/CameraControl")
(setf (get baxter_core_msgs::CameraControl :definition-)
      "int32   id
int32   value

int32 CAMERA_CONTROL_EXPOSURE=100
int32 CAMERA_CONTROL_GAIN=101
int32 CAMERA_CONTROL_WHITE_BALANCE_R=102
int32 CAMERA_CONTROL_WHITE_BALANCE_G=103
int32 CAMERA_CONTROL_WHITE_BALANCE_B=104
int32 CAMERA_CONTROL_WINDOW_X=105
int32 CAMERA_CONTROL_WINDOW_Y=106
int32 CAMERA_CONTROL_FLIP=107
int32 CAMERA_CONTROL_MIRROR=108
int32 CAMERA_CONTROL_RESOLUTION_HALF=109

")



(provide :baxter_core_msgs/CameraControl "01e38dd67dfb36af457f0915248629d1")



;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::CameraSettings)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'CameraSettings (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::CAMERASETTINGS")
  (make-package "BAXTER_CORE_MSGS::CAMERASETTINGS"))

(in-package "ROS")
;;//! \htmlinclude CameraSettings.msg.html


(defclass baxter_core_msgs::CameraSettings
  :super ros::object
  :slots (_width _height _fps _controls ))

(defmethod baxter_core_msgs::CameraSettings
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:fps __fps) 0.0)
    ((:controls __controls) (let (r) (dotimes (i 0) (push (instance baxter_core_msgs::CameraControl :init) r)) r))
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _fps (float __fps))
   (setq _controls __controls)
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:fps
   (&optional __fps)
   (if __fps (setq _fps __fps)) _fps)
  (:controls
   (&rest __controls)
   (if (keywordp (car __controls))
       (send* _controls __controls)
     (progn
       (if __controls (setq _controls (car __controls)))
       _controls)))
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32 _fps
    4
    ;; baxter_core_msgs/CameraControl[] _controls
    (apply #'+ (send-all _controls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32 _fps
       (sys::poke _fps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; baxter_core_msgs/CameraControl[] _controls
     (write-long (length _controls) s)
     (dolist (elem _controls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _fps
     (setq _fps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; baxter_core_msgs/CameraControl[] _controls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controls (let (r) (dotimes (i n) (push (instance baxter_core_msgs::CameraControl :init) r)) r))
     (dolist (elem- _controls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::CameraSettings :md5sum-) "d133bef4a3bd9a6e490a5dc91d20f429")
(setf (get baxter_core_msgs::CameraSettings :datatype-) "baxter_core_msgs/CameraSettings")
(setf (get baxter_core_msgs::CameraSettings :definition-)
      "int32           width
int32           height
float32         fps
CameraControl[] controls

================================================================================
MSG: baxter_core_msgs/CameraControl
int32   id
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



(provide :baxter_core_msgs/CameraSettings "d133bef4a3bd9a6e490a5dc91d20f429")



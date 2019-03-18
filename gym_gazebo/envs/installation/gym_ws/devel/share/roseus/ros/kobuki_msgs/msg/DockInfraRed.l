;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::DockInfraRed)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'DockInfraRed (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::DOCKINFRARED")
  (make-package "KOBUKI_MSGS::DOCKINFRARED"))

(in-package "ROS")
;;//! \htmlinclude DockInfraRed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NEAR_LEFT*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*NEAR_LEFT* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*NEAR_LEFT* 1)
(intern "*NEAR_CENTER*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*NEAR_CENTER* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*NEAR_CENTER* 2)
(intern "*NEAR_RIGHT*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*NEAR_RIGHT* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*NEAR_RIGHT* 4)
(intern "*FAR_LEFT*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*FAR_LEFT* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*FAR_LEFT* 16)
(intern "*FAR_CENTER*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*FAR_CENTER* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*FAR_CENTER* 8)
(intern "*FAR_RIGHT*" (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(shadow '*FAR_RIGHT* (find-package "KOBUKI_MSGS::DOCKINFRARED"))
(defconstant kobuki_msgs::DockInfraRed::*FAR_RIGHT* 32)
(defclass kobuki_msgs::DockInfraRed
  :super ros::object
  :slots (_header _data ))

(defmethod kobuki_msgs::DockInfraRed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get kobuki_msgs::DockInfraRed :md5sum-) "a3d77f7d15e50579473dcc24e9b97b34")
(setf (get kobuki_msgs::DockInfraRed :datatype-) "kobuki_msgs/DockInfraRed")
(setf (get kobuki_msgs::DockInfraRed :definition-)
      "# Docking base ir sensors messages.
# Generated on the proximity of the docking base to assist the automatic docking.

uint8 NEAR_LEFT   =  1
uint8 NEAR_CENTER =  2
uint8 NEAR_RIGHT  =  4
uint8 FAR_LEFT    = 16
uint8 FAR_CENTER  =  8
uint8 FAR_RIGHT   = 32

Header header
uint8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :kobuki_msgs/DockInfraRed "a3d77f7d15e50579473dcc24e9b97b34")



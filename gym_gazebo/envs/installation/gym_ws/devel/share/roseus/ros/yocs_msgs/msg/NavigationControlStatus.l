;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::NavigationControlStatus)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'NavigationControlStatus (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS")
  (make-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationControlStatus.msg.html


(intern "*ERROR*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*ERROR* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*ERROR* -1)
(intern "*IDLING*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*IDLING* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*IDLING* 0)
(intern "*RUNNING*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*RUNNING* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*RUNNING* 1)
(intern "*PAUSED*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*PAUSED* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*PAUSED* 2)
(intern "*COMPLETED*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*COMPLETED* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*COMPLETED* 3)
(intern "*CANCELLED*" (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(shadow '*CANCELLED* (find-package "YOCS_MSGS::NAVIGATIONCONTROLSTATUS"))
(defconstant yocs_msgs::NavigationControlStatus::*CANCELLED* 4)
(defclass yocs_msgs::NavigationControlStatus
  :super ros::object
  :slots (_status _status_desc ))

(defmethod yocs_msgs::NavigationControlStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:status_desc __status_desc) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _status_desc (string __status_desc))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:status_desc
   (&optional __status_desc)
   (if __status_desc (setq _status_desc __status_desc)) _status_desc)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ;; string _status_desc
    4 (length _status_desc)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;; string _status_desc
       (write-long (length _status_desc) s) (princ _status_desc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _status_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yocs_msgs::NavigationControlStatus :md5sum-) "f97c2c5903b273dd04cfb815fadb9f56")
(setf (get yocs_msgs::NavigationControlStatus :datatype-) "yocs_msgs/NavigationControlStatus")
(setf (get yocs_msgs::NavigationControlStatus :definition-)
      "# Control the way point/trajectory navigation
int8 status

int8 ERROR     = -1
int8 IDLING    = 0
int8 RUNNING   = 1
int8 PAUSED    = 2
int8 COMPLETED = 3
int8 CANCELLED = 4

# Human-readable status description
string status_desc
")



(provide :yocs_msgs/NavigationControlStatus "f97c2c5903b273dd04cfb815fadb9f56")



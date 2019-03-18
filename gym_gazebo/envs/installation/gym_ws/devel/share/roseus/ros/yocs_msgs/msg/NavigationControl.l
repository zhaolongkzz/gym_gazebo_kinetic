;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::NavigationControl)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'NavigationControl (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::NAVIGATIONCONTROL")
  (make-package "YOCS_MSGS::NAVIGATIONCONTROL"))

(in-package "ROS")
;;//! \htmlinclude NavigationControl.msg.html


(intern "*STOP*" (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(shadow '*STOP* (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(defconstant yocs_msgs::NavigationControl::*STOP* 0)
(intern "*START*" (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(shadow '*START* (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(defconstant yocs_msgs::NavigationControl::*START* 1)
(intern "*PAUSE*" (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(shadow '*PAUSE* (find-package "YOCS_MSGS::NAVIGATIONCONTROL"))
(defconstant yocs_msgs::NavigationControl::*PAUSE* 2)
(defclass yocs_msgs::NavigationControl
  :super ros::object
  :slots (_control _goal_name ))

(defmethod yocs_msgs::NavigationControl
  (:init
   (&key
    ((:control __control) 0)
    ((:goal_name __goal_name) "")
    )
   (send-super :init)
   (setq _control (round __control))
   (setq _goal_name (string __goal_name))
   self)
  (:control
   (&optional __control)
   (if __control (setq _control __control)) _control)
  (:goal_name
   (&optional __goal_name)
   (if __goal_name (setq _goal_name __goal_name)) _goal_name)
  (:serialization-length
   ()
   (+
    ;; int8 _control
    1
    ;; string _goal_name
    4 (length _goal_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _control
       (write-byte _control s)
     ;; string _goal_name
       (write-long (length _goal_name) s) (princ _goal_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _control
     (setq _control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _control 127) (setq _control (- _control 256)))
   ;; string _goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yocs_msgs::NavigationControl :md5sum-) "f2ddf02b376d1d00aed5addfb5cfe0ba")
(setf (get yocs_msgs::NavigationControl :datatype-) "yocs_msgs/NavigationControl")
(setf (get yocs_msgs::NavigationControl :definition-)
      "# control the way point/trajectory navigation
int8 control

int8 STOP  = 0
int8 START = 1
int8 PAUSE = 2

# name of the way point(s) / trajectory to be execute
# leave empty, when stopping or pausing
string goal_name
")



(provide :yocs_msgs/NavigationControl "f2ddf02b376d1d00aed5addfb5cfe0ba")



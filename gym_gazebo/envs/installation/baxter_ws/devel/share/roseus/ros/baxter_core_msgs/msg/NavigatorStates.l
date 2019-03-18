;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::NavigatorStates)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'NavigatorStates (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::NAVIGATORSTATES")
  (make-package "BAXTER_CORE_MSGS::NAVIGATORSTATES"))

(in-package "ROS")
;;//! \htmlinclude NavigatorStates.msg.html


(defclass baxter_core_msgs::NavigatorStates
  :super ros::object
  :slots (_names _states ))

(defmethod baxter_core_msgs::NavigatorStates
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:states __states) (let (r) (dotimes (i 0) (push (instance baxter_core_msgs::NavigatorState :init) r)) r))
    )
   (send-super :init)
   (setq _names __names)
   (setq _states __states)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; baxter_core_msgs/NavigatorState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; baxter_core_msgs/NavigatorState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; baxter_core_msgs/NavigatorState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance baxter_core_msgs::NavigatorState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::NavigatorStates :md5sum-) "2c2eeb02fbbaa6f1ab6c680887f2db78")
(setf (get baxter_core_msgs::NavigatorStates :datatype-) "baxter_core_msgs/NavigatorStates")
(setf (get baxter_core_msgs::NavigatorStates :definition-)
      "# used when publishing multiple navigators
string[]         names
NavigatorState[] states

================================================================================
MSG: baxter_core_msgs/NavigatorState
# buttons
string[] button_names
bool[] buttons

# wheel position
uint8   wheel

# true if the light is on, false if not
# lights map to button names
string[] light_names
bool[] lights

")



(provide :baxter_core_msgs/NavigatorStates "2c2eeb02fbbaa6f1ab6c680887f2db78")



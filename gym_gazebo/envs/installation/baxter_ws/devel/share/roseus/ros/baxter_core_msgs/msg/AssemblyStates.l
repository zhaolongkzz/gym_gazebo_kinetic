;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::AssemblyStates)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'AssemblyStates (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ASSEMBLYSTATES")
  (make-package "BAXTER_CORE_MSGS::ASSEMBLYSTATES"))

(in-package "ROS")
;;//! \htmlinclude AssemblyStates.msg.html


(defclass baxter_core_msgs::AssemblyStates
  :super ros::object
  :slots (_names _states ))

(defmethod baxter_core_msgs::AssemblyStates
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:states __states) (let (r) (dotimes (i 0) (push (instance baxter_core_msgs::AssemblyState :init) r)) r))
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
    ;; baxter_core_msgs/AssemblyState[] _states
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
     ;; baxter_core_msgs/AssemblyState[] _states
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
   ;; baxter_core_msgs/AssemblyState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance baxter_core_msgs::AssemblyState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::AssemblyStates :md5sum-) "63427318d41dbd2077c105027ad82a2b")
(setf (get baxter_core_msgs::AssemblyStates :datatype-) "baxter_core_msgs/AssemblyStates")
(setf (get baxter_core_msgs::AssemblyStates :definition-)
      "string[] names
AssemblyState[] states
================================================================================
MSG: baxter_core_msgs/AssemblyState
bool ready               # true if enabled and ready to operate, e.g., not homing
bool enabled             # true if enabled
bool stopped             # true if stopped -- e-stop asserted
bool error               # true if a component of the assembly has an error
#
# The following are specific to the robot top-level assembly:
uint8  estop_button      # One of the following:
  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed
  uint8   ESTOP_BUTTON_PRESSED   = 1
  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source
  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.
#
uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:
  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted
  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)
  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown
  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault
  uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat

")



(provide :baxter_core_msgs/AssemblyStates "63427318d41dbd2077c105027ad82a2b")



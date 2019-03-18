;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ControllersStatistics)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ControllersStatistics (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSSTATISTICS")
  (make-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude ControllersStatistics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass controller_manager_msgs::ControllersStatistics
  :super ros::object
  :slots (_header _controller ))

(defmethod controller_manager_msgs::ControllersStatistics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controller __controller) (let (r) (dotimes (i 0) (push (instance controller_manager_msgs::ControllerStatistics :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _controller __controller)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; controller_manager_msgs/ControllerStatistics[] _controller
    (apply #'+ (send-all _controller :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; controller_manager_msgs/ControllerStatistics[] _controller
     (write-long (length _controller) s)
     (dolist (elem _controller)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; controller_manager_msgs/ControllerStatistics[] _controller
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controller (let (r) (dotimes (i n) (push (instance controller_manager_msgs::ControllerStatistics :init) r)) r))
     (dolist (elem- _controller)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get controller_manager_msgs::ControllersStatistics :md5sum-) "a154c347736773e3700d1719105df29d")
(setf (get controller_manager_msgs::ControllersStatistics :datatype-) "controller_manager_msgs/ControllersStatistics")
(setf (get controller_manager_msgs::ControllersStatistics :definition-)
      "std_msgs/Header header
controller_manager_msgs/ControllerStatistics[] controller

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

================================================================================
MSG: controller_manager_msgs/ControllerStatistics
# This message contains the state of one realtime controller
# that was spawned in the controller manager

# the name of the controller
string name

# the type of the controller
string type

# the time at which these controller statistics were measured
time timestamp

# bool that indicates if the controller is currently
# in a running or a stopped state
bool running

# the maximum time the update loop of the controller ever needed to complete
duration max_time

# the average time the update loop of the controller needs to complete.
# the average is computed in a sliding time window.
duration mean_time

# the variance on the time the update loop of the controller needs to complete.
# the variance applies to a sliding time window.
duration variance_time

# the number of times this controller broke the realtime loop
int32 num_control_loop_overruns

# the timestamp of the last time this controller broke the realtime loop
time time_last_control_loop_overrun
")



(provide :controller_manager_msgs/ControllersStatistics "a154c347736773e3700d1719105df29d")



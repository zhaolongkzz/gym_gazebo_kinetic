;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ControllerStatistics)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ControllerStatistics (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSTATISTICS")
  (make-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude ControllerStatistics.msg.html


(defclass controller_manager_msgs::ControllerStatistics
  :super ros::object
  :slots (_name _type _timestamp _running _max_time _mean_time _variance_time _num_control_loop_overruns _time_last_control_loop_overrun ))

(defmethod controller_manager_msgs::ControllerStatistics
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:running __running) nil)
    ((:max_time __max_time) (instance ros::time :init))
    ((:mean_time __mean_time) (instance ros::time :init))
    ((:variance_time __variance_time) (instance ros::time :init))
    ((:num_control_loop_overruns __num_control_loop_overruns) 0)
    ((:time_last_control_loop_overrun __time_last_control_loop_overrun) (instance ros::time :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _timestamp __timestamp)
   (setq _running __running)
   (setq _max_time __max_time)
   (setq _mean_time __mean_time)
   (setq _variance_time __variance_time)
   (setq _num_control_loop_overruns (round __num_control_loop_overruns))
   (setq _time_last_control_loop_overrun __time_last_control_loop_overrun)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:max_time
   (&optional __max_time)
   (if __max_time (setq _max_time __max_time)) _max_time)
  (:mean_time
   (&optional __mean_time)
   (if __mean_time (setq _mean_time __mean_time)) _mean_time)
  (:variance_time
   (&optional __variance_time)
   (if __variance_time (setq _variance_time __variance_time)) _variance_time)
  (:num_control_loop_overruns
   (&optional __num_control_loop_overruns)
   (if __num_control_loop_overruns (setq _num_control_loop_overruns __num_control_loop_overruns)) _num_control_loop_overruns)
  (:time_last_control_loop_overrun
   (&optional __time_last_control_loop_overrun)
   (if __time_last_control_loop_overrun (setq _time_last_control_loop_overrun __time_last_control_loop_overrun)) _time_last_control_loop_overrun)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; time _timestamp
    8
    ;; bool _running
    1
    ;; duration _max_time
    8
    ;; duration _mean_time
    8
    ;; duration _variance_time
    8
    ;; int32 _num_control_loop_overruns
    4
    ;; time _time_last_control_loop_overrun
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; duration _max_time
       (write-long (send _max_time :sec) s) (write-long (send _max_time :nsec) s)
     ;; duration _mean_time
       (write-long (send _mean_time :sec) s) (write-long (send _mean_time :nsec) s)
     ;; duration _variance_time
       (write-long (send _variance_time :sec) s) (write-long (send _variance_time :nsec) s)
     ;; int32 _num_control_loop_overruns
       (write-long _num_control_loop_overruns s)
     ;; time _time_last_control_loop_overrun
       (write-long (send _time_last_control_loop_overrun :sec) s) (write-long (send _time_last_control_loop_overrun :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _max_time
     (send _max_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _max_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _mean_time
     (send _mean_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _mean_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _variance_time
     (send _variance_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _variance_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_control_loop_overruns
     (setq _num_control_loop_overruns (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _time_last_control_loop_overrun
     (send _time_last_control_loop_overrun :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_last_control_loop_overrun :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get controller_manager_msgs::ControllerStatistics :md5sum-) "697780c372c8d8597a1436d0e2ad3ba8")
(setf (get controller_manager_msgs::ControllerStatistics :datatype-) "controller_manager_msgs/ControllerStatistics")
(setf (get controller_manager_msgs::ControllerStatistics :definition-)
      "# This message contains the state of one realtime controller
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



(provide :controller_manager_msgs/ControllerStatistics "697780c372c8d8597a1436d0e2ad3ba8")



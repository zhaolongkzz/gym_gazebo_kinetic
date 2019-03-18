;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::SEAJointState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'SEAJointState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::SEAJOINTSTATE")
  (make-package "BAXTER_CORE_MSGS::SEAJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude SEAJointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass baxter_core_msgs::SEAJointState
  :super ros::object
  :slots (_header _name _commanded_position _commanded_velocity _commanded_acceleration _commanded_effort _actual_position _actual_velocity _actual_effort _gravity_model_effort _gravity_only _hysteresis_model_effort _crosstalk_model_effort _hystState ))

(defmethod baxter_core_msgs::SEAJointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:commanded_position __commanded_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:commanded_velocity __commanded_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:commanded_acceleration __commanded_acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:commanded_effort __commanded_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actual_position __actual_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actual_velocity __actual_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actual_effort __actual_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gravity_model_effort __gravity_model_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gravity_only __gravity_only) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hysteresis_model_effort __hysteresis_model_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:crosstalk_model_effort __crosstalk_model_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hystState __hystState) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _commanded_position __commanded_position)
   (setq _commanded_velocity __commanded_velocity)
   (setq _commanded_acceleration __commanded_acceleration)
   (setq _commanded_effort __commanded_effort)
   (setq _actual_position __actual_position)
   (setq _actual_velocity __actual_velocity)
   (setq _actual_effort __actual_effort)
   (setq _gravity_model_effort __gravity_model_effort)
   (setq _gravity_only __gravity_only)
   (setq _hysteresis_model_effort __hysteresis_model_effort)
   (setq _crosstalk_model_effort __crosstalk_model_effort)
   (setq _hystState (float __hystState))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:commanded_position
   (&optional __commanded_position)
   (if __commanded_position (setq _commanded_position __commanded_position)) _commanded_position)
  (:commanded_velocity
   (&optional __commanded_velocity)
   (if __commanded_velocity (setq _commanded_velocity __commanded_velocity)) _commanded_velocity)
  (:commanded_acceleration
   (&optional __commanded_acceleration)
   (if __commanded_acceleration (setq _commanded_acceleration __commanded_acceleration)) _commanded_acceleration)
  (:commanded_effort
   (&optional __commanded_effort)
   (if __commanded_effort (setq _commanded_effort __commanded_effort)) _commanded_effort)
  (:actual_position
   (&optional __actual_position)
   (if __actual_position (setq _actual_position __actual_position)) _actual_position)
  (:actual_velocity
   (&optional __actual_velocity)
   (if __actual_velocity (setq _actual_velocity __actual_velocity)) _actual_velocity)
  (:actual_effort
   (&optional __actual_effort)
   (if __actual_effort (setq _actual_effort __actual_effort)) _actual_effort)
  (:gravity_model_effort
   (&optional __gravity_model_effort)
   (if __gravity_model_effort (setq _gravity_model_effort __gravity_model_effort)) _gravity_model_effort)
  (:gravity_only
   (&optional __gravity_only)
   (if __gravity_only (setq _gravity_only __gravity_only)) _gravity_only)
  (:hysteresis_model_effort
   (&optional __hysteresis_model_effort)
   (if __hysteresis_model_effort (setq _hysteresis_model_effort __hysteresis_model_effort)) _hysteresis_model_effort)
  (:crosstalk_model_effort
   (&optional __crosstalk_model_effort)
   (if __crosstalk_model_effort (setq _crosstalk_model_effort __crosstalk_model_effort)) _crosstalk_model_effort)
  (:hystState
   (&optional __hystState)
   (if __hystState (setq _hystState __hystState)) _hystState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _commanded_position
    (* 8    (length _commanded_position)) 4
    ;; float64[] _commanded_velocity
    (* 8    (length _commanded_velocity)) 4
    ;; float64[] _commanded_acceleration
    (* 8    (length _commanded_acceleration)) 4
    ;; float64[] _commanded_effort
    (* 8    (length _commanded_effort)) 4
    ;; float64[] _actual_position
    (* 8    (length _actual_position)) 4
    ;; float64[] _actual_velocity
    (* 8    (length _actual_velocity)) 4
    ;; float64[] _actual_effort
    (* 8    (length _actual_effort)) 4
    ;; float64[] _gravity_model_effort
    (* 8    (length _gravity_model_effort)) 4
    ;; float64[] _gravity_only
    (* 8    (length _gravity_only)) 4
    ;; float64[] _hysteresis_model_effort
    (* 8    (length _hysteresis_model_effort)) 4
    ;; float64[] _crosstalk_model_effort
    (* 8    (length _crosstalk_model_effort)) 4
    ;; float64 _hystState
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _commanded_position
     (write-long (length _commanded_position) s)
     (dotimes (i (length _commanded_position))
       (sys::poke (elt _commanded_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _commanded_velocity
     (write-long (length _commanded_velocity) s)
     (dotimes (i (length _commanded_velocity))
       (sys::poke (elt _commanded_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _commanded_acceleration
     (write-long (length _commanded_acceleration) s)
     (dotimes (i (length _commanded_acceleration))
       (sys::poke (elt _commanded_acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _commanded_effort
     (write-long (length _commanded_effort) s)
     (dotimes (i (length _commanded_effort))
       (sys::poke (elt _commanded_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _actual_position
     (write-long (length _actual_position) s)
     (dotimes (i (length _actual_position))
       (sys::poke (elt _actual_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _actual_velocity
     (write-long (length _actual_velocity) s)
     (dotimes (i (length _actual_velocity))
       (sys::poke (elt _actual_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _actual_effort
     (write-long (length _actual_effort) s)
     (dotimes (i (length _actual_effort))
       (sys::poke (elt _actual_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gravity_model_effort
     (write-long (length _gravity_model_effort) s)
     (dotimes (i (length _gravity_model_effort))
       (sys::poke (elt _gravity_model_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gravity_only
     (write-long (length _gravity_only) s)
     (dotimes (i (length _gravity_only))
       (sys::poke (elt _gravity_only i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _hysteresis_model_effort
     (write-long (length _hysteresis_model_effort) s)
     (dotimes (i (length _hysteresis_model_effort))
       (sys::poke (elt _hysteresis_model_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _crosstalk_model_effort
     (write-long (length _crosstalk_model_effort) s)
     (dotimes (i (length _crosstalk_model_effort))
       (sys::poke (elt _crosstalk_model_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _hystState
       (sys::poke _hystState (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _commanded_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commanded_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _commanded_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _commanded_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commanded_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _commanded_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _commanded_acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commanded_acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _commanded_acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _commanded_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commanded_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _commanded_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _actual_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actual_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actual_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _actual_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actual_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actual_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _actual_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actual_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actual_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gravity_model_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gravity_model_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gravity_model_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gravity_only
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gravity_only (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gravity_only i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _hysteresis_model_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hysteresis_model_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hysteresis_model_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _crosstalk_model_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crosstalk_model_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _crosstalk_model_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _hystState
     (setq _hystState (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get baxter_core_msgs::SEAJointState :md5sum-) "d36406dcbb6d860b1b39c4e28f81352b")
(setf (get baxter_core_msgs::SEAJointState :datatype-) "baxter_core_msgs/SEAJointState")
(setf (get baxter_core_msgs::SEAJointState :definition-)
      "# This is a message that holds data to describe the state of a set of torque controlled joints.
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state.
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty.
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[]  name
float64[] commanded_position
float64[] commanded_velocity
float64[] commanded_acceleration
float64[] commanded_effort
float64[] actual_position
float64[] actual_velocity
float64[] actual_effort
# This includes the inertial feed forward torques when applicable.
float64[] gravity_model_effort
# This is the torque required to hold the arm against gravity returned by KDL
# if the arm was stationary.  This does not include inertial feed forward
# torques (even when we have them) or any of the corrections (i.e. spring
# hysteresis, crosstalk, etc) we make to the KDL model.
float64[] gravity_only
float64[] hysteresis_model_effort
float64[] crosstalk_model_effort
float64   hystState
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



(provide :baxter_core_msgs/SEAJointState "d36406dcbb6d860b1b39c4e28f81352b")



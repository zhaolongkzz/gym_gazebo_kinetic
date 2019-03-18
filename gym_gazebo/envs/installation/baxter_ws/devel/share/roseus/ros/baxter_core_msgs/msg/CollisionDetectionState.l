;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::CollisionDetectionState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'CollisionDetectionState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::COLLISIONDETECTIONSTATE")
  (make-package "BAXTER_CORE_MSGS::COLLISIONDETECTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude CollisionDetectionState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass baxter_core_msgs::CollisionDetectionState
  :super ros::object
  :slots (_header _collision_state ))

(defmethod baxter_core_msgs::CollisionDetectionState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:collision_state __collision_state) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _collision_state __collision_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:collision_state
   (&optional __collision_state)
   (if __collision_state (setq _collision_state __collision_state)) _collision_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _collision_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _collision_state
       (if _collision_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _collision_state
     (setq _collision_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::CollisionDetectionState :md5sum-) "7bde38c182b4d08fdc0635b116f65d04")
(setf (get baxter_core_msgs::CollisionDetectionState :datatype-) "baxter_core_msgs/CollisionDetectionState")
(setf (get baxter_core_msgs::CollisionDetectionState :definition-)
      "std_msgs/Header header
bool collision_state

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



(provide :baxter_core_msgs/CollisionDetectionState "7bde38c182b4d08fdc0635b116f65d04")



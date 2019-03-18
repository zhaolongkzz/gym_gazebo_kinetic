;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::CollisionAvoidanceState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'CollisionAvoidanceState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::COLLISIONAVOIDANCESTATE")
  (make-package "BAXTER_CORE_MSGS::COLLISIONAVOIDANCESTATE"))

(in-package "ROS")
;;//! \htmlinclude CollisionAvoidanceState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass baxter_core_msgs::CollisionAvoidanceState
  :super ros::object
  :slots (_header _other_arm _collision_object ))

(defmethod baxter_core_msgs::CollisionAvoidanceState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:other_arm __other_arm) nil)
    ((:collision_object __collision_object) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _other_arm __other_arm)
   (setq _collision_object __collision_object)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:other_arm
   (&optional __other_arm)
   (if __other_arm (setq _other_arm __other_arm)) _other_arm)
  (:collision_object
   (&optional __collision_object)
   (if __collision_object (setq _collision_object __collision_object)) _collision_object)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _other_arm
    1
    ;; string[] _collision_object
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _collision_object)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _other_arm
       (if _other_arm (write-byte -1 s) (write-byte 0 s))
     ;; string[] _collision_object
     (write-long (length _collision_object) s)
     (dolist (elem _collision_object)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _other_arm
     (setq _other_arm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _collision_object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collision_object (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _collision_object i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::CollisionAvoidanceState :md5sum-) "30f5cb8ae019f1ffe8b599e6d2e589c7")
(setf (get baxter_core_msgs::CollisionAvoidanceState :datatype-) "baxter_core_msgs/CollisionAvoidanceState")
(setf (get baxter_core_msgs::CollisionAvoidanceState :definition-)
      "std_msgs/Header header
bool other_arm
string[] collision_object
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



(provide :baxter_core_msgs/CollisionAvoidanceState "30f5cb8ae019f1ffe8b599e6d2e589c7")



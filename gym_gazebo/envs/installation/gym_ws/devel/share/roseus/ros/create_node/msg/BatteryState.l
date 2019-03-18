;; Auto-generated. Do not edit!


(when (boundp 'create_node::BatteryState)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'BatteryState (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::BATTERYSTATE")
  (make-package "CREATE_NODE::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass create_node::BatteryState
  :super ros::object
  :slots (_header _temperature _charge _capacity ))

(defmethod create_node::BatteryState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temperature __temperature) 0)
    ((:charge __charge) 0)
    ((:capacity __capacity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temperature (round __temperature))
   (setq _charge (round __charge))
   (setq _capacity (round __capacity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:capacity
   (&optional __capacity)
   (if __capacity (setq _capacity __capacity)) _capacity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _temperature
    1
    ;; uint16 _charge
    2
    ;; uint16 _capacity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _temperature
       (write-byte _temperature s)
     ;; uint16 _charge
       (write-word _charge s)
     ;; uint16 _capacity
       (write-word _capacity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temperature 127) (setq _temperature (- _temperature 256)))
   ;; uint16 _charge
     (setq _charge (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _capacity
     (setq _capacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get create_node::BatteryState :md5sum-) "481447a4e24f212e7b403e4f04aa2ac9")
(setf (get create_node::BatteryState :datatype-) "create_node/BatteryState")
(setf (get create_node::BatteryState :definition-)
      "Header header
int8 temperature
uint16 charge
uint16 capacity

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



(provide :create_node/BatteryState "481447a4e24f212e7b403e4f04aa2ac9")



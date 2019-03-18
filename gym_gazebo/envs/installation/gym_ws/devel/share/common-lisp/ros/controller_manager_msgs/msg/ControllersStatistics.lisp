; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-msg)


;//! \htmlinclude ControllersStatistics.msg.html

(cl:defclass <ControllersStatistics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controller
    :reader controller
    :initarg :controller
    :type (cl:vector controller_manager_msgs-msg:ControllerStatistics)
   :initform (cl:make-array 0 :element-type 'controller_manager_msgs-msg:ControllerStatistics :initial-element (cl:make-instance 'controller_manager_msgs-msg:ControllerStatistics))))
)

(cl:defclass ControllersStatistics (<ControllersStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllersStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllersStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-msg:<ControllersStatistics> is deprecated: use controller_manager_msgs-msg:ControllersStatistics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControllersStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:header-val is deprecated.  Use controller_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <ControllersStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:controller-val is deprecated.  Use controller_manager_msgs-msg:controller instead.")
  (controller m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllersStatistics>) ostream)
  "Serializes a message object of type '<ControllersStatistics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controller))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllersStatistics>) istream)
  "Deserializes a message object of type '<ControllersStatistics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controller) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controller)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'controller_manager_msgs-msg:ControllerStatistics))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllersStatistics>)))
  "Returns string type for a message object of type '<ControllersStatistics>"
  "controller_manager_msgs/ControllersStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllersStatistics)))
  "Returns string type for a message object of type 'ControllersStatistics"
  "controller_manager_msgs/ControllersStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllersStatistics>)))
  "Returns md5sum for a message object of type '<ControllersStatistics>"
  "a154c347736773e3700d1719105df29d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllersStatistics)))
  "Returns md5sum for a message object of type 'ControllersStatistics"
  "a154c347736773e3700d1719105df29d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllersStatistics>)))
  "Returns full string definition for message of type '<ControllersStatistics>"
  (cl:format cl:nil "std_msgs/Header header~%controller_manager_msgs/ControllerStatistics[] controller~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: controller_manager_msgs/ControllerStatistics~%# This message contains the state of one realtime controller~%# that was spawned in the controller manager~%~%# the name of the controller~%string name~%~%# the type of the controller~%string type~%~%# the time at which these controller statistics were measured~%time timestamp~%~%# bool that indicates if the controller is currently~%# in a running or a stopped state~%bool running~%~%# the maximum time the update loop of the controller ever needed to complete~%duration max_time~%~%# the average time the update loop of the controller needs to complete.~%# the average is computed in a sliding time window.~%duration mean_time~%~%# the variance on the time the update loop of the controller needs to complete.~%# the variance applies to a sliding time window.~%duration variance_time~%~%# the number of times this controller broke the realtime loop~%int32 num_control_loop_overruns~%~%# the timestamp of the last time this controller broke the realtime loop~%time time_last_control_loop_overrun~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllersStatistics)))
  "Returns full string definition for message of type 'ControllersStatistics"
  (cl:format cl:nil "std_msgs/Header header~%controller_manager_msgs/ControllerStatistics[] controller~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: controller_manager_msgs/ControllerStatistics~%# This message contains the state of one realtime controller~%# that was spawned in the controller manager~%~%# the name of the controller~%string name~%~%# the type of the controller~%string type~%~%# the time at which these controller statistics were measured~%time timestamp~%~%# bool that indicates if the controller is currently~%# in a running or a stopped state~%bool running~%~%# the maximum time the update loop of the controller ever needed to complete~%duration max_time~%~%# the average time the update loop of the controller needs to complete.~%# the average is computed in a sliding time window.~%duration mean_time~%~%# the variance on the time the update loop of the controller needs to complete.~%# the variance applies to a sliding time window.~%duration variance_time~%~%# the number of times this controller broke the realtime loop~%int32 num_control_loop_overruns~%~%# the timestamp of the last time this controller broke the realtime loop~%time time_last_control_loop_overrun~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllersStatistics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controller) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllersStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllersStatistics
    (cl:cons ':header (header msg))
    (cl:cons ':controller (controller msg))
))

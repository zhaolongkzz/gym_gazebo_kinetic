; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-msg)


;//! \htmlinclude ControllerStatistics.msg.html

(cl:defclass <ControllerStatistics> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (running
    :reader running
    :initarg :running
    :type cl:boolean
    :initform cl:nil)
   (max_time
    :reader max_time
    :initarg :max_time
    :type cl:real
    :initform 0)
   (mean_time
    :reader mean_time
    :initarg :mean_time
    :type cl:real
    :initform 0)
   (variance_time
    :reader variance_time
    :initarg :variance_time
    :type cl:real
    :initform 0)
   (num_control_loop_overruns
    :reader num_control_loop_overruns
    :initarg :num_control_loop_overruns
    :type cl:integer
    :initform 0)
   (time_last_control_loop_overrun
    :reader time_last_control_loop_overrun
    :initarg :time_last_control_loop_overrun
    :type cl:real
    :initform 0))
)

(cl:defclass ControllerStatistics (<ControllerStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-msg:<ControllerStatistics> is deprecated: use controller_manager_msgs-msg:ControllerStatistics instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:name-val is deprecated.  Use controller_manager_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:type-val is deprecated.  Use controller_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:timestamp-val is deprecated.  Use controller_manager_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:running-val is deprecated.  Use controller_manager_msgs-msg:running instead.")
  (running m))

(cl:ensure-generic-function 'max_time-val :lambda-list '(m))
(cl:defmethod max_time-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:max_time-val is deprecated.  Use controller_manager_msgs-msg:max_time instead.")
  (max_time m))

(cl:ensure-generic-function 'mean_time-val :lambda-list '(m))
(cl:defmethod mean_time-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:mean_time-val is deprecated.  Use controller_manager_msgs-msg:mean_time instead.")
  (mean_time m))

(cl:ensure-generic-function 'variance_time-val :lambda-list '(m))
(cl:defmethod variance_time-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:variance_time-val is deprecated.  Use controller_manager_msgs-msg:variance_time instead.")
  (variance_time m))

(cl:ensure-generic-function 'num_control_loop_overruns-val :lambda-list '(m))
(cl:defmethod num_control_loop_overruns-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:num_control_loop_overruns-val is deprecated.  Use controller_manager_msgs-msg:num_control_loop_overruns instead.")
  (num_control_loop_overruns m))

(cl:ensure-generic-function 'time_last_control_loop_overrun-val :lambda-list '(m))
(cl:defmethod time_last_control_loop_overrun-val ((m <ControllerStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:time_last_control_loop_overrun-val is deprecated.  Use controller_manager_msgs-msg:time_last_control_loop_overrun instead.")
  (time_last_control_loop_overrun m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerStatistics>) ostream)
  "Serializes a message object of type '<ControllerStatistics>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'max_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'max_time) (cl:floor (cl:slot-value msg 'max_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'mean_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'mean_time) (cl:floor (cl:slot-value msg 'mean_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'variance_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'variance_time) (cl:floor (cl:slot-value msg 'variance_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num_control_loop_overruns)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_last_control_loop_overrun)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_last_control_loop_overrun) (cl:floor (cl:slot-value msg 'time_last_control_loop_overrun)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerStatistics>) istream)
  "Deserializes a message object of type '<ControllerStatistics>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mean_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'variance_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_control_loop_overruns) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_last_control_loop_overrun) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerStatistics>)))
  "Returns string type for a message object of type '<ControllerStatistics>"
  "controller_manager_msgs/ControllerStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerStatistics)))
  "Returns string type for a message object of type 'ControllerStatistics"
  "controller_manager_msgs/ControllerStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerStatistics>)))
  "Returns md5sum for a message object of type '<ControllerStatistics>"
  "697780c372c8d8597a1436d0e2ad3ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerStatistics)))
  "Returns md5sum for a message object of type 'ControllerStatistics"
  "697780c372c8d8597a1436d0e2ad3ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerStatistics>)))
  "Returns full string definition for message of type '<ControllerStatistics>"
  (cl:format cl:nil "# This message contains the state of one realtime controller~%# that was spawned in the controller manager~%~%# the name of the controller~%string name~%~%# the type of the controller~%string type~%~%# the time at which these controller statistics were measured~%time timestamp~%~%# bool that indicates if the controller is currently~%# in a running or a stopped state~%bool running~%~%# the maximum time the update loop of the controller ever needed to complete~%duration max_time~%~%# the average time the update loop of the controller needs to complete.~%# the average is computed in a sliding time window.~%duration mean_time~%~%# the variance on the time the update loop of the controller needs to complete.~%# the variance applies to a sliding time window.~%duration variance_time~%~%# the number of times this controller broke the realtime loop~%int32 num_control_loop_overruns~%~%# the timestamp of the last time this controller broke the realtime loop~%time time_last_control_loop_overrun~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerStatistics)))
  "Returns full string definition for message of type 'ControllerStatistics"
  (cl:format cl:nil "# This message contains the state of one realtime controller~%# that was spawned in the controller manager~%~%# the name of the controller~%string name~%~%# the type of the controller~%string type~%~%# the time at which these controller statistics were measured~%time timestamp~%~%# bool that indicates if the controller is currently~%# in a running or a stopped state~%bool running~%~%# the maximum time the update loop of the controller ever needed to complete~%duration max_time~%~%# the average time the update loop of the controller needs to complete.~%# the average is computed in a sliding time window.~%duration mean_time~%~%# the variance on the time the update loop of the controller needs to complete.~%# the variance applies to a sliding time window.~%duration variance_time~%~%# the number of times this controller broke the realtime loop~%int32 num_control_loop_overruns~%~%# the timestamp of the last time this controller broke the realtime loop~%time time_last_control_loop_overrun~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerStatistics>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     8
     1
     8
     8
     8
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerStatistics
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':running (running msg))
    (cl:cons ':max_time (max_time msg))
    (cl:cons ':mean_time (mean_time msg))
    (cl:cons ':variance_time (variance_time msg))
    (cl:cons ':num_control_loop_overruns (num_control_loop_overruns msg))
    (cl:cons ':time_last_control_loop_overrun (time_last_control_loop_overrun msg))
))

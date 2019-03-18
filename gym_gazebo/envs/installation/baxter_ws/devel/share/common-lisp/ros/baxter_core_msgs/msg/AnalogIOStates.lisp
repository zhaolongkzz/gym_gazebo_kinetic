; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude AnalogIOStates.msg.html

(cl:defclass <AnalogIOStates> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (states
    :reader states
    :initarg :states
    :type (cl:vector baxter_core_msgs-msg:AnalogIOState)
   :initform (cl:make-array 0 :element-type 'baxter_core_msgs-msg:AnalogIOState :initial-element (cl:make-instance 'baxter_core_msgs-msg:AnalogIOState))))
)

(cl:defclass AnalogIOStates (<AnalogIOStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogIOStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogIOStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<AnalogIOStates> is deprecated: use baxter_core_msgs-msg:AnalogIOStates instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <AnalogIOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:names-val is deprecated.  Use baxter_core_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <AnalogIOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:states-val is deprecated.  Use baxter_core_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogIOStates>) ostream)
  "Serializes a message object of type '<AnalogIOStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogIOStates>) istream)
  "Deserializes a message object of type '<AnalogIOStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'baxter_core_msgs-msg:AnalogIOState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogIOStates>)))
  "Returns string type for a message object of type '<AnalogIOStates>"
  "baxter_core_msgs/AnalogIOStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogIOStates)))
  "Returns string type for a message object of type 'AnalogIOStates"
  "baxter_core_msgs/AnalogIOStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogIOStates>)))
  "Returns md5sum for a message object of type '<AnalogIOStates>"
  "0a05ba3bbb53a8a3b164e34946d619f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogIOStates)))
  "Returns md5sum for a message object of type 'AnalogIOStates"
  "0a05ba3bbb53a8a3b164e34946d619f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogIOStates>)))
  "Returns full string definition for message of type '<AnalogIOStates>"
  (cl:format cl:nil "string[]         names~%AnalogIOState[] states~%================================================================================~%MSG: baxter_core_msgs/AnalogIOState~%time timestamp~%float64 value~%bool isInputOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogIOStates)))
  "Returns full string definition for message of type 'AnalogIOStates"
  (cl:format cl:nil "string[]         names~%AnalogIOState[] states~%================================================================================~%MSG: baxter_core_msgs/AnalogIOState~%time timestamp~%float64 value~%bool isInputOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogIOStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogIOStates>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogIOStates
    (cl:cons ':names (names msg))
    (cl:cons ':states (states msg))
))

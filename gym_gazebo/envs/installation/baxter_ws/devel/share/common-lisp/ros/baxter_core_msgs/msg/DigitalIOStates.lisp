; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude DigitalIOStates.msg.html

(cl:defclass <DigitalIOStates> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (states
    :reader states
    :initarg :states
    :type (cl:vector baxter_core_msgs-msg:DigitalIOState)
   :initform (cl:make-array 0 :element-type 'baxter_core_msgs-msg:DigitalIOState :initial-element (cl:make-instance 'baxter_core_msgs-msg:DigitalIOState))))
)

(cl:defclass DigitalIOStates (<DigitalIOStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalIOStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalIOStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<DigitalIOStates> is deprecated: use baxter_core_msgs-msg:DigitalIOStates instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <DigitalIOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:names-val is deprecated.  Use baxter_core_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <DigitalIOStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:states-val is deprecated.  Use baxter_core_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalIOStates>) ostream)
  "Serializes a message object of type '<DigitalIOStates>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalIOStates>) istream)
  "Deserializes a message object of type '<DigitalIOStates>"
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'baxter_core_msgs-msg:DigitalIOState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalIOStates>)))
  "Returns string type for a message object of type '<DigitalIOStates>"
  "baxter_core_msgs/DigitalIOStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalIOStates)))
  "Returns string type for a message object of type 'DigitalIOStates"
  "baxter_core_msgs/DigitalIOStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalIOStates>)))
  "Returns md5sum for a message object of type '<DigitalIOStates>"
  "d434210c6ec20947fec667d6c13d6062")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalIOStates)))
  "Returns md5sum for a message object of type 'DigitalIOStates"
  "d434210c6ec20947fec667d6c13d6062")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalIOStates>)))
  "Returns full string definition for message of type '<DigitalIOStates>"
  (cl:format cl:nil "string[]         names~%DigitalIOState[] states~%================================================================================~%MSG: baxter_core_msgs/DigitalIOState~%int8 state~%bool isInputOnly~%~%int8 OFF = 0~%int8 ON  = 1~%int8 PRESSED = 1~%int8 UNPRESSED = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalIOStates)))
  "Returns full string definition for message of type 'DigitalIOStates"
  (cl:format cl:nil "string[]         names~%DigitalIOState[] states~%================================================================================~%MSG: baxter_core_msgs/DigitalIOState~%int8 state~%bool isInputOnly~%~%int8 OFF = 0~%int8 ON  = 1~%int8 PRESSED = 1~%int8 UNPRESSED = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalIOStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalIOStates>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalIOStates
    (cl:cons ':names (names msg))
    (cl:cons ':states (states msg))
))

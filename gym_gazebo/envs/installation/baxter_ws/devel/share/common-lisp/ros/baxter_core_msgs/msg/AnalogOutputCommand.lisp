; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude AnalogOutputCommand.msg.html

(cl:defclass <AnalogOutputCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AnalogOutputCommand (<AnalogOutputCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogOutputCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogOutputCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<AnalogOutputCommand> is deprecated: use baxter_core_msgs-msg:AnalogOutputCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AnalogOutputCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:name-val is deprecated.  Use baxter_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AnalogOutputCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:value-val is deprecated.  Use baxter_core_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogOutputCommand>) ostream)
  "Serializes a message object of type '<AnalogOutputCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogOutputCommand>) istream)
  "Deserializes a message object of type '<AnalogOutputCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogOutputCommand>)))
  "Returns string type for a message object of type '<AnalogOutputCommand>"
  "baxter_core_msgs/AnalogOutputCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogOutputCommand)))
  "Returns string type for a message object of type 'AnalogOutputCommand"
  "baxter_core_msgs/AnalogOutputCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogOutputCommand>)))
  "Returns md5sum for a message object of type '<AnalogOutputCommand>"
  "a7b945129a083ca4095d48aa94841d85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogOutputCommand)))
  "Returns md5sum for a message object of type 'AnalogOutputCommand"
  "a7b945129a083ca4095d48aa94841d85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogOutputCommand>)))
  "Returns full string definition for message of type '<AnalogOutputCommand>"
  (cl:format cl:nil "##the name of the output~%string name  ~%##the value to set output ~%uint16 value   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogOutputCommand)))
  "Returns full string definition for message of type 'AnalogOutputCommand"
  (cl:format cl:nil "##the name of the output~%string name  ~%##the value to set output ~%uint16 value   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogOutputCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogOutputCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogOutputCommand
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))

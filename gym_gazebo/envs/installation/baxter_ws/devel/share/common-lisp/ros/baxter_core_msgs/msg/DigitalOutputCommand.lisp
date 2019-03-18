; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude DigitalOutputCommand.msg.html

(cl:defclass <DigitalOutputCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DigitalOutputCommand (<DigitalOutputCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutputCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutputCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<DigitalOutputCommand> is deprecated: use baxter_core_msgs-msg:DigitalOutputCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DigitalOutputCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:name-val is deprecated.  Use baxter_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DigitalOutputCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:value-val is deprecated.  Use baxter_core_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutputCommand>) ostream)
  "Serializes a message object of type '<DigitalOutputCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutputCommand>) istream)
  "Deserializes a message object of type '<DigitalOutputCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutputCommand>)))
  "Returns string type for a message object of type '<DigitalOutputCommand>"
  "baxter_core_msgs/DigitalOutputCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutputCommand)))
  "Returns string type for a message object of type 'DigitalOutputCommand"
  "baxter_core_msgs/DigitalOutputCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutputCommand>)))
  "Returns md5sum for a message object of type '<DigitalOutputCommand>"
  "23f05028c1a699fb83e22401228c3a9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutputCommand)))
  "Returns md5sum for a message object of type 'DigitalOutputCommand"
  "23f05028c1a699fb83e22401228c3a9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutputCommand>)))
  "Returns full string definition for message of type '<DigitalOutputCommand>"
  (cl:format cl:nil "##the name of the output~%string name  ~%##the value to set output ~%bool value   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutputCommand)))
  "Returns full string definition for message of type 'DigitalOutputCommand"
  (cl:format cl:nil "##the name of the output~%string name  ~%##the value to set output ~%bool value   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutputCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutputCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutputCommand
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))

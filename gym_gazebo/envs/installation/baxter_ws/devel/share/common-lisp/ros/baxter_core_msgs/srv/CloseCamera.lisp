; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-srv)


;//! \htmlinclude CloseCamera-request.msg.html

(cl:defclass <CloseCamera-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass CloseCamera-request (<CloseCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<CloseCamera-request> is deprecated: use baxter_core_msgs-srv:CloseCamera-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CloseCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:name-val is deprecated.  Use baxter_core_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseCamera-request>) ostream)
  "Serializes a message object of type '<CloseCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseCamera-request>) istream)
  "Deserializes a message object of type '<CloseCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseCamera-request>)))
  "Returns string type for a service object of type '<CloseCamera-request>"
  "baxter_core_msgs/CloseCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseCamera-request)))
  "Returns string type for a service object of type 'CloseCamera-request"
  "baxter_core_msgs/CloseCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseCamera-request>)))
  "Returns md5sum for a message object of type '<CloseCamera-request>"
  "1067b4a7f008fe1ff4bd9668312773fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseCamera-request)))
  "Returns md5sum for a message object of type 'CloseCamera-request"
  "1067b4a7f008fe1ff4bd9668312773fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseCamera-request>)))
  "Returns full string definition for message of type '<CloseCamera-request>"
  (cl:format cl:nil "string          name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseCamera-request)))
  "Returns full string definition for message of type 'CloseCamera-request"
  (cl:format cl:nil "string          name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseCamera-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude CloseCamera-response.msg.html

(cl:defclass <CloseCamera-response> (roslisp-msg-protocol:ros-message)
  ((err
    :reader err
    :initarg :err
    :type cl:integer
    :initform 0))
)

(cl:defclass CloseCamera-response (<CloseCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<CloseCamera-response> is deprecated: use baxter_core_msgs-srv:CloseCamera-response instead.")))

(cl:ensure-generic-function 'err-val :lambda-list '(m))
(cl:defmethod err-val ((m <CloseCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:err-val is deprecated.  Use baxter_core_msgs-srv:err instead.")
  (err m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseCamera-response>) ostream)
  "Serializes a message object of type '<CloseCamera-response>"
  (cl:let* ((signed (cl:slot-value msg 'err)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseCamera-response>) istream)
  "Deserializes a message object of type '<CloseCamera-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseCamera-response>)))
  "Returns string type for a service object of type '<CloseCamera-response>"
  "baxter_core_msgs/CloseCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseCamera-response)))
  "Returns string type for a service object of type 'CloseCamera-response"
  "baxter_core_msgs/CloseCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseCamera-response>)))
  "Returns md5sum for a message object of type '<CloseCamera-response>"
  "1067b4a7f008fe1ff4bd9668312773fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseCamera-response)))
  "Returns md5sum for a message object of type 'CloseCamera-response"
  "1067b4a7f008fe1ff4bd9668312773fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseCamera-response>)))
  "Returns full string definition for message of type '<CloseCamera-response>"
  (cl:format cl:nil "int32           err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseCamera-response)))
  "Returns full string definition for message of type 'CloseCamera-response"
  (cl:format cl:nil "int32           err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseCamera-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseCamera-response
    (cl:cons ':err (err msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseCamera)))
  'CloseCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseCamera)))
  'CloseCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseCamera)))
  "Returns string type for a service object of type '<CloseCamera>"
  "baxter_core_msgs/CloseCamera")
; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-srv)


;//! \htmlinclude LoadController-request.msg.html

(cl:defclass <LoadController-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass LoadController-request (<LoadController-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadController-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadController-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<LoadController-request> is deprecated: use controller_manager_msgs-srv:LoadController-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LoadController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:name-val is deprecated.  Use controller_manager_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadController-request>) ostream)
  "Serializes a message object of type '<LoadController-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadController-request>) istream)
  "Deserializes a message object of type '<LoadController-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadController-request>)))
  "Returns string type for a service object of type '<LoadController-request>"
  "controller_manager_msgs/LoadControllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadController-request)))
  "Returns string type for a service object of type 'LoadController-request"
  "controller_manager_msgs/LoadControllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadController-request>)))
  "Returns md5sum for a message object of type '<LoadController-request>"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadController-request)))
  "Returns md5sum for a message object of type 'LoadController-request"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadController-request>)))
  "Returns full string definition for message of type '<LoadController-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadController-request)))
  "Returns full string definition for message of type 'LoadController-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadController-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadController-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadController-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude LoadController-response.msg.html

(cl:defclass <LoadController-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadController-response (<LoadController-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadController-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadController-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<LoadController-response> is deprecated: use controller_manager_msgs-srv:LoadController-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <LoadController-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:ok-val is deprecated.  Use controller_manager_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadController-response>) ostream)
  "Serializes a message object of type '<LoadController-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadController-response>) istream)
  "Deserializes a message object of type '<LoadController-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadController-response>)))
  "Returns string type for a service object of type '<LoadController-response>"
  "controller_manager_msgs/LoadControllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadController-response)))
  "Returns string type for a service object of type 'LoadController-response"
  "controller_manager_msgs/LoadControllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadController-response>)))
  "Returns md5sum for a message object of type '<LoadController-response>"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadController-response)))
  "Returns md5sum for a message object of type 'LoadController-response"
  "647e5c54b8d6468952d8d31f1efe96c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadController-response>)))
  "Returns full string definition for message of type '<LoadController-response>"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadController-response)))
  "Returns full string definition for message of type 'LoadController-response"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadController-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadController-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadController-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadController)))
  'LoadController-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadController)))
  'LoadController-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadController)))
  "Returns string type for a service object of type '<LoadController>"
  "controller_manager_msgs/LoadController")
; Auto-generated. Do not edit!


(cl:in-package create_node-srv)


;//! \htmlinclude SetTurtlebotMode-request.msg.html

(cl:defclass <SetTurtlebotMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTurtlebotMode-request (<SetTurtlebotMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTurtlebotMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTurtlebotMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-srv:<SetTurtlebotMode-request> is deprecated: use create_node-srv:SetTurtlebotMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetTurtlebotMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:mode-val is deprecated.  Use create_node-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTurtlebotMode-request>) ostream)
  "Serializes a message object of type '<SetTurtlebotMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTurtlebotMode-request>) istream)
  "Deserializes a message object of type '<SetTurtlebotMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTurtlebotMode-request>)))
  "Returns string type for a service object of type '<SetTurtlebotMode-request>"
  "create_node/SetTurtlebotModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTurtlebotMode-request)))
  "Returns string type for a service object of type 'SetTurtlebotMode-request"
  "create_node/SetTurtlebotModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTurtlebotMode-request>)))
  "Returns md5sum for a message object of type '<SetTurtlebotMode-request>"
  "652c4fe00e931153f82f8af90f1da441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTurtlebotMode-request)))
  "Returns md5sum for a message object of type 'SetTurtlebotMode-request"
  "652c4fe00e931153f82f8af90f1da441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTurtlebotMode-request>)))
  "Returns full string definition for message of type '<SetTurtlebotMode-request>"
  (cl:format cl:nil "uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTurtlebotMode-request)))
  "Returns full string definition for message of type 'SetTurtlebotMode-request"
  (cl:format cl:nil "uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTurtlebotMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTurtlebotMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTurtlebotMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetTurtlebotMode-response.msg.html

(cl:defclass <SetTurtlebotMode-response> (roslisp-msg-protocol:ros-message)
  ((valid_mode
    :reader valid_mode
    :initarg :valid_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTurtlebotMode-response (<SetTurtlebotMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTurtlebotMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTurtlebotMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-srv:<SetTurtlebotMode-response> is deprecated: use create_node-srv:SetTurtlebotMode-response instead.")))

(cl:ensure-generic-function 'valid_mode-val :lambda-list '(m))
(cl:defmethod valid_mode-val ((m <SetTurtlebotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:valid_mode-val is deprecated.  Use create_node-srv:valid_mode instead.")
  (valid_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTurtlebotMode-response>) ostream)
  "Serializes a message object of type '<SetTurtlebotMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTurtlebotMode-response>) istream)
  "Deserializes a message object of type '<SetTurtlebotMode-response>"
    (cl:setf (cl:slot-value msg 'valid_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTurtlebotMode-response>)))
  "Returns string type for a service object of type '<SetTurtlebotMode-response>"
  "create_node/SetTurtlebotModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTurtlebotMode-response)))
  "Returns string type for a service object of type 'SetTurtlebotMode-response"
  "create_node/SetTurtlebotModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTurtlebotMode-response>)))
  "Returns md5sum for a message object of type '<SetTurtlebotMode-response>"
  "652c4fe00e931153f82f8af90f1da441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTurtlebotMode-response)))
  "Returns md5sum for a message object of type 'SetTurtlebotMode-response"
  "652c4fe00e931153f82f8af90f1da441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTurtlebotMode-response>)))
  "Returns full string definition for message of type '<SetTurtlebotMode-response>"
  (cl:format cl:nil "bool valid_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTurtlebotMode-response)))
  "Returns full string definition for message of type 'SetTurtlebotMode-response"
  (cl:format cl:nil "bool valid_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTurtlebotMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTurtlebotMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTurtlebotMode-response
    (cl:cons ':valid_mode (valid_mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTurtlebotMode)))
  'SetTurtlebotMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTurtlebotMode)))
  'SetTurtlebotMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTurtlebotMode)))
  "Returns string type for a service object of type '<SetTurtlebotMode>"
  "create_node/SetTurtlebotMode")
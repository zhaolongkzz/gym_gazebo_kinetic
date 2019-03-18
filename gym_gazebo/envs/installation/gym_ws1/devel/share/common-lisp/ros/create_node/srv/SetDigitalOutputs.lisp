; Auto-generated. Do not edit!


(cl:in-package create_node-srv)


;//! \htmlinclude SetDigitalOutputs-request.msg.html

(cl:defclass <SetDigitalOutputs-request> (roslisp-msg-protocol:ros-message)
  ((digital_out_0
    :reader digital_out_0
    :initarg :digital_out_0
    :type cl:fixnum
    :initform 0)
   (digital_out_1
    :reader digital_out_1
    :initarg :digital_out_1
    :type cl:fixnum
    :initform 0)
   (digital_out_2
    :reader digital_out_2
    :initarg :digital_out_2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetDigitalOutputs-request (<SetDigitalOutputs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalOutputs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalOutputs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-srv:<SetDigitalOutputs-request> is deprecated: use create_node-srv:SetDigitalOutputs-request instead.")))

(cl:ensure-generic-function 'digital_out_0-val :lambda-list '(m))
(cl:defmethod digital_out_0-val ((m <SetDigitalOutputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:digital_out_0-val is deprecated.  Use create_node-srv:digital_out_0 instead.")
  (digital_out_0 m))

(cl:ensure-generic-function 'digital_out_1-val :lambda-list '(m))
(cl:defmethod digital_out_1-val ((m <SetDigitalOutputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:digital_out_1-val is deprecated.  Use create_node-srv:digital_out_1 instead.")
  (digital_out_1 m))

(cl:ensure-generic-function 'digital_out_2-val :lambda-list '(m))
(cl:defmethod digital_out_2-val ((m <SetDigitalOutputs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:digital_out_2-val is deprecated.  Use create_node-srv:digital_out_2 instead.")
  (digital_out_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalOutputs-request>) ostream)
  "Serializes a message object of type '<SetDigitalOutputs-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalOutputs-request>) istream)
  "Deserializes a message object of type '<SetDigitalOutputs-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digital_out_2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalOutputs-request>)))
  "Returns string type for a service object of type '<SetDigitalOutputs-request>"
  "create_node/SetDigitalOutputsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutputs-request)))
  "Returns string type for a service object of type 'SetDigitalOutputs-request"
  "create_node/SetDigitalOutputsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalOutputs-request>)))
  "Returns md5sum for a message object of type '<SetDigitalOutputs-request>"
  "3e43640171aa67a865fe4990d6959f42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalOutputs-request)))
  "Returns md5sum for a message object of type 'SetDigitalOutputs-request"
  "3e43640171aa67a865fe4990d6959f42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalOutputs-request>)))
  "Returns full string definition for message of type '<SetDigitalOutputs-request>"
  (cl:format cl:nil "uint8 digital_out_0~%uint8 digital_out_1~%uint8 digital_out_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalOutputs-request)))
  "Returns full string definition for message of type 'SetDigitalOutputs-request"
  (cl:format cl:nil "uint8 digital_out_0~%uint8 digital_out_1~%uint8 digital_out_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalOutputs-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalOutputs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalOutputs-request
    (cl:cons ':digital_out_0 (digital_out_0 msg))
    (cl:cons ':digital_out_1 (digital_out_1 msg))
    (cl:cons ':digital_out_2 (digital_out_2 msg))
))
;//! \htmlinclude SetDigitalOutputs-response.msg.html

(cl:defclass <SetDigitalOutputs-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDigitalOutputs-response (<SetDigitalOutputs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalOutputs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalOutputs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-srv:<SetDigitalOutputs-response> is deprecated: use create_node-srv:SetDigitalOutputs-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <SetDigitalOutputs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-srv:done-val is deprecated.  Use create_node-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalOutputs-response>) ostream)
  "Serializes a message object of type '<SetDigitalOutputs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalOutputs-response>) istream)
  "Deserializes a message object of type '<SetDigitalOutputs-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalOutputs-response>)))
  "Returns string type for a service object of type '<SetDigitalOutputs-response>"
  "create_node/SetDigitalOutputsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutputs-response)))
  "Returns string type for a service object of type 'SetDigitalOutputs-response"
  "create_node/SetDigitalOutputsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalOutputs-response>)))
  "Returns md5sum for a message object of type '<SetDigitalOutputs-response>"
  "3e43640171aa67a865fe4990d6959f42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalOutputs-response)))
  "Returns md5sum for a message object of type 'SetDigitalOutputs-response"
  "3e43640171aa67a865fe4990d6959f42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalOutputs-response>)))
  "Returns full string definition for message of type '<SetDigitalOutputs-response>"
  (cl:format cl:nil "bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalOutputs-response)))
  "Returns full string definition for message of type 'SetDigitalOutputs-response"
  (cl:format cl:nil "bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalOutputs-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalOutputs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalOutputs-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDigitalOutputs)))
  'SetDigitalOutputs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDigitalOutputs)))
  'SetDigitalOutputs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutputs)))
  "Returns string type for a service object of type '<SetDigitalOutputs>"
  "create_node/SetDigitalOutputs")
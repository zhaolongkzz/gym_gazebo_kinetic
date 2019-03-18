; Auto-generated. Do not edit!


(cl:in-package create_node-msg)


;//! \htmlinclude Turtle.msg.html

(cl:defclass <Turtle> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type cl:float
    :initform 0.0)
   (angular
    :reader angular
    :initarg :angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass Turtle (<Turtle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turtle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turtle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create_node-msg:<Turtle> is deprecated: use create_node-msg:Turtle instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:linear-val is deprecated.  Use create_node-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create_node-msg:angular-val is deprecated.  Use create_node-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turtle>) ostream)
  "Serializes a message object of type '<Turtle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turtle>) istream)
  "Deserializes a message object of type '<Turtle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turtle>)))
  "Returns string type for a message object of type '<Turtle>"
  "create_node/Turtle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turtle)))
  "Returns string type for a message object of type 'Turtle"
  "create_node/Turtle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turtle>)))
  "Returns md5sum for a message object of type '<Turtle>"
  "9d5c2dcd348ac8f76ce2a4307bd63a13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turtle)))
  "Returns md5sum for a message object of type 'Turtle"
  "9d5c2dcd348ac8f76ce2a4307bd63a13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turtle>)))
  "Returns full string definition for message of type '<Turtle>"
  (cl:format cl:nil "float32 linear~%float32 angular~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turtle)))
  "Returns full string definition for message of type 'Turtle"
  (cl:format cl:nil "float32 linear~%float32 angular~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turtle>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turtle>))
  "Converts a ROS message object to a list"
  (cl:list 'Turtle
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))

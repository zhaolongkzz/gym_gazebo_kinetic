; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-srv)


;//! \htmlinclude ListControllers-request.msg.html

(cl:defclass <ListControllers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListControllers-request (<ListControllers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListControllers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListControllers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<ListControllers-request> is deprecated: use controller_manager_msgs-srv:ListControllers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListControllers-request>) ostream)
  "Serializes a message object of type '<ListControllers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListControllers-request>) istream)
  "Deserializes a message object of type '<ListControllers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListControllers-request>)))
  "Returns string type for a service object of type '<ListControllers-request>"
  "controller_manager_msgs/ListControllersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllers-request)))
  "Returns string type for a service object of type 'ListControllers-request"
  "controller_manager_msgs/ListControllersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListControllers-request>)))
  "Returns md5sum for a message object of type '<ListControllers-request>"
  "12c85fca1984c8ec86264f3d00b938f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListControllers-request)))
  "Returns md5sum for a message object of type 'ListControllers-request"
  "12c85fca1984c8ec86264f3d00b938f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListControllers-request>)))
  "Returns full string definition for message of type '<ListControllers-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListControllers-request)))
  "Returns full string definition for message of type 'ListControllers-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListControllers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListControllers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListControllers-request
))
;//! \htmlinclude ListControllers-response.msg.html

(cl:defclass <ListControllers-response> (roslisp-msg-protocol:ros-message)
  ((controller
    :reader controller
    :initarg :controller
    :type (cl:vector controller_manager_msgs-msg:ControllerState)
   :initform (cl:make-array 0 :element-type 'controller_manager_msgs-msg:ControllerState :initial-element (cl:make-instance 'controller_manager_msgs-msg:ControllerState))))
)

(cl:defclass ListControllers-response (<ListControllers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListControllers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListControllers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<ListControllers-response> is deprecated: use controller_manager_msgs-srv:ListControllers-response instead.")))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <ListControllers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:controller-val is deprecated.  Use controller_manager_msgs-srv:controller instead.")
  (controller m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListControllers-response>) ostream)
  "Serializes a message object of type '<ListControllers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controller))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListControllers-response>) istream)
  "Deserializes a message object of type '<ListControllers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controller) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controller)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'controller_manager_msgs-msg:ControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListControllers-response>)))
  "Returns string type for a service object of type '<ListControllers-response>"
  "controller_manager_msgs/ListControllersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllers-response)))
  "Returns string type for a service object of type 'ListControllers-response"
  "controller_manager_msgs/ListControllersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListControllers-response>)))
  "Returns md5sum for a message object of type '<ListControllers-response>"
  "12c85fca1984c8ec86264f3d00b938f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListControllers-response)))
  "Returns md5sum for a message object of type 'ListControllers-response"
  "12c85fca1984c8ec86264f3d00b938f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListControllers-response>)))
  "Returns full string definition for message of type '<ListControllers-response>"
  (cl:format cl:nil "ControllerState[] controller~%~%~%================================================================================~%MSG: controller_manager_msgs/ControllerState~%string name~%string state~%string type~%string hardware_interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListControllers-response)))
  "Returns full string definition for message of type 'ListControllers-response"
  (cl:format cl:nil "ControllerState[] controller~%~%~%================================================================================~%MSG: controller_manager_msgs/ControllerState~%string name~%string state~%string type~%string hardware_interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListControllers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controller) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListControllers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListControllers-response
    (cl:cons ':controller (controller msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListControllers)))
  'ListControllers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListControllers)))
  'ListControllers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListControllers)))
  "Returns string type for a service object of type '<ListControllers>"
  "controller_manager_msgs/ListControllers")
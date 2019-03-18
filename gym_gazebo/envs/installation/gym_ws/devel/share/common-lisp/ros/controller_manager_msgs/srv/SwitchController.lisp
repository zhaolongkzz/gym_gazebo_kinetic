; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-srv)


;//! \htmlinclude SwitchController-request.msg.html

(cl:defclass <SwitchController-request> (roslisp-msg-protocol:ros-message)
  ((start_controllers
    :reader start_controllers
    :initarg :start_controllers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (stop_controllers
    :reader stop_controllers
    :initarg :stop_controllers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (strictness
    :reader strictness
    :initarg :strictness
    :type cl:integer
    :initform 0))
)

(cl:defclass SwitchController-request (<SwitchController-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchController-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchController-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<SwitchController-request> is deprecated: use controller_manager_msgs-srv:SwitchController-request instead.")))

(cl:ensure-generic-function 'start_controllers-val :lambda-list '(m))
(cl:defmethod start_controllers-val ((m <SwitchController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:start_controllers-val is deprecated.  Use controller_manager_msgs-srv:start_controllers instead.")
  (start_controllers m))

(cl:ensure-generic-function 'stop_controllers-val :lambda-list '(m))
(cl:defmethod stop_controllers-val ((m <SwitchController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:stop_controllers-val is deprecated.  Use controller_manager_msgs-srv:stop_controllers instead.")
  (stop_controllers m))

(cl:ensure-generic-function 'strictness-val :lambda-list '(m))
(cl:defmethod strictness-val ((m <SwitchController-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:strictness-val is deprecated.  Use controller_manager_msgs-srv:strictness instead.")
  (strictness m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SwitchController-request>)))
    "Constants for message type '<SwitchController-request>"
  '((:BEST_EFFORT . 1)
    (:STRICT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SwitchController-request)))
    "Constants for message type 'SwitchController-request"
  '((:BEST_EFFORT . 1)
    (:STRICT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchController-request>) ostream)
  "Serializes a message object of type '<SwitchController-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_controllers))))
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
   (cl:slot-value msg 'start_controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stop_controllers))))
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
   (cl:slot-value msg 'stop_controllers))
  (cl:let* ((signed (cl:slot-value msg 'strictness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchController-request>) istream)
  "Deserializes a message object of type '<SwitchController-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_controllers)))
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
  (cl:setf (cl:slot-value msg 'stop_controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stop_controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strictness) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchController-request>)))
  "Returns string type for a service object of type '<SwitchController-request>"
  "controller_manager_msgs/SwitchControllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchController-request)))
  "Returns string type for a service object of type 'SwitchController-request"
  "controller_manager_msgs/SwitchControllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchController-request>)))
  "Returns md5sum for a message object of type '<SwitchController-request>"
  "5e857dedf71d6f337975e15a1e7cfdd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchController-request)))
  "Returns md5sum for a message object of type 'SwitchController-request"
  "5e857dedf71d6f337975e15a1e7cfdd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchController-request>)))
  "Returns full string definition for message of type '<SwitchController-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string[] start_controllers~%string[] stop_controllers~%int32 strictness~%int32 BEST_EFFORT=1~%int32 STRICT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchController-request)))
  "Returns full string definition for message of type 'SwitchController-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%string[] start_controllers~%string[] stop_controllers~%int32 strictness~%int32 BEST_EFFORT=1~%int32 STRICT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchController-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stop_controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchController-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchController-request
    (cl:cons ':start_controllers (start_controllers msg))
    (cl:cons ':stop_controllers (stop_controllers msg))
    (cl:cons ':strictness (strictness msg))
))
;//! \htmlinclude SwitchController-response.msg.html

(cl:defclass <SwitchController-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SwitchController-response (<SwitchController-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchController-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchController-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-srv:<SwitchController-response> is deprecated: use controller_manager_msgs-srv:SwitchController-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SwitchController-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-srv:ok-val is deprecated.  Use controller_manager_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchController-response>) ostream)
  "Serializes a message object of type '<SwitchController-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchController-response>) istream)
  "Deserializes a message object of type '<SwitchController-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchController-response>)))
  "Returns string type for a service object of type '<SwitchController-response>"
  "controller_manager_msgs/SwitchControllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchController-response)))
  "Returns string type for a service object of type 'SwitchController-response"
  "controller_manager_msgs/SwitchControllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchController-response>)))
  "Returns md5sum for a message object of type '<SwitchController-response>"
  "5e857dedf71d6f337975e15a1e7cfdd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchController-response)))
  "Returns md5sum for a message object of type 'SwitchController-response"
  "5e857dedf71d6f337975e15a1e7cfdd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchController-response>)))
  "Returns full string definition for message of type '<SwitchController-response>"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchController-response)))
  "Returns full string definition for message of type 'SwitchController-response"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchController-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchController-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchController-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchController)))
  'SwitchController-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchController)))
  'SwitchController-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchController)))
  "Returns string type for a service object of type '<SwitchController>"
  "controller_manager_msgs/SwitchController")
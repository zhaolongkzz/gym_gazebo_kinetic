; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-msg)


;//! \htmlinclude ControllerState.msg.html

(cl:defclass <ControllerState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (hardware_interface
    :reader hardware_interface
    :initarg :hardware_interface
    :type cl:string
    :initform "")
   (resources
    :reader resources
    :initarg :resources
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ControllerState (<ControllerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-msg:<ControllerState> is deprecated: use controller_manager_msgs-msg:ControllerState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:name-val is deprecated.  Use controller_manager_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:state-val is deprecated.  Use controller_manager_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:type-val is deprecated.  Use controller_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'hardware_interface-val :lambda-list '(m))
(cl:defmethod hardware_interface-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:hardware_interface-val is deprecated.  Use controller_manager_msgs-msg:hardware_interface instead.")
  (hardware_interface m))

(cl:ensure-generic-function 'resources-val :lambda-list '(m))
(cl:defmethod resources-val ((m <ControllerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:resources-val is deprecated.  Use controller_manager_msgs-msg:resources instead.")
  (resources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerState>) ostream)
  "Serializes a message object of type '<ControllerState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_interface))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resources))))
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
   (cl:slot-value msg 'resources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerState>) istream)
  "Deserializes a message object of type '<ControllerState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_interface) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_interface) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerState>)))
  "Returns string type for a message object of type '<ControllerState>"
  "controller_manager_msgs/ControllerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerState)))
  "Returns string type for a message object of type 'ControllerState"
  "controller_manager_msgs/ControllerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerState>)))
  "Returns md5sum for a message object of type '<ControllerState>"
  "cac963cc68f4f5836765c108de0fc446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerState)))
  "Returns md5sum for a message object of type 'ControllerState"
  "cac963cc68f4f5836765c108de0fc446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerState>)))
  "Returns full string definition for message of type '<ControllerState>"
  (cl:format cl:nil "string name~%string state~%string type~%string hardware_interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerState)))
  "Returns full string definition for message of type 'ControllerState"
  (cl:format cl:nil "string name~%string state~%string type~%string hardware_interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'hardware_interface))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerState>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerState
    (cl:cons ':name (name msg))
    (cl:cons ':state (state msg))
    (cl:cons ':type (type msg))
    (cl:cons ':hardware_interface (hardware_interface msg))
    (cl:cons ':resources (resources msg))
))

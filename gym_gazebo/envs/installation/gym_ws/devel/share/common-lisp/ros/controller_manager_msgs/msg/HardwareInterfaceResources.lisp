; Auto-generated. Do not edit!


(cl:in-package controller_manager_msgs-msg)


;//! \htmlinclude HardwareInterfaceResources.msg.html

(cl:defclass <HardwareInterfaceResources> (roslisp-msg-protocol:ros-message)
  ((hardware_interface
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

(cl:defclass HardwareInterfaceResources (<HardwareInterfaceResources>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareInterfaceResources>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareInterfaceResources)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_manager_msgs-msg:<HardwareInterfaceResources> is deprecated: use controller_manager_msgs-msg:HardwareInterfaceResources instead.")))

(cl:ensure-generic-function 'hardware_interface-val :lambda-list '(m))
(cl:defmethod hardware_interface-val ((m <HardwareInterfaceResources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:hardware_interface-val is deprecated.  Use controller_manager_msgs-msg:hardware_interface instead.")
  (hardware_interface m))

(cl:ensure-generic-function 'resources-val :lambda-list '(m))
(cl:defmethod resources-val ((m <HardwareInterfaceResources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_manager_msgs-msg:resources-val is deprecated.  Use controller_manager_msgs-msg:resources instead.")
  (resources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareInterfaceResources>) ostream)
  "Serializes a message object of type '<HardwareInterfaceResources>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareInterfaceResources>) istream)
  "Deserializes a message object of type '<HardwareInterfaceResources>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareInterfaceResources>)))
  "Returns string type for a message object of type '<HardwareInterfaceResources>"
  "controller_manager_msgs/HardwareInterfaceResources")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareInterfaceResources)))
  "Returns string type for a message object of type 'HardwareInterfaceResources"
  "controller_manager_msgs/HardwareInterfaceResources")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareInterfaceResources>)))
  "Returns md5sum for a message object of type '<HardwareInterfaceResources>"
  "f25b55cbf1d1f76e82e5ec9e83f76258")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareInterfaceResources)))
  "Returns md5sum for a message object of type 'HardwareInterfaceResources"
  "f25b55cbf1d1f76e82e5ec9e83f76258")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareInterfaceResources>)))
  "Returns full string definition for message of type '<HardwareInterfaceResources>"
  (cl:format cl:nil "# Type of hardware interface~%string hardware_interface~%# List of resources belonging to the hardware interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareInterfaceResources)))
  "Returns full string definition for message of type 'HardwareInterfaceResources"
  (cl:format cl:nil "# Type of hardware interface~%string hardware_interface~%# List of resources belonging to the hardware interface~%string[] resources~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareInterfaceResources>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hardware_interface))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareInterfaceResources>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareInterfaceResources
    (cl:cons ':hardware_interface (hardware_interface msg))
    (cl:cons ':resources (resources msg))
))

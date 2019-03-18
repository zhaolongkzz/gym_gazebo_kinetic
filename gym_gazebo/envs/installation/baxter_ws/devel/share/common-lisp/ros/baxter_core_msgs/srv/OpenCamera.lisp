; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-srv)


;//! \htmlinclude OpenCamera-request.msg.html

(cl:defclass <OpenCamera-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (settings
    :reader settings
    :initarg :settings
    :type baxter_core_msgs-msg:CameraSettings
    :initform (cl:make-instance 'baxter_core_msgs-msg:CameraSettings)))
)

(cl:defclass OpenCamera-request (<OpenCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<OpenCamera-request> is deprecated: use baxter_core_msgs-srv:OpenCamera-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <OpenCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:name-val is deprecated.  Use baxter_core_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'settings-val :lambda-list '(m))
(cl:defmethod settings-val ((m <OpenCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:settings-val is deprecated.  Use baxter_core_msgs-srv:settings instead.")
  (settings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenCamera-request>) ostream)
  "Serializes a message object of type '<OpenCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'settings) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenCamera-request>) istream)
  "Deserializes a message object of type '<OpenCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'settings) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenCamera-request>)))
  "Returns string type for a service object of type '<OpenCamera-request>"
  "baxter_core_msgs/OpenCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenCamera-request)))
  "Returns string type for a service object of type 'OpenCamera-request"
  "baxter_core_msgs/OpenCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenCamera-request>)))
  "Returns md5sum for a message object of type '<OpenCamera-request>"
  "73eacff63d5f9cca2d986614515a5c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenCamera-request)))
  "Returns md5sum for a message object of type 'OpenCamera-request"
  "73eacff63d5f9cca2d986614515a5c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenCamera-request>)))
  "Returns full string definition for message of type '<OpenCamera-request>"
  (cl:format cl:nil "string          name~%CameraSettings  settings~%~%================================================================================~%MSG: baxter_core_msgs/CameraSettings~%int32           width~%int32           height~%float32         fps~%CameraControl[] controls~%~%================================================================================~%MSG: baxter_core_msgs/CameraControl~%int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenCamera-request)))
  "Returns full string definition for message of type 'OpenCamera-request"
  (cl:format cl:nil "string          name~%CameraSettings  settings~%~%================================================================================~%MSG: baxter_core_msgs/CameraSettings~%int32           width~%int32           height~%float32         fps~%CameraControl[] controls~%~%================================================================================~%MSG: baxter_core_msgs/CameraControl~%int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'settings))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenCamera-request
    (cl:cons ':name (name msg))
    (cl:cons ':settings (settings msg))
))
;//! \htmlinclude OpenCamera-response.msg.html

(cl:defclass <OpenCamera-response> (roslisp-msg-protocol:ros-message)
  ((err
    :reader err
    :initarg :err
    :type cl:integer
    :initform 0))
)

(cl:defclass OpenCamera-response (<OpenCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<OpenCamera-response> is deprecated: use baxter_core_msgs-srv:OpenCamera-response instead.")))

(cl:ensure-generic-function 'err-val :lambda-list '(m))
(cl:defmethod err-val ((m <OpenCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:err-val is deprecated.  Use baxter_core_msgs-srv:err instead.")
  (err m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenCamera-response>) ostream)
  "Serializes a message object of type '<OpenCamera-response>"
  (cl:let* ((signed (cl:slot-value msg 'err)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenCamera-response>) istream)
  "Deserializes a message object of type '<OpenCamera-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenCamera-response>)))
  "Returns string type for a service object of type '<OpenCamera-response>"
  "baxter_core_msgs/OpenCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenCamera-response)))
  "Returns string type for a service object of type 'OpenCamera-response"
  "baxter_core_msgs/OpenCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenCamera-response>)))
  "Returns md5sum for a message object of type '<OpenCamera-response>"
  "73eacff63d5f9cca2d986614515a5c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenCamera-response)))
  "Returns md5sum for a message object of type 'OpenCamera-response"
  "73eacff63d5f9cca2d986614515a5c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenCamera-response>)))
  "Returns full string definition for message of type '<OpenCamera-response>"
  (cl:format cl:nil "int32           err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenCamera-response)))
  "Returns full string definition for message of type 'OpenCamera-response"
  (cl:format cl:nil "int32           err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenCamera-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenCamera-response
    (cl:cons ':err (err msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenCamera)))
  'OpenCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenCamera)))
  'OpenCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenCamera)))
  "Returns string type for a service object of type '<OpenCamera>"
  "baxter_core_msgs/OpenCamera")
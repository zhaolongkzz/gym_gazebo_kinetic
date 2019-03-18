; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude CameraSettings.msg.html

(cl:defclass <CameraSettings> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (fps
    :reader fps
    :initarg :fps
    :type cl:float
    :initform 0.0)
   (controls
    :reader controls
    :initarg :controls
    :type (cl:vector baxter_core_msgs-msg:CameraControl)
   :initform (cl:make-array 0 :element-type 'baxter_core_msgs-msg:CameraControl :initial-element (cl:make-instance 'baxter_core_msgs-msg:CameraControl))))
)

(cl:defclass CameraSettings (<CameraSettings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSettings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSettings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<CameraSettings> is deprecated: use baxter_core_msgs-msg:CameraSettings instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <CameraSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:width-val is deprecated.  Use baxter_core_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <CameraSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:height-val is deprecated.  Use baxter_core_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'fps-val :lambda-list '(m))
(cl:defmethod fps-val ((m <CameraSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:fps-val is deprecated.  Use baxter_core_msgs-msg:fps instead.")
  (fps m))

(cl:ensure-generic-function 'controls-val :lambda-list '(m))
(cl:defmethod controls-val ((m <CameraSettings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:controls-val is deprecated.  Use baxter_core_msgs-msg:controls instead.")
  (controls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSettings>) ostream)
  "Serializes a message object of type '<CameraSettings>"
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSettings>) istream)
  "Deserializes a message object of type '<CameraSettings>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fps) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'baxter_core_msgs-msg:CameraControl))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSettings>)))
  "Returns string type for a message object of type '<CameraSettings>"
  "baxter_core_msgs/CameraSettings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSettings)))
  "Returns string type for a message object of type 'CameraSettings"
  "baxter_core_msgs/CameraSettings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSettings>)))
  "Returns md5sum for a message object of type '<CameraSettings>"
  "d133bef4a3bd9a6e490a5dc91d20f429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSettings)))
  "Returns md5sum for a message object of type 'CameraSettings"
  "d133bef4a3bd9a6e490a5dc91d20f429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSettings>)))
  "Returns full string definition for message of type '<CameraSettings>"
  (cl:format cl:nil "int32           width~%int32           height~%float32         fps~%CameraControl[] controls~%~%================================================================================~%MSG: baxter_core_msgs/CameraControl~%int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSettings)))
  "Returns full string definition for message of type 'CameraSettings"
  (cl:format cl:nil "int32           width~%int32           height~%float32         fps~%CameraControl[] controls~%~%================================================================================~%MSG: baxter_core_msgs/CameraControl~%int32   id~%int32   value~%~%int32 CAMERA_CONTROL_EXPOSURE=100~%int32 CAMERA_CONTROL_GAIN=101~%int32 CAMERA_CONTROL_WHITE_BALANCE_R=102~%int32 CAMERA_CONTROL_WHITE_BALANCE_G=103~%int32 CAMERA_CONTROL_WHITE_BALANCE_B=104~%int32 CAMERA_CONTROL_WINDOW_X=105~%int32 CAMERA_CONTROL_WINDOW_Y=106~%int32 CAMERA_CONTROL_FLIP=107~%int32 CAMERA_CONTROL_MIRROR=108~%int32 CAMERA_CONTROL_RESOLUTION_HALF=109~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSettings>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSettings>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSettings
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':fps (fps msg))
    (cl:cons ':controls (controls msg))
))

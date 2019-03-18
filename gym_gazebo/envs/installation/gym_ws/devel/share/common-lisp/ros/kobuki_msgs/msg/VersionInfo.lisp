; Auto-generated. Do not edit!


(cl:in-package kobuki_msgs-msg)


;//! \htmlinclude VersionInfo.msg.html

(cl:defclass <VersionInfo> (roslisp-msg-protocol:ros-message)
  ((hardware
    :reader hardware
    :initarg :hardware
    :type cl:string
    :initform "")
   (firmware
    :reader firmware
    :initarg :firmware
    :type cl:string
    :initform "")
   (software
    :reader software
    :initarg :software
    :type cl:string
    :initform "")
   (udid
    :reader udid
    :initarg :udid
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (features
    :reader features
    :initarg :features
    :type cl:integer
    :initform 0))
)

(cl:defclass VersionInfo (<VersionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kobuki_msgs-msg:<VersionInfo> is deprecated: use kobuki_msgs-msg:VersionInfo instead.")))

(cl:ensure-generic-function 'hardware-val :lambda-list '(m))
(cl:defmethod hardware-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:hardware-val is deprecated.  Use kobuki_msgs-msg:hardware instead.")
  (hardware m))

(cl:ensure-generic-function 'firmware-val :lambda-list '(m))
(cl:defmethod firmware-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:firmware-val is deprecated.  Use kobuki_msgs-msg:firmware instead.")
  (firmware m))

(cl:ensure-generic-function 'software-val :lambda-list '(m))
(cl:defmethod software-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:software-val is deprecated.  Use kobuki_msgs-msg:software instead.")
  (software m))

(cl:ensure-generic-function 'udid-val :lambda-list '(m))
(cl:defmethod udid-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:udid-val is deprecated.  Use kobuki_msgs-msg:udid instead.")
  (udid m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kobuki_msgs-msg:features-val is deprecated.  Use kobuki_msgs-msg:features instead.")
  (features m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VersionInfo>)))
    "Constants for message type '<VersionInfo>"
  '((:SMOOTH_MOVE_START . 1)
    (:GYROSCOPE_3D_DATA . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VersionInfo)))
    "Constants for message type 'VersionInfo"
  '((:SMOOTH_MOVE_START . 1)
    (:GYROSCOPE_3D_DATA . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionInfo>) ostream)
  "Serializes a message object of type '<VersionInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'software))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'software))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'udid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'udid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'features)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'features)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionInfo>) istream)
  "Deserializes a message object of type '<VersionInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'software) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'software) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'udid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'udid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'features)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'features)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionInfo>)))
  "Returns string type for a message object of type '<VersionInfo>"
  "kobuki_msgs/VersionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionInfo)))
  "Returns string type for a message object of type 'VersionInfo"
  "kobuki_msgs/VersionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionInfo>)))
  "Returns md5sum for a message object of type '<VersionInfo>"
  "3dc0ce6edd49be1fc86730f4a4a21861")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionInfo)))
  "Returns md5sum for a message object of type 'VersionInfo"
  "3dc0ce6edd49be1fc86730f4a4a21861")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionInfo>)))
  "Returns full string definition for message of type '<VersionInfo>"
  (cl:format cl:nil "# Contains unique device id, version info and available features for the kobuki platform.~%# Useful for compatibility checking and introspection~%~%string hardware   # <major>.<minor>.<patch>~%string firmware   # <major>.<minor>.<patch>~%string software   # Still to decide how it will look~%uint32[] udid~%~%# Bitmask that specifies the available features in the firmware and/or driver~%uint64 features~%~%# The following represent the bit fields corresponding to bits in the features value~%~%# Provided firmware kobuki_firmware_1.1.1.hex~%uint64 SMOOTH_MOVE_START    = 0000000000000001~%uint64 GYROSCOPE_3D_DATA    = 0000000000000002~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionInfo)))
  "Returns full string definition for message of type 'VersionInfo"
  (cl:format cl:nil "# Contains unique device id, version info and available features for the kobuki platform.~%# Useful for compatibility checking and introspection~%~%string hardware   # <major>.<minor>.<patch>~%string firmware   # <major>.<minor>.<patch>~%string software   # Still to decide how it will look~%uint32[] udid~%~%# Bitmask that specifies the available features in the firmware and/or driver~%uint64 features~%~%# The following represent the bit fields corresponding to bits in the features value~%~%# Provided firmware kobuki_firmware_1.1.1.hex~%uint64 SMOOTH_MOVE_START    = 0000000000000001~%uint64 GYROSCOPE_3D_DATA    = 0000000000000002~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hardware))
     4 (cl:length (cl:slot-value msg 'firmware))
     4 (cl:length (cl:slot-value msg 'software))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'udid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionInfo
    (cl:cons ':hardware (hardware msg))
    (cl:cons ':firmware (firmware msg))
    (cl:cons ':software (software msg))
    (cl:cons ':udid (udid msg))
    (cl:cons ':features (features msg))
))

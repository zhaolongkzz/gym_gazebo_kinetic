; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude UpdateStatus.msg.html

(cl:defclass <UpdateStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0)
   (long_description
    :reader long_description
    :initarg :long_description
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateStatus (<UpdateStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<UpdateStatus> is deprecated: use baxter_maintenance_msgs-msg:UpdateStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdateStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:status-val is deprecated.  Use baxter_maintenance_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <UpdateStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:progress-val is deprecated.  Use baxter_maintenance_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'long_description-val :lambda-list '(m))
(cl:defmethod long_description-val ((m <UpdateStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:long_description-val is deprecated.  Use baxter_maintenance_msgs-msg:long_description instead.")
  (long_description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdateStatus>)))
    "Constants for message type '<UpdateStatus>"
  '((:STS_IDLE . 0)
    (:STS_INVALID . 1)
    (:STS_BUSY . 2)
    (:STS_CANCELLED . 3)
    (:STS_ERR . 4)
    (:STS_MOUNT_UPDATE . 5)
    (:STS_VERIFY_UPDATE . 6)
    (:STS_PREP_STAGING . 7)
    (:STS_MOUNT_STAGING . 8)
    (:STS_EXTRACT_UPDATE . 9)
    (:STS_LOAD_KEXEC . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdateStatus)))
    "Constants for message type 'UpdateStatus"
  '((:STS_IDLE . 0)
    (:STS_INVALID . 1)
    (:STS_BUSY . 2)
    (:STS_CANCELLED . 3)
    (:STS_ERR . 4)
    (:STS_MOUNT_UPDATE . 5)
    (:STS_VERIFY_UPDATE . 6)
    (:STS_PREP_STAGING . 7)
    (:STS_MOUNT_STAGING . 8)
    (:STS_EXTRACT_UPDATE . 9)
    (:STS_LOAD_KEXEC . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateStatus>) ostream)
  "Serializes a message object of type '<UpdateStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'long_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'long_description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateStatus>) istream)
  "Deserializes a message object of type '<UpdateStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'long_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'long_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateStatus>)))
  "Returns string type for a message object of type '<UpdateStatus>"
  "baxter_maintenance_msgs/UpdateStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateStatus)))
  "Returns string type for a message object of type 'UpdateStatus"
  "baxter_maintenance_msgs/UpdateStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateStatus>)))
  "Returns md5sum for a message object of type '<UpdateStatus>"
  "74e246350421569590252c39e8aa7b85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateStatus)))
  "Returns md5sum for a message object of type 'UpdateStatus"
  "74e246350421569590252c39e8aa7b85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateStatus>)))
  "Returns full string definition for message of type '<UpdateStatus>"
  (cl:format cl:nil "# See the class UpdateRunner()~%# status:           One-word description of the current action being performed~%# long_description: Details pertaining to status if any.  Used for verbose error messages.~%~%uint16  status~%float32 progress~%string  long_description~%~%uint16 STS_IDLE            = 0~%uint16 STS_INVALID         = 1~%uint16 STS_BUSY            = 2~%uint16 STS_CANCELLED       = 3~%uint16 STS_ERR             = 4~%uint16 STS_MOUNT_UPDATE    = 5~%uint16 STS_VERIFY_UPDATE   = 6~%uint16 STS_PREP_STAGING    = 7~%uint16 STS_MOUNT_STAGING   = 8~%uint16 STS_EXTRACT_UPDATE  = 9~%uint16 STS_LOAD_KEXEC      = 10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateStatus)))
  "Returns full string definition for message of type 'UpdateStatus"
  (cl:format cl:nil "# See the class UpdateRunner()~%# status:           One-word description of the current action being performed~%# long_description: Details pertaining to status if any.  Used for verbose error messages.~%~%uint16  status~%float32 progress~%string  long_description~%~%uint16 STS_IDLE            = 0~%uint16 STS_INVALID         = 1~%uint16 STS_BUSY            = 2~%uint16 STS_CANCELLED       = 3~%uint16 STS_ERR             = 4~%uint16 STS_MOUNT_UPDATE    = 5~%uint16 STS_VERIFY_UPDATE   = 6~%uint16 STS_PREP_STAGING    = 7~%uint16 STS_MOUNT_STAGING   = 8~%uint16 STS_EXTRACT_UPDATE  = 9~%uint16 STS_LOAD_KEXEC      = 10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateStatus>))
  (cl:+ 0
     2
     4
     4 (cl:length (cl:slot-value msg 'long_description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateStatus
    (cl:cons ':status (status msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':long_description (long_description msg))
))

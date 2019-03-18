; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude UpdateSource.msg.html

(cl:defclass <UpdateSource> (roslisp-msg-protocol:ros-message)
  ((devname
    :reader devname
    :initarg :devname
    :type cl:string
    :initform "")
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateSource (<UpdateSource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateSource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateSource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<UpdateSource> is deprecated: use baxter_maintenance_msgs-msg:UpdateSource instead.")))

(cl:ensure-generic-function 'devname-val :lambda-list '(m))
(cl:defmethod devname-val ((m <UpdateSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:devname-val is deprecated.  Use baxter_maintenance_msgs-msg:devname instead.")
  (devname m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <UpdateSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:filename-val is deprecated.  Use baxter_maintenance_msgs-msg:filename instead.")
  (filename m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <UpdateSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:version-val is deprecated.  Use baxter_maintenance_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <UpdateSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:uuid-val is deprecated.  Use baxter_maintenance_msgs-msg:uuid instead.")
  (uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateSource>) ostream)
  "Serializes a message object of type '<UpdateSource>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'devname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'devname))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateSource>) istream)
  "Deserializes a message object of type '<UpdateSource>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'devname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'devname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateSource>)))
  "Returns string type for a message object of type '<UpdateSource>"
  "baxter_maintenance_msgs/UpdateSource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateSource)))
  "Returns string type for a message object of type 'UpdateSource"
  "baxter_maintenance_msgs/UpdateSource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateSource>)))
  "Returns md5sum for a message object of type '<UpdateSource>"
  "88ad69e3ed4d619e167c9d83e6d9310f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateSource)))
  "Returns md5sum for a message object of type 'UpdateSource"
  "88ad69e3ed4d619e167c9d83e6d9310f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateSource>)))
  "Returns full string definition for message of type '<UpdateSource>"
  (cl:format cl:nil "string  devname~%string  filename~%string  version~%string  uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateSource)))
  "Returns full string definition for message of type 'UpdateSource"
  (cl:format cl:nil "string  devname~%string  filename~%string  version~%string  uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateSource>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'devname))
     4 (cl:length (cl:slot-value msg 'filename))
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateSource>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateSource
    (cl:cons ':devname (devname msg))
    (cl:cons ':filename (filename msg))
    (cl:cons ':version (version msg))
    (cl:cons ':uuid (uuid msg))
))

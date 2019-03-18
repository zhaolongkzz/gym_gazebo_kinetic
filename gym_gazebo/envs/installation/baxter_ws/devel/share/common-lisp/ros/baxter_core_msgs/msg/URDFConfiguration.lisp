; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude URDFConfiguration.msg.html

(cl:defclass <URDFConfiguration> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (link
    :reader link
    :initarg :link
    :type cl:string
    :initform "")
   (joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (urdf
    :reader urdf
    :initarg :urdf
    :type cl:string
    :initform ""))
)

(cl:defclass URDFConfiguration (<URDFConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <URDFConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'URDFConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<URDFConfiguration> is deprecated: use baxter_core_msgs-msg:URDFConfiguration instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <URDFConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:time-val is deprecated.  Use baxter_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <URDFConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:link-val is deprecated.  Use baxter_core_msgs-msg:link instead.")
  (link m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <URDFConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:joint-val is deprecated.  Use baxter_core_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'urdf-val :lambda-list '(m))
(cl:defmethod urdf-val ((m <URDFConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:urdf-val is deprecated.  Use baxter_core_msgs-msg:urdf instead.")
  (urdf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <URDFConfiguration>) ostream)
  "Serializes a message object of type '<URDFConfiguration>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'urdf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'urdf))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <URDFConfiguration>) istream)
  "Deserializes a message object of type '<URDFConfiguration>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'urdf) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'urdf) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<URDFConfiguration>)))
  "Returns string type for a message object of type '<URDFConfiguration>"
  "baxter_core_msgs/URDFConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'URDFConfiguration)))
  "Returns string type for a message object of type 'URDFConfiguration"
  "baxter_core_msgs/URDFConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<URDFConfiguration>)))
  "Returns md5sum for a message object of type '<URDFConfiguration>"
  "0c7028d878027820eed2aa0cbf1f5e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'URDFConfiguration)))
  "Returns md5sum for a message object of type 'URDFConfiguration"
  "0c7028d878027820eed2aa0cbf1f5e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<URDFConfiguration>)))
  "Returns full string definition for message of type '<URDFConfiguration>"
  (cl:format cl:nil "## URDF Configuration~%time time      # time the message was created, serves as a sequence number~%               # time should be changed only when the content changes.~%string link    # parent link name~%string joint   # joint to configure~%               # link + joint + time uniquely identifies a configuration.~%string urdf    # XML or JSON-encoded URDF data.  This should be a URDF fragment~%               # describing the entire subtree for the given joint attached~%               # to the given parent link. If this field is empty the joint~%               # is removed from the parent link.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'URDFConfiguration)))
  "Returns full string definition for message of type 'URDFConfiguration"
  (cl:format cl:nil "## URDF Configuration~%time time      # time the message was created, serves as a sequence number~%               # time should be changed only when the content changes.~%string link    # parent link name~%string joint   # joint to configure~%               # link + joint + time uniquely identifies a configuration.~%string urdf    # XML or JSON-encoded URDF data.  This should be a URDF fragment~%               # describing the entire subtree for the given joint attached~%               # to the given parent link. If this field is empty the joint~%               # is removed from the parent link.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <URDFConfiguration>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'link))
     4 (cl:length (cl:slot-value msg 'joint))
     4 (cl:length (cl:slot-value msg 'urdf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <URDFConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'URDFConfiguration
    (cl:cons ':time (time msg))
    (cl:cons ':link (link msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':urdf (urdf msg))
))

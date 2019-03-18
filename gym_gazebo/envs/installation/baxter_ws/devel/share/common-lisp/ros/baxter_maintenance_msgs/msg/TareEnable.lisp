; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude TareEnable.msg.html

(cl:defclass <TareEnable> (roslisp-msg-protocol:ros-message)
  ((isEnabled
    :reader isEnabled
    :initarg :isEnabled
    :type cl:boolean
    :initform cl:nil)
   (uid
    :reader uid
    :initarg :uid
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type baxter_maintenance_msgs-msg:TareData
    :initform (cl:make-instance 'baxter_maintenance_msgs-msg:TareData)))
)

(cl:defclass TareEnable (<TareEnable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TareEnable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TareEnable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<TareEnable> is deprecated: use baxter_maintenance_msgs-msg:TareEnable instead.")))

(cl:ensure-generic-function 'isEnabled-val :lambda-list '(m))
(cl:defmethod isEnabled-val ((m <TareEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:isEnabled-val is deprecated.  Use baxter_maintenance_msgs-msg:isEnabled instead.")
  (isEnabled m))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <TareEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:uid-val is deprecated.  Use baxter_maintenance_msgs-msg:uid instead.")
  (uid m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TareEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:data-val is deprecated.  Use baxter_maintenance_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TareEnable>) ostream)
  "Serializes a message object of type '<TareEnable>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isEnabled) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TareEnable>) istream)
  "Deserializes a message object of type '<TareEnable>"
    (cl:setf (cl:slot-value msg 'isEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TareEnable>)))
  "Returns string type for a message object of type '<TareEnable>"
  "baxter_maintenance_msgs/TareEnable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TareEnable)))
  "Returns string type for a message object of type 'TareEnable"
  "baxter_maintenance_msgs/TareEnable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TareEnable>)))
  "Returns md5sum for a message object of type '<TareEnable>"
  "1d38ec0923789ab928453d933bef8c51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TareEnable)))
  "Returns md5sum for a message object of type 'TareEnable"
  "1d38ec0923789ab928453d933bef8c51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TareEnable>)))
  "Returns full string definition for message of type '<TareEnable>"
  (cl:format cl:nil "bool isEnabled~%string uid~%TareData data~%~%================================================================================~%MSG: baxter_maintenance_msgs/TareData~%bool tuneGravitySpring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TareEnable)))
  "Returns full string definition for message of type 'TareEnable"
  (cl:format cl:nil "bool isEnabled~%string uid~%TareData data~%~%================================================================================~%MSG: baxter_maintenance_msgs/TareData~%bool tuneGravitySpring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TareEnable>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'uid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TareEnable>))
  "Converts a ROS message object to a list"
  (cl:list 'TareEnable
    (cl:cons ':isEnabled (isEnabled msg))
    (cl:cons ':uid (uid msg))
    (cl:cons ':data (data msg))
))

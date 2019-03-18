; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude UpdateSources.msg.html

(cl:defclass <UpdateSources> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (sources
    :reader sources
    :initarg :sources
    :type (cl:vector baxter_maintenance_msgs-msg:UpdateSource)
   :initform (cl:make-array 0 :element-type 'baxter_maintenance_msgs-msg:UpdateSource :initial-element (cl:make-instance 'baxter_maintenance_msgs-msg:UpdateSource))))
)

(cl:defclass UpdateSources (<UpdateSources>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateSources>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateSources)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<UpdateSources> is deprecated: use baxter_maintenance_msgs-msg:UpdateSources instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <UpdateSources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:uuid-val is deprecated.  Use baxter_maintenance_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'sources-val :lambda-list '(m))
(cl:defmethod sources-val ((m <UpdateSources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:sources-val is deprecated.  Use baxter_maintenance_msgs-msg:sources instead.")
  (sources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateSources>) ostream)
  "Serializes a message object of type '<UpdateSources>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateSources>) istream)
  "Deserializes a message object of type '<UpdateSources>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'baxter_maintenance_msgs-msg:UpdateSource))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateSources>)))
  "Returns string type for a message object of type '<UpdateSources>"
  "baxter_maintenance_msgs/UpdateSources")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateSources)))
  "Returns string type for a message object of type 'UpdateSources"
  "baxter_maintenance_msgs/UpdateSources")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateSources>)))
  "Returns md5sum for a message object of type '<UpdateSources>"
  "b3b428bf55e80e83d378830c33b3405b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateSources)))
  "Returns md5sum for a message object of type 'UpdateSources"
  "b3b428bf55e80e83d378830c33b3405b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateSources>)))
  "Returns full string definition for message of type '<UpdateSources>"
  (cl:format cl:nil "string          uuid~%UpdateSource[]  sources~%~%================================================================================~%MSG: baxter_maintenance_msgs/UpdateSource~%string  devname~%string  filename~%string  version~%string  uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateSources)))
  "Returns full string definition for message of type 'UpdateSources"
  (cl:format cl:nil "string          uuid~%UpdateSource[]  sources~%~%================================================================================~%MSG: baxter_maintenance_msgs/UpdateSource~%string  devname~%string  filename~%string  version~%string  uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateSources>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateSources>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateSources
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':sources (sources msg))
))

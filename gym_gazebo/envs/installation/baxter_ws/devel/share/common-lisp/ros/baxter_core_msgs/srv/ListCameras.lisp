; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-srv)


;//! \htmlinclude ListCameras-request.msg.html

(cl:defclass <ListCameras-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListCameras-request (<ListCameras-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListCameras-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListCameras-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<ListCameras-request> is deprecated: use baxter_core_msgs-srv:ListCameras-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListCameras-request>) ostream)
  "Serializes a message object of type '<ListCameras-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListCameras-request>) istream)
  "Deserializes a message object of type '<ListCameras-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListCameras-request>)))
  "Returns string type for a service object of type '<ListCameras-request>"
  "baxter_core_msgs/ListCamerasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListCameras-request)))
  "Returns string type for a service object of type 'ListCameras-request"
  "baxter_core_msgs/ListCamerasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListCameras-request>)))
  "Returns md5sum for a message object of type '<ListCameras-request>"
  "855b31192ab61744e7deb992d94db7ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListCameras-request)))
  "Returns md5sum for a message object of type 'ListCameras-request"
  "855b31192ab61744e7deb992d94db7ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListCameras-request>)))
  "Returns full string definition for message of type '<ListCameras-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListCameras-request)))
  "Returns full string definition for message of type 'ListCameras-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListCameras-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListCameras-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListCameras-request
))
;//! \htmlinclude ListCameras-response.msg.html

(cl:defclass <ListCameras-response> (roslisp-msg-protocol:ros-message)
  ((cameras
    :reader cameras
    :initarg :cameras
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListCameras-response (<ListCameras-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListCameras-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListCameras-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-srv:<ListCameras-response> is deprecated: use baxter_core_msgs-srv:ListCameras-response instead.")))

(cl:ensure-generic-function 'cameras-val :lambda-list '(m))
(cl:defmethod cameras-val ((m <ListCameras-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-srv:cameras-val is deprecated.  Use baxter_core_msgs-srv:cameras instead.")
  (cameras m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListCameras-response>) ostream)
  "Serializes a message object of type '<ListCameras-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameras))))
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
   (cl:slot-value msg 'cameras))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListCameras-response>) istream)
  "Deserializes a message object of type '<ListCameras-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameras) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameras)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListCameras-response>)))
  "Returns string type for a service object of type '<ListCameras-response>"
  "baxter_core_msgs/ListCamerasResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListCameras-response)))
  "Returns string type for a service object of type 'ListCameras-response"
  "baxter_core_msgs/ListCamerasResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListCameras-response>)))
  "Returns md5sum for a message object of type '<ListCameras-response>"
  "855b31192ab61744e7deb992d94db7ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListCameras-response)))
  "Returns md5sum for a message object of type 'ListCameras-response"
  "855b31192ab61744e7deb992d94db7ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListCameras-response>)))
  "Returns full string definition for message of type '<ListCameras-response>"
  (cl:format cl:nil "string[]    cameras~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListCameras-response)))
  "Returns full string definition for message of type 'ListCameras-response"
  (cl:format cl:nil "string[]    cameras~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListCameras-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameras) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListCameras-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListCameras-response
    (cl:cons ':cameras (cameras msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListCameras)))
  'ListCameras-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListCameras)))
  'ListCameras-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListCameras)))
  "Returns string type for a service object of type '<ListCameras>"
  "baxter_core_msgs/ListCameras")
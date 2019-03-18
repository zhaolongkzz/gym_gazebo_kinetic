; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude NavigatorState.msg.html

(cl:defclass <NavigatorState> (roslisp-msg-protocol:ros-message)
  ((button_names
    :reader button_names
    :initarg :button_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (buttons
    :reader buttons
    :initarg :buttons
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (wheel
    :reader wheel
    :initarg :wheel
    :type cl:fixnum
    :initform 0)
   (light_names
    :reader light_names
    :initarg :light_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (lights
    :reader lights
    :initarg :lights
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass NavigatorState (<NavigatorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigatorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigatorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<NavigatorState> is deprecated: use baxter_core_msgs-msg:NavigatorState instead.")))

(cl:ensure-generic-function 'button_names-val :lambda-list '(m))
(cl:defmethod button_names-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:button_names-val is deprecated.  Use baxter_core_msgs-msg:button_names instead.")
  (button_names m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:buttons-val is deprecated.  Use baxter_core_msgs-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:wheel-val is deprecated.  Use baxter_core_msgs-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'light_names-val :lambda-list '(m))
(cl:defmethod light_names-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:light_names-val is deprecated.  Use baxter_core_msgs-msg:light_names instead.")
  (light_names m))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:lights-val is deprecated.  Use baxter_core_msgs-msg:lights instead.")
  (lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigatorState>) ostream)
  "Serializes a message object of type '<NavigatorState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'button_names))))
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
   (cl:slot-value msg 'button_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buttons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'buttons))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'light_names))))
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
   (cl:slot-value msg 'light_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'lights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigatorState>) istream)
  "Deserializes a message object of type '<NavigatorState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'button_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'button_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buttons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buttons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'light_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'light_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigatorState>)))
  "Returns string type for a message object of type '<NavigatorState>"
  "baxter_core_msgs/NavigatorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigatorState)))
  "Returns string type for a message object of type 'NavigatorState"
  "baxter_core_msgs/NavigatorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigatorState>)))
  "Returns md5sum for a message object of type '<NavigatorState>"
  "680d121a1f16a32647298b292492fffd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigatorState)))
  "Returns md5sum for a message object of type 'NavigatorState"
  "680d121a1f16a32647298b292492fffd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigatorState>)))
  "Returns full string definition for message of type '<NavigatorState>"
  (cl:format cl:nil "# buttons~%string[] button_names~%bool[] buttons~%~%# wheel position~%uint8   wheel~%~%# true if the light is on, false if not~%# lights map to button names~%string[] light_names~%bool[] lights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigatorState)))
  "Returns full string definition for message of type 'NavigatorState"
  (cl:format cl:nil "# buttons~%string[] button_names~%bool[] buttons~%~%# wheel position~%uint8   wheel~%~%# true if the light is on, false if not~%# lights map to button names~%string[] light_names~%bool[] lights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigatorState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'button_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buttons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'light_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigatorState>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigatorState
    (cl:cons ':button_names (button_names msg))
    (cl:cons ':buttons (buttons msg))
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':light_names (light_names msg))
    (cl:cons ':lights (lights msg))
))

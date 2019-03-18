; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude AssemblyStates.msg.html

(cl:defclass <AssemblyStates> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (states
    :reader states
    :initarg :states
    :type (cl:vector baxter_core_msgs-msg:AssemblyState)
   :initform (cl:make-array 0 :element-type 'baxter_core_msgs-msg:AssemblyState :initial-element (cl:make-instance 'baxter_core_msgs-msg:AssemblyState))))
)

(cl:defclass AssemblyStates (<AssemblyStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssemblyStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssemblyStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<AssemblyStates> is deprecated: use baxter_core_msgs-msg:AssemblyStates instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <AssemblyStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:names-val is deprecated.  Use baxter_core_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <AssemblyStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:states-val is deprecated.  Use baxter_core_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssemblyStates>) ostream)
  "Serializes a message object of type '<AssemblyStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
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
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssemblyStates>) istream)
  "Deserializes a message object of type '<AssemblyStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
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
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'baxter_core_msgs-msg:AssemblyState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssemblyStates>)))
  "Returns string type for a message object of type '<AssemblyStates>"
  "baxter_core_msgs/AssemblyStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssemblyStates)))
  "Returns string type for a message object of type 'AssemblyStates"
  "baxter_core_msgs/AssemblyStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssemblyStates>)))
  "Returns md5sum for a message object of type '<AssemblyStates>"
  "63427318d41dbd2077c105027ad82a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssemblyStates)))
  "Returns md5sum for a message object of type 'AssemblyStates"
  "63427318d41dbd2077c105027ad82a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssemblyStates>)))
  "Returns full string definition for message of type '<AssemblyStates>"
  (cl:format cl:nil "string[] names~%AssemblyState[] states~%================================================================================~%MSG: baxter_core_msgs/AssemblyState~%bool ready               # true if enabled and ready to operate, e.g., not homing~%bool enabled             # true if enabled~%bool stopped             # true if stopped -- e-stop asserted~%bool error               # true if a component of the assembly has an error~%#~%# The following are specific to the robot top-level assembly:~%uint8  estop_button      # One of the following:~%  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed~%  uint8   ESTOP_BUTTON_PRESSED   = 1~%  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source~%  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.~%#~%uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:~%  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted~%  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)~%  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown~%  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault~%  uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssemblyStates)))
  "Returns full string definition for message of type 'AssemblyStates"
  (cl:format cl:nil "string[] names~%AssemblyState[] states~%================================================================================~%MSG: baxter_core_msgs/AssemblyState~%bool ready               # true if enabled and ready to operate, e.g., not homing~%bool enabled             # true if enabled~%bool stopped             # true if stopped -- e-stop asserted~%bool error               # true if a component of the assembly has an error~%#~%# The following are specific to the robot top-level assembly:~%uint8  estop_button      # One of the following:~%  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed~%  uint8   ESTOP_BUTTON_PRESSED   = 1~%  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source~%  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.~%#~%uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:~%  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted~%  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)~%  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown~%  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault~%  uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssemblyStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssemblyStates>))
  "Converts a ROS message object to a list"
  (cl:list 'AssemblyStates
    (cl:cons ':names (names msg))
    (cl:cons ':states (states msg))
))

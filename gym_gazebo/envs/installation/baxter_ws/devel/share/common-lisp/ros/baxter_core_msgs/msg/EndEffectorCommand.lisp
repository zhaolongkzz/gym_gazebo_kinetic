; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude EndEffectorCommand.msg.html

(cl:defclass <EndEffectorCommand> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type cl:string
    :initform "")
   (sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0))
)

(cl:defclass EndEffectorCommand (<EndEffectorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndEffectorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndEffectorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<EndEffectorCommand> is deprecated: use baxter_core_msgs-msg:EndEffectorCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EndEffectorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:id-val is deprecated.  Use baxter_core_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <EndEffectorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:command-val is deprecated.  Use baxter_core_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <EndEffectorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:args-val is deprecated.  Use baxter_core_msgs-msg:args instead.")
  (args m))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <EndEffectorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:sender-val is deprecated.  Use baxter_core_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <EndEffectorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:sequence-val is deprecated.  Use baxter_core_msgs-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EndEffectorCommand>)))
    "Constants for message type '<EndEffectorCommand>"
  '((:CMD_NO_OP . no_op)
    (:CMD_SET . set)
    (:CMD_CONFIGURE . configure)
    (:CMD_REBOOT . reboot)
    (:CMD_RESET . reset)
    (:CMD_CALIBRATE . calibrate)
    (:CMD_CLEAR_CALIBRATION . clear_calibration)
    (:CMD_PREPARE_TO_GRIP . prepare_to_grip)
    (:CMD_GRIP . grip)
    (:CMD_RELEASE . release)
    (:CMD_GO . go)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EndEffectorCommand)))
    "Constants for message type 'EndEffectorCommand"
  '((:CMD_NO_OP . no_op)
    (:CMD_SET . set)
    (:CMD_CONFIGURE . configure)
    (:CMD_REBOOT . reboot)
    (:CMD_RESET . reset)
    (:CMD_CALIBRATE . calibrate)
    (:CMD_CLEAR_CALIBRATION . clear_calibration)
    (:CMD_PREPARE_TO_GRIP . prepare_to_grip)
    (:CMD_GRIP . grip)
    (:CMD_RELEASE . release)
    (:CMD_GO . go)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndEffectorCommand>) ostream)
  "Serializes a message object of type '<EndEffectorCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'args))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndEffectorCommand>) istream)
  "Deserializes a message object of type '<EndEffectorCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'args) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'args) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndEffectorCommand>)))
  "Returns string type for a message object of type '<EndEffectorCommand>"
  "baxter_core_msgs/EndEffectorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorCommand)))
  "Returns string type for a message object of type 'EndEffectorCommand"
  "baxter_core_msgs/EndEffectorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndEffectorCommand>)))
  "Returns md5sum for a message object of type '<EndEffectorCommand>"
  "c003234e90416f2ca02ac7837c42cbb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndEffectorCommand)))
  "Returns md5sum for a message object of type 'EndEffectorCommand"
  "c003234e90416f2ca02ac7837c42cbb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndEffectorCommand>)))
  "Returns full string definition for message of type '<EndEffectorCommand>"
  (cl:format cl:nil "## Command to be sent to an end effector~%uint32 id       # target end effector id~%string command  # operation to perform~%# Well known commands:~%string   CMD_NO_OP           = no_op~%string   CMD_SET             = set~%string   CMD_CONFIGURE       = configure~%string   CMD_REBOOT          = reboot~%string   CMD_RESET           = reset~%string   CMD_CALIBRATE       = calibrate~%string   CMD_CLEAR_CALIBRATION = clear_calibration~%string   CMD_PREPARE_TO_GRIP = prepare_to_grip~%string   CMD_GRIP            = grip~%string   CMD_RELEASE         = release~%string   CMD_GO              = go~%string   CMD_STOP            = stop~%#~%string args     # JSON arguments to the command~%#~%string sender   # optional identifier, returned in state when the command is handled~%uint32 sequence # optional sequence number, return in state when the command is handled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndEffectorCommand)))
  "Returns full string definition for message of type 'EndEffectorCommand"
  (cl:format cl:nil "## Command to be sent to an end effector~%uint32 id       # target end effector id~%string command  # operation to perform~%# Well known commands:~%string   CMD_NO_OP           = no_op~%string   CMD_SET             = set~%string   CMD_CONFIGURE       = configure~%string   CMD_REBOOT          = reboot~%string   CMD_RESET           = reset~%string   CMD_CALIBRATE       = calibrate~%string   CMD_CLEAR_CALIBRATION = clear_calibration~%string   CMD_PREPARE_TO_GRIP = prepare_to_grip~%string   CMD_GRIP            = grip~%string   CMD_RELEASE         = release~%string   CMD_GO              = go~%string   CMD_STOP            = stop~%#~%string args     # JSON arguments to the command~%#~%string sender   # optional identifier, returned in state when the command is handled~%uint32 sequence # optional sequence number, return in state when the command is handled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndEffectorCommand>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'args))
     4 (cl:length (cl:slot-value msg 'sender))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndEffectorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'EndEffectorCommand
    (cl:cons ':id (id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':args (args msg))
    (cl:cons ':sender (sender msg))
    (cl:cons ':sequence (sequence msg))
))

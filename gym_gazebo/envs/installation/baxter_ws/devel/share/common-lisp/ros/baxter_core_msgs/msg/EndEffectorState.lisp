; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude EndEffectorState.msg.html

(cl:defclass <EndEffectorState> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:fixnum
    :initform 0)
   (calibrated
    :reader calibrated
    :initarg :calibrated
    :type cl:fixnum
    :initform 0)
   (ready
    :reader ready
    :initarg :ready
    :type cl:fixnum
    :initform 0)
   (moving
    :reader moving
    :initarg :moving
    :type cl:fixnum
    :initform 0)
   (gripping
    :reader gripping
    :initarg :gripping
    :type cl:fixnum
    :initform 0)
   (missed
    :reader missed
    :initarg :missed
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (command_sender
    :reader command_sender
    :initarg :command_sender
    :type cl:string
    :initform "")
   (command_sequence
    :reader command_sequence
    :initarg :command_sequence
    :type cl:integer
    :initform 0))
)

(cl:defclass EndEffectorState (<EndEffectorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndEffectorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndEffectorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<EndEffectorState> is deprecated: use baxter_core_msgs-msg:EndEffectorState instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:timestamp-val is deprecated.  Use baxter_core_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:id-val is deprecated.  Use baxter_core_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:enabled-val is deprecated.  Use baxter_core_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'calibrated-val :lambda-list '(m))
(cl:defmethod calibrated-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:calibrated-val is deprecated.  Use baxter_core_msgs-msg:calibrated instead.")
  (calibrated m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:ready-val is deprecated.  Use baxter_core_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:moving-val is deprecated.  Use baxter_core_msgs-msg:moving instead.")
  (moving m))

(cl:ensure-generic-function 'gripping-val :lambda-list '(m))
(cl:defmethod gripping-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:gripping-val is deprecated.  Use baxter_core_msgs-msg:gripping instead.")
  (gripping m))

(cl:ensure-generic-function 'missed-val :lambda-list '(m))
(cl:defmethod missed-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:missed-val is deprecated.  Use baxter_core_msgs-msg:missed instead.")
  (missed m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:error-val is deprecated.  Use baxter_core_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:reverse-val is deprecated.  Use baxter_core_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:position-val is deprecated.  Use baxter_core_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:force-val is deprecated.  Use baxter_core_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:state-val is deprecated.  Use baxter_core_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:command-val is deprecated.  Use baxter_core_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'command_sender-val :lambda-list '(m))
(cl:defmethod command_sender-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:command_sender-val is deprecated.  Use baxter_core_msgs-msg:command_sender instead.")
  (command_sender m))

(cl:ensure-generic-function 'command_sequence-val :lambda-list '(m))
(cl:defmethod command_sequence-val ((m <EndEffectorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:command_sequence-val is deprecated.  Use baxter_core_msgs-msg:command_sequence instead.")
  (command_sequence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EndEffectorState>)))
    "Constants for message type '<EndEffectorState>"
  '((:STATE_FALSE . 0)
    (:STATE_TRUE . 1)
    (:STATE_UNKNOWN . 2)
    (:POSITION_CLOSED . 0.0)
    (:POSITION_OPEN . 100.0)
    (:FORCE_MIN . 0.0)
    (:FORCE_MAX . 100.0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EndEffectorState)))
    "Constants for message type 'EndEffectorState"
  '((:STATE_FALSE . 0)
    (:STATE_TRUE . 1)
    (:STATE_UNKNOWN . 2)
    (:POSITION_CLOSED . 0.0)
    (:POSITION_OPEN . 100.0)
    (:FORCE_MIN . 0.0)
    (:FORCE_MAX . 100.0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndEffectorState>) ostream)
  "Serializes a message object of type '<EndEffectorState>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibrated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ready)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripping)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_sequence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndEffectorState>) istream)
  "Deserializes a message object of type '<EndEffectorState>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibrated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ready)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'moving)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripping)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'command_sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_sequence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndEffectorState>)))
  "Returns string type for a message object of type '<EndEffectorState>"
  "baxter_core_msgs/EndEffectorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorState)))
  "Returns string type for a message object of type 'EndEffectorState"
  "baxter_core_msgs/EndEffectorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndEffectorState>)))
  "Returns md5sum for a message object of type '<EndEffectorState>"
  "ade777f069d738595bc19e246b8ec7a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndEffectorState)))
  "Returns md5sum for a message object of type 'EndEffectorState"
  "ade777f069d738595bc19e246b8ec7a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndEffectorState>)))
  "Returns full string definition for message of type '<EndEffectorState>"
  (cl:format cl:nil "#~%time timestamp              # time when state was updated~%uint32 id                   # EndEffectorId~%#~%# The following State fields are tristate: 0 = false; 1 = true; 2 = unknown/unsupported~%  uint8   STATE_FALSE = 0~%  uint8   STATE_TRUE = 1~%  uint8   STATE_UNKNOWN = 2~%#~%uint8   enabled             # true if enabled~%uint8   calibrated          # true if calibration has completed~%uint8   ready               # true if ready for another command~%uint8   moving              # true if moving~%uint8   gripping            # true if gripping~%uint8   missed              # true if GRIP/GOTO/SET was commanded and the gripper reaches the end of travel~%uint8   error               # true if the gripper is in an error state~%uint8   reverse             # true if the gripper is in reverse mode~%#~%float32 position            # position as a percentage of the max position;      0=closed - 100=open~%#~%  float32 POSITION_CLOSED = 0.0~%  float32 POSITION_OPEN   = 100.0~%#~%float32 force               # force as a percentage of max force;                0=none   - 100=max~%#~%  float32 FORCE_MIN = 0.0~%  float32 FORCE_MAX = 100.0~%#~%string state                # JSON: other state information~%#~%string command              # from the last command message~%string command_sender~%uint32 command_sequence~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndEffectorState)))
  "Returns full string definition for message of type 'EndEffectorState"
  (cl:format cl:nil "#~%time timestamp              # time when state was updated~%uint32 id                   # EndEffectorId~%#~%# The following State fields are tristate: 0 = false; 1 = true; 2 = unknown/unsupported~%  uint8   STATE_FALSE = 0~%  uint8   STATE_TRUE = 1~%  uint8   STATE_UNKNOWN = 2~%#~%uint8   enabled             # true if enabled~%uint8   calibrated          # true if calibration has completed~%uint8   ready               # true if ready for another command~%uint8   moving              # true if moving~%uint8   gripping            # true if gripping~%uint8   missed              # true if GRIP/GOTO/SET was commanded and the gripper reaches the end of travel~%uint8   error               # true if the gripper is in an error state~%uint8   reverse             # true if the gripper is in reverse mode~%#~%float32 position            # position as a percentage of the max position;      0=closed - 100=open~%#~%  float32 POSITION_CLOSED = 0.0~%  float32 POSITION_OPEN   = 100.0~%#~%float32 force               # force as a percentage of max force;                0=none   - 100=max~%#~%  float32 FORCE_MIN = 0.0~%  float32 FORCE_MAX = 100.0~%#~%string state                # JSON: other state information~%#~%string command              # from the last command message~%string command_sender~%uint32 command_sequence~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndEffectorState>))
  (cl:+ 0
     8
     4
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'command_sender))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndEffectorState>))
  "Converts a ROS message object to a list"
  (cl:list 'EndEffectorState
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':calibrated (calibrated msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':moving (moving msg))
    (cl:cons ':gripping (gripping msg))
    (cl:cons ':missed (missed msg))
    (cl:cons ':error (error msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':position (position msg))
    (cl:cons ':force (force msg))
    (cl:cons ':state (state msg))
    (cl:cons ':command (command msg))
    (cl:cons ':command_sender (command_sender msg))
    (cl:cons ':command_sequence (command_sequence msg))
))

; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude RobustControllerStatus.msg.html

(cl:defclass <RobustControllerStatus> (roslisp-msg-protocol:ros-message)
  ((isEnabled
    :reader isEnabled
    :initarg :isEnabled
    :type cl:boolean
    :initform cl:nil)
   (complete
    :reader complete
    :initarg :complete
    :type cl:integer
    :initform 0)
   (controlUid
    :reader controlUid
    :initarg :controlUid
    :type cl:string
    :initform "")
   (timedOut
    :reader timedOut
    :initarg :timedOut
    :type cl:boolean
    :initform cl:nil)
   (errorCodes
    :reader errorCodes
    :initarg :errorCodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RobustControllerStatus (<RobustControllerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobustControllerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobustControllerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<RobustControllerStatus> is deprecated: use baxter_core_msgs-msg:RobustControllerStatus instead.")))

(cl:ensure-generic-function 'isEnabled-val :lambda-list '(m))
(cl:defmethod isEnabled-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:isEnabled-val is deprecated.  Use baxter_core_msgs-msg:isEnabled instead.")
  (isEnabled m))

(cl:ensure-generic-function 'complete-val :lambda-list '(m))
(cl:defmethod complete-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:complete-val is deprecated.  Use baxter_core_msgs-msg:complete instead.")
  (complete m))

(cl:ensure-generic-function 'controlUid-val :lambda-list '(m))
(cl:defmethod controlUid-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:controlUid-val is deprecated.  Use baxter_core_msgs-msg:controlUid instead.")
  (controlUid m))

(cl:ensure-generic-function 'timedOut-val :lambda-list '(m))
(cl:defmethod timedOut-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:timedOut-val is deprecated.  Use baxter_core_msgs-msg:timedOut instead.")
  (timedOut m))

(cl:ensure-generic-function 'errorCodes-val :lambda-list '(m))
(cl:defmethod errorCodes-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:errorCodes-val is deprecated.  Use baxter_core_msgs-msg:errorCodes instead.")
  (errorCodes m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <RobustControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:labels-val is deprecated.  Use baxter_core_msgs-msg:labels instead.")
  (labels m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobustControllerStatus>)))
    "Constants for message type '<RobustControllerStatus>"
  '((:NOT_COMPLETE . 0)
    (:COMPLETE_W_FAILURE . 1)
    (:COMPLETE_W_SUCCESS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobustControllerStatus)))
    "Constants for message type 'RobustControllerStatus"
  '((:NOT_COMPLETE . 0)
    (:COMPLETE_W_FAILURE . 1)
    (:COMPLETE_W_SUCCESS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobustControllerStatus>) ostream)
  "Serializes a message object of type '<RobustControllerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isEnabled) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'complete)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controlUid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controlUid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timedOut) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errorCodes))))
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
   (cl:slot-value msg 'errorCodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
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
   (cl:slot-value msg 'labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobustControllerStatus>) istream)
  "Deserializes a message object of type '<RobustControllerStatus>"
    (cl:setf (cl:slot-value msg 'isEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'complete) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controlUid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controlUid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'timedOut) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errorCodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errorCodes)))
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
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobustControllerStatus>)))
  "Returns string type for a message object of type '<RobustControllerStatus>"
  "baxter_core_msgs/RobustControllerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobustControllerStatus)))
  "Returns string type for a message object of type 'RobustControllerStatus"
  "baxter_core_msgs/RobustControllerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobustControllerStatus>)))
  "Returns md5sum for a message object of type '<RobustControllerStatus>"
  "2f15441b7285d915e7e59d3618e173f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobustControllerStatus)))
  "Returns md5sum for a message object of type 'RobustControllerStatus"
  "2f15441b7285d915e7e59d3618e173f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobustControllerStatus>)))
  "Returns full string definition for message of type '<RobustControllerStatus>"
  (cl:format cl:nil "# True if the RC is enabled and running, false if not.~%bool isEnabled~%~%# The state of the RC with respect to its completion goal.  One of~%# NOT_COMPLETE, COMPLETE_W_FAILURE, or COMPLETE_W_SUCCESS~%int32 complete~%int32 NOT_COMPLETE = 0~%int32 COMPLETE_W_FAILURE = 1~%int32 COMPLETE_W_SUCCESS = 2~%~%# Identifies the sender of the Enable message that the RC is using for its~%# commands.  This should correspond to the \"uid\" field of a recently published~%# RC *Enable message.~%string controlUid~%~%# Set to true when the RC self-disables as a result of too much time elapsing~%# without receiving an Enable message.~%bool timedOut~%~%# A list of relevant error codes.  Error codes are defined by the individual~%# robust controllers, consult a robust controller's documentation to see what~%# error codes it generates.~%string[] errorCodes~%~%# A list of current labels for the RC's current state. For example, \"fastapproach\",~%# \"slowapproach\", etc. Used primarily for the blended RCs, other RCs can leave this~%# blank. This will probably contains just one label, but it could contain multiple labels~%# in the future.~%string[] labels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobustControllerStatus)))
  "Returns full string definition for message of type 'RobustControllerStatus"
  (cl:format cl:nil "# True if the RC is enabled and running, false if not.~%bool isEnabled~%~%# The state of the RC with respect to its completion goal.  One of~%# NOT_COMPLETE, COMPLETE_W_FAILURE, or COMPLETE_W_SUCCESS~%int32 complete~%int32 NOT_COMPLETE = 0~%int32 COMPLETE_W_FAILURE = 1~%int32 COMPLETE_W_SUCCESS = 2~%~%# Identifies the sender of the Enable message that the RC is using for its~%# commands.  This should correspond to the \"uid\" field of a recently published~%# RC *Enable message.~%string controlUid~%~%# Set to true when the RC self-disables as a result of too much time elapsing~%# without receiving an Enable message.~%bool timedOut~%~%# A list of relevant error codes.  Error codes are defined by the individual~%# robust controllers, consult a robust controller's documentation to see what~%# error codes it generates.~%string[] errorCodes~%~%# A list of current labels for the RC's current state. For example, \"fastapproach\",~%# \"slowapproach\", etc. Used primarily for the blended RCs, other RCs can leave this~%# blank. This will probably contains just one label, but it could contain multiple labels~%# in the future.~%string[] labels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobustControllerStatus>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'controlUid))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errorCodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobustControllerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobustControllerStatus
    (cl:cons ':isEnabled (isEnabled msg))
    (cl:cons ':complete (complete msg))
    (cl:cons ':controlUid (controlUid msg))
    (cl:cons ':timedOut (timedOut msg))
    (cl:cons ':errorCodes (errorCodes msg))
    (cl:cons ':labels (labels msg))
))

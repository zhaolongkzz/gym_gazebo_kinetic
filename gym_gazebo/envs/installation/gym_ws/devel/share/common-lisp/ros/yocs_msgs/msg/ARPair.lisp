; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude ARPair.msg.html

(cl:defclass <ARPair> (roslisp-msg-protocol:ros-message)
  ((left_id
    :reader left_id
    :initarg :left_id
    :type cl:fixnum
    :initform 0)
   (right_id
    :reader right_id
    :initarg :right_id
    :type cl:fixnum
    :initform 0)
   (baseline
    :reader baseline
    :initarg :baseline
    :type cl:float
    :initform 0.0)
   (target_offset
    :reader target_offset
    :initarg :target_offset
    :type cl:float
    :initform 0.0)
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform ""))
)

(cl:defclass ARPair (<ARPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ARPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ARPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<ARPair> is deprecated: use yocs_msgs-msg:ARPair instead.")))

(cl:ensure-generic-function 'left_id-val :lambda-list '(m))
(cl:defmethod left_id-val ((m <ARPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:left_id-val is deprecated.  Use yocs_msgs-msg:left_id instead.")
  (left_id m))

(cl:ensure-generic-function 'right_id-val :lambda-list '(m))
(cl:defmethod right_id-val ((m <ARPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:right_id-val is deprecated.  Use yocs_msgs-msg:right_id instead.")
  (right_id m))

(cl:ensure-generic-function 'baseline-val :lambda-list '(m))
(cl:defmethod baseline-val ((m <ARPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:baseline-val is deprecated.  Use yocs_msgs-msg:baseline instead.")
  (baseline m))

(cl:ensure-generic-function 'target_offset-val :lambda-list '(m))
(cl:defmethod target_offset-val ((m <ARPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:target_offset-val is deprecated.  Use yocs_msgs-msg:target_offset instead.")
  (target_offset m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <ARPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:target_frame-val is deprecated.  Use yocs_msgs-msg:target_frame instead.")
  (target_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ARPair>) ostream)
  "Serializes a message object of type '<ARPair>"
  (cl:let* ((signed (cl:slot-value msg 'left_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'baseline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ARPair>) istream)
  "Deserializes a message object of type '<ARPair>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'baseline) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ARPair>)))
  "Returns string type for a message object of type '<ARPair>"
  "yocs_msgs/ARPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ARPair)))
  "Returns string type for a message object of type 'ARPair"
  "yocs_msgs/ARPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ARPair>)))
  "Returns md5sum for a message object of type '<ARPair>"
  "9a0e51fbcb2eab37a945707af8ee9a6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ARPair)))
  "Returns md5sum for a message object of type 'ARPair"
  "9a0e51fbcb2eab37a945707af8ee9a6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ARPair>)))
  "Returns full string definition for message of type '<ARPair>"
  (cl:format cl:nil "int16  left_id~%int16  right_id~%float32 baseline~%float32 target_offset~%string  target_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ARPair)))
  "Returns full string definition for message of type 'ARPair"
  (cl:format cl:nil "int16  left_id~%int16  right_id~%float32 baseline~%float32 target_offset~%string  target_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ARPair>))
  (cl:+ 0
     2
     2
     4
     4
     4 (cl:length (cl:slot-value msg 'target_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ARPair>))
  "Converts a ROS message object to a list"
  (cl:list 'ARPair
    (cl:cons ':left_id (left_id msg))
    (cl:cons ':right_id (right_id msg))
    (cl:cons ':baseline (baseline msg))
    (cl:cons ':target_offset (target_offset msg))
    (cl:cons ':target_frame (target_frame msg))
))

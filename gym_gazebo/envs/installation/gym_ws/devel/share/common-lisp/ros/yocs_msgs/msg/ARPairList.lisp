; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude ARPairList.msg.html

(cl:defclass <ARPairList> (roslisp-msg-protocol:ros-message)
  ((pairs
    :reader pairs
    :initarg :pairs
    :type (cl:vector yocs_msgs-msg:ARPair)
   :initform (cl:make-array 0 :element-type 'yocs_msgs-msg:ARPair :initial-element (cl:make-instance 'yocs_msgs-msg:ARPair))))
)

(cl:defclass ARPairList (<ARPairList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ARPairList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ARPairList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<ARPairList> is deprecated: use yocs_msgs-msg:ARPairList instead.")))

(cl:ensure-generic-function 'pairs-val :lambda-list '(m))
(cl:defmethod pairs-val ((m <ARPairList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:pairs-val is deprecated.  Use yocs_msgs-msg:pairs instead.")
  (pairs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ARPairList>) ostream)
  "Serializes a message object of type '<ARPairList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pairs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pairs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ARPairList>) istream)
  "Deserializes a message object of type '<ARPairList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pairs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pairs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yocs_msgs-msg:ARPair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ARPairList>)))
  "Returns string type for a message object of type '<ARPairList>"
  "yocs_msgs/ARPairList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ARPairList)))
  "Returns string type for a message object of type 'ARPairList"
  "yocs_msgs/ARPairList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ARPairList>)))
  "Returns md5sum for a message object of type '<ARPairList>"
  "0d0cfdee6418b6b3edd41c0abc93d76f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ARPairList)))
  "Returns md5sum for a message object of type 'ARPairList"
  "0d0cfdee6418b6b3edd41c0abc93d76f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ARPairList>)))
  "Returns full string definition for message of type '<ARPairList>"
  (cl:format cl:nil "ARPair[] pairs~%~%================================================================================~%MSG: yocs_msgs/ARPair~%int16  left_id~%int16  right_id~%float32 baseline~%float32 target_offset~%string  target_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ARPairList)))
  "Returns full string definition for message of type 'ARPairList"
  (cl:format cl:nil "ARPair[] pairs~%~%================================================================================~%MSG: yocs_msgs/ARPair~%int16  left_id~%int16  right_id~%float32 baseline~%float32 target_offset~%string  target_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ARPairList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pairs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ARPairList>))
  "Converts a ROS message object to a list"
  (cl:list 'ARPairList
    (cl:cons ':pairs (pairs msg))
))

; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude CalibrateArmData.msg.html

(cl:defclass <CalibrateArmData> (roslisp-msg-protocol:ros-message)
  ((suppressWriteToFile
    :reader suppressWriteToFile
    :initarg :suppressWriteToFile
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CalibrateArmData (<CalibrateArmData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrateArmData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrateArmData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<CalibrateArmData> is deprecated: use baxter_maintenance_msgs-msg:CalibrateArmData instead.")))

(cl:ensure-generic-function 'suppressWriteToFile-val :lambda-list '(m))
(cl:defmethod suppressWriteToFile-val ((m <CalibrateArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:suppressWriteToFile-val is deprecated.  Use baxter_maintenance_msgs-msg:suppressWriteToFile instead.")
  (suppressWriteToFile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrateArmData>) ostream)
  "Serializes a message object of type '<CalibrateArmData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'suppressWriteToFile) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrateArmData>) istream)
  "Deserializes a message object of type '<CalibrateArmData>"
    (cl:setf (cl:slot-value msg 'suppressWriteToFile) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrateArmData>)))
  "Returns string type for a message object of type '<CalibrateArmData>"
  "baxter_maintenance_msgs/CalibrateArmData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrateArmData)))
  "Returns string type for a message object of type 'CalibrateArmData"
  "baxter_maintenance_msgs/CalibrateArmData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrateArmData>)))
  "Returns md5sum for a message object of type '<CalibrateArmData>"
  "ba9ee949ea363f7bcfc8cc74e0bcb69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrateArmData)))
  "Returns md5sum for a message object of type 'CalibrateArmData"
  "ba9ee949ea363f7bcfc8cc74e0bcb69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrateArmData>)))
  "Returns full string definition for message of type '<CalibrateArmData>"
  (cl:format cl:nil "bool suppressWriteToFile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrateArmData)))
  "Returns full string definition for message of type 'CalibrateArmData"
  (cl:format cl:nil "bool suppressWriteToFile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrateArmData>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrateArmData>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrateArmData
    (cl:cons ':suppressWriteToFile (suppressWriteToFile msg))
))

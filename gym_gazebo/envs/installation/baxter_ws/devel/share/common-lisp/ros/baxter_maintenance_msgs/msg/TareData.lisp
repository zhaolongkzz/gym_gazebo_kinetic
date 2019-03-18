; Auto-generated. Do not edit!


(cl:in-package baxter_maintenance_msgs-msg)


;//! \htmlinclude TareData.msg.html

(cl:defclass <TareData> (roslisp-msg-protocol:ros-message)
  ((tuneGravitySpring
    :reader tuneGravitySpring
    :initarg :tuneGravitySpring
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TareData (<TareData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TareData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TareData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_maintenance_msgs-msg:<TareData> is deprecated: use baxter_maintenance_msgs-msg:TareData instead.")))

(cl:ensure-generic-function 'tuneGravitySpring-val :lambda-list '(m))
(cl:defmethod tuneGravitySpring-val ((m <TareData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_maintenance_msgs-msg:tuneGravitySpring-val is deprecated.  Use baxter_maintenance_msgs-msg:tuneGravitySpring instead.")
  (tuneGravitySpring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TareData>) ostream)
  "Serializes a message object of type '<TareData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tuneGravitySpring) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TareData>) istream)
  "Deserializes a message object of type '<TareData>"
    (cl:setf (cl:slot-value msg 'tuneGravitySpring) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TareData>)))
  "Returns string type for a message object of type '<TareData>"
  "baxter_maintenance_msgs/TareData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TareData)))
  "Returns string type for a message object of type 'TareData"
  "baxter_maintenance_msgs/TareData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TareData>)))
  "Returns md5sum for a message object of type '<TareData>"
  "241e9c2ceee7da9db50693da0b3f2741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TareData)))
  "Returns md5sum for a message object of type 'TareData"
  "241e9c2ceee7da9db50693da0b3f2741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TareData>)))
  "Returns full string definition for message of type '<TareData>"
  (cl:format cl:nil "bool tuneGravitySpring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TareData)))
  "Returns full string definition for message of type 'TareData"
  (cl:format cl:nil "bool tuneGravitySpring~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TareData>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TareData>))
  "Converts a ROS message object to a list"
  (cl:list 'TareData
    (cl:cons ':tuneGravitySpring (tuneGravitySpring msg))
))

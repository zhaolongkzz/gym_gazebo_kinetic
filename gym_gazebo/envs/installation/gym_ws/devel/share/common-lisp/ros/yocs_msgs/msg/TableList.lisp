; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude TableList.msg.html

(cl:defclass <TableList> (roslisp-msg-protocol:ros-message)
  ((tables
    :reader tables
    :initarg :tables
    :type (cl:vector yocs_msgs-msg:Table)
   :initform (cl:make-array 0 :element-type 'yocs_msgs-msg:Table :initial-element (cl:make-instance 'yocs_msgs-msg:Table))))
)

(cl:defclass TableList (<TableList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TableList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TableList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<TableList> is deprecated: use yocs_msgs-msg:TableList instead.")))

(cl:ensure-generic-function 'tables-val :lambda-list '(m))
(cl:defmethod tables-val ((m <TableList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:tables-val is deprecated.  Use yocs_msgs-msg:tables instead.")
  (tables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TableList>) ostream)
  "Serializes a message object of type '<TableList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tables))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TableList>) istream)
  "Deserializes a message object of type '<TableList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yocs_msgs-msg:Table))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TableList>)))
  "Returns string type for a message object of type '<TableList>"
  "yocs_msgs/TableList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableList)))
  "Returns string type for a message object of type 'TableList"
  "yocs_msgs/TableList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TableList>)))
  "Returns md5sum for a message object of type '<TableList>"
  "88fff7e2df98bd37f03f85cffc55624b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TableList)))
  "Returns md5sum for a message object of type 'TableList"
  "88fff7e2df98bd37f03f85cffc55624b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TableList>)))
  "Returns full string definition for message of type '<TableList>"
  (cl:format cl:nil "# A list of tables~%~%Table[] tables~%~%================================================================================~%MSG: yocs_msgs/Table~%# Semantic annotation for a table; by now a clone of column but with different semantics~%# In the future we must support also rectangular tables~%#  - Orientation is ignored~%#  - Z provides the lower border of the column (normally 0)~%~%string  name~%float32 radius~%float32 height~%geometry_msgs/PoseWithCovarianceStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TableList)))
  "Returns full string definition for message of type 'TableList"
  (cl:format cl:nil "# A list of tables~%~%Table[] tables~%~%================================================================================~%MSG: yocs_msgs/Table~%# Semantic annotation for a table; by now a clone of column but with different semantics~%# In the future we must support also rectangular tables~%#  - Orientation is ignored~%#  - Z provides the lower border of the column (normally 0)~%~%string  name~%float32 radius~%float32 height~%geometry_msgs/PoseWithCovarianceStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TableList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TableList>))
  "Converts a ROS message object to a list"
  (cl:list 'TableList
    (cl:cons ':tables (tables msg))
))

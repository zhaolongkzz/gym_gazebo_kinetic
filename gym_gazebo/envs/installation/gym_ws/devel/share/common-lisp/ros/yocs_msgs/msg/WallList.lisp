; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude WallList.msg.html

(cl:defclass <WallList> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector yocs_msgs-msg:Wall)
   :initform (cl:make-array 0 :element-type 'yocs_msgs-msg:Wall :initial-element (cl:make-instance 'yocs_msgs-msg:Wall))))
)

(cl:defclass WallList (<WallList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WallList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WallList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<WallList> is deprecated: use yocs_msgs-msg:WallList instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <WallList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:obstacles-val is deprecated.  Use yocs_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WallList>) ostream)
  "Serializes a message object of type '<WallList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WallList>) istream)
  "Deserializes a message object of type '<WallList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yocs_msgs-msg:Wall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WallList>)))
  "Returns string type for a message object of type '<WallList>"
  "yocs_msgs/WallList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WallList)))
  "Returns string type for a message object of type 'WallList"
  "yocs_msgs/WallList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WallList>)))
  "Returns md5sum for a message object of type '<WallList>"
  "2879979aabb372fc7f6d782228e53412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WallList)))
  "Returns md5sum for a message object of type 'WallList"
  "2879979aabb372fc7f6d782228e53412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WallList>)))
  "Returns full string definition for message of type '<WallList>"
  (cl:format cl:nil "# Virtual wall obstacles~%~%Wall[] obstacles~%================================================================================~%MSG: yocs_msgs/Wall~%# Virtual wall obstacle;~%#  - Assumed to be a plan, so width is ignored by now~%#  - The yaw provides the orientation of x-axis~%#  - Assumed vertically aligned (roll and pitch must be 0)~%#  - Z provides the lower border of the wall (normally 0)~%~%string  name~%float32 length~%float32 width~%float32 height~%geometry_msgs/PoseWithCovarianceStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WallList)))
  "Returns full string definition for message of type 'WallList"
  (cl:format cl:nil "# Virtual wall obstacles~%~%Wall[] obstacles~%================================================================================~%MSG: yocs_msgs/Wall~%# Virtual wall obstacle;~%#  - Assumed to be a plan, so width is ignored by now~%#  - The yaw provides the orientation of x-axis~%#  - Assumed vertically aligned (roll and pitch must be 0)~%#  - Z provides the lower border of the wall (normally 0)~%~%string  name~%float32 length~%float32 width~%float32 height~%geometry_msgs/PoseWithCovarianceStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WallList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WallList>))
  "Converts a ROS message object to a list"
  (cl:list 'WallList
    (cl:cons ':obstacles (obstacles msg))
))

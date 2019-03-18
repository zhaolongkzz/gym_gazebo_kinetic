; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-msg)


;//! \htmlinclude TrajectoryList.msg.html

(cl:defclass <TrajectoryList> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector yocs_msgs-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'yocs_msgs-msg:Trajectory :initial-element (cl:make-instance 'yocs_msgs-msg:Trajectory))))
)

(cl:defclass TrajectoryList (<TrajectoryList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-msg:<TrajectoryList> is deprecated: use yocs_msgs-msg:TrajectoryList instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <TrajectoryList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-msg:trajectories-val is deprecated.  Use yocs_msgs-msg:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryList>) ostream)
  "Serializes a message object of type '<TrajectoryList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryList>) istream)
  "Deserializes a message object of type '<TrajectoryList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yocs_msgs-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryList>)))
  "Returns string type for a message object of type '<TrajectoryList>"
  "yocs_msgs/TrajectoryList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryList)))
  "Returns string type for a message object of type 'TrajectoryList"
  "yocs_msgs/TrajectoryList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryList>)))
  "Returns md5sum for a message object of type '<TrajectoryList>"
  "f0901d378c8ac2d2d3d8feafaa343a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryList)))
  "Returns md5sum for a message object of type 'TrajectoryList"
  "f0901d378c8ac2d2d3d8feafaa343a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryList>)))
  "Returns full string definition for message of type '<TrajectoryList>"
  (cl:format cl:nil "# A list of trajectories~%Trajectory[] trajectories~%~%================================================================================~%MSG: yocs_msgs/Trajectory~%# A named list of way points~%Header header~%string name~%Waypoint[] waypoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: yocs_msgs/Waypoint~%Header header~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryList)))
  "Returns full string definition for message of type 'TrajectoryList"
  (cl:format cl:nil "# A list of trajectories~%Trajectory[] trajectories~%~%================================================================================~%MSG: yocs_msgs/Trajectory~%# A named list of way points~%Header header~%string name~%Waypoint[] waypoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: yocs_msgs/Waypoint~%Header header~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryList>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryList
    (cl:cons ':trajectories (trajectories msg))
))

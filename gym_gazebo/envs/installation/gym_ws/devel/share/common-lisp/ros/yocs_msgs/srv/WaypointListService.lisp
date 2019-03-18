; Auto-generated. Do not edit!


(cl:in-package yocs_msgs-srv)


;//! \htmlinclude WaypointListService-request.msg.html

(cl:defclass <WaypointListService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WaypointListService-request (<WaypointListService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointListService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointListService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-srv:<WaypointListService-request> is deprecated: use yocs_msgs-srv:WaypointListService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointListService-request>) ostream)
  "Serializes a message object of type '<WaypointListService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointListService-request>) istream)
  "Deserializes a message object of type '<WaypointListService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointListService-request>)))
  "Returns string type for a service object of type '<WaypointListService-request>"
  "yocs_msgs/WaypointListServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointListService-request)))
  "Returns string type for a service object of type 'WaypointListService-request"
  "yocs_msgs/WaypointListServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointListService-request>)))
  "Returns md5sum for a message object of type '<WaypointListService-request>"
  "3b776b847c407c971555820af7e3f3b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointListService-request)))
  "Returns md5sum for a message object of type 'WaypointListService-request"
  "3b776b847c407c971555820af7e3f3b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointListService-request>)))
  "Returns full string definition for message of type '<WaypointListService-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointListService-request)))
  "Returns full string definition for message of type 'WaypointListService-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointListService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointListService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointListService-request
))
;//! \htmlinclude WaypointListService-response.msg.html

(cl:defclass <WaypointListService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type yocs_msgs-msg:WaypointList
    :initform (cl:make-instance 'yocs_msgs-msg:WaypointList)))
)

(cl:defclass WaypointListService-response (<WaypointListService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointListService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointListService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yocs_msgs-srv:<WaypointListService-response> is deprecated: use yocs_msgs-srv:WaypointListService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointListService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-srv:success-val is deprecated.  Use yocs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WaypointListService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yocs_msgs-srv:waypoints-val is deprecated.  Use yocs_msgs-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointListService-response>) ostream)
  "Serializes a message object of type '<WaypointListService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointListService-response>) istream)
  "Deserializes a message object of type '<WaypointListService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointListService-response>)))
  "Returns string type for a service object of type '<WaypointListService-response>"
  "yocs_msgs/WaypointListServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointListService-response)))
  "Returns string type for a service object of type 'WaypointListService-response"
  "yocs_msgs/WaypointListServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointListService-response>)))
  "Returns md5sum for a message object of type '<WaypointListService-response>"
  "3b776b847c407c971555820af7e3f3b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointListService-response)))
  "Returns md5sum for a message object of type 'WaypointListService-response"
  "3b776b847c407c971555820af7e3f3b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointListService-response>)))
  "Returns full string definition for message of type '<WaypointListService-response>"
  (cl:format cl:nil "bool success~%WaypointList waypoints~%~%~%================================================================================~%MSG: yocs_msgs/WaypointList~%# Way points~%~%Waypoint[] waypoints~%~%================================================================================~%MSG: yocs_msgs/Waypoint~%Header header~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointListService-response)))
  "Returns full string definition for message of type 'WaypointListService-response"
  (cl:format cl:nil "bool success~%WaypointList waypoints~%~%~%================================================================================~%MSG: yocs_msgs/WaypointList~%# Way points~%~%Waypoint[] waypoints~%~%================================================================================~%MSG: yocs_msgs/Waypoint~%Header header~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointListService-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointListService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointListService-response
    (cl:cons ':success (success msg))
    (cl:cons ':waypoints (waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointListService)))
  'WaypointListService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointListService)))
  'WaypointListService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointListService)))
  "Returns string type for a service object of type '<WaypointListService>"
  "yocs_msgs/WaypointListService")
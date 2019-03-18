; Auto-generated. Do not edit!


(cl:in-package polled_camera-srv)


;//! \htmlinclude GetPolledImage-request.msg.html

(cl:defclass <GetPolledImage-request> (roslisp-msg-protocol:ros-message)
  ((response_namespace
    :reader response_namespace
    :initarg :response_namespace
    :type cl:string
    :initform "")
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:real
    :initform 0)
   (binning_x
    :reader binning_x
    :initarg :binning_x
    :type cl:integer
    :initform 0)
   (binning_y
    :reader binning_y
    :initarg :binning_y
    :type cl:integer
    :initform 0)
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest)))
)

(cl:defclass GetPolledImage-request (<GetPolledImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPolledImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPolledImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polled_camera-srv:<GetPolledImage-request> is deprecated: use polled_camera-srv:GetPolledImage-request instead.")))

(cl:ensure-generic-function 'response_namespace-val :lambda-list '(m))
(cl:defmethod response_namespace-val ((m <GetPolledImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:response_namespace-val is deprecated.  Use polled_camera-srv:response_namespace instead.")
  (response_namespace m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <GetPolledImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:timeout-val is deprecated.  Use polled_camera-srv:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'binning_x-val :lambda-list '(m))
(cl:defmethod binning_x-val ((m <GetPolledImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:binning_x-val is deprecated.  Use polled_camera-srv:binning_x instead.")
  (binning_x m))

(cl:ensure-generic-function 'binning_y-val :lambda-list '(m))
(cl:defmethod binning_y-val ((m <GetPolledImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:binning_y-val is deprecated.  Use polled_camera-srv:binning_y instead.")
  (binning_y m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <GetPolledImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:roi-val is deprecated.  Use polled_camera-srv:roi instead.")
  (roi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPolledImage-request>) ostream)
  "Serializes a message object of type '<GetPolledImage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_namespace))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timeout)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timeout) (cl:floor (cl:slot-value msg 'timeout)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'binning_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'binning_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'binning_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'binning_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'binning_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'binning_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'binning_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'binning_y)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPolledImage-request>) istream)
  "Deserializes a message object of type '<GetPolledImage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'binning_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'binning_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'binning_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'binning_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'binning_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'binning_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'binning_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'binning_y)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPolledImage-request>)))
  "Returns string type for a service object of type '<GetPolledImage-request>"
  "polled_camera/GetPolledImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPolledImage-request)))
  "Returns string type for a service object of type 'GetPolledImage-request"
  "polled_camera/GetPolledImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPolledImage-request>)))
  "Returns md5sum for a message object of type '<GetPolledImage-request>"
  "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPolledImage-request)))
  "Returns md5sum for a message object of type 'GetPolledImage-request"
  "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPolledImage-request>)))
  "Returns full string definition for message of type '<GetPolledImage-request>"
  (cl:format cl:nil "~%~%~%~%string response_namespace~%~%~%~%~%duration timeout~%~%~%uint32 binning_x~%uint32 binning_y~%~%~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPolledImage-request)))
  "Returns full string definition for message of type 'GetPolledImage-request"
  (cl:format cl:nil "~%~%~%~%string response_namespace~%~%~%~%~%duration timeout~%~%~%uint32 binning_x~%uint32 binning_y~%~%~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPolledImage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_namespace))
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPolledImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPolledImage-request
    (cl:cons ':response_namespace (response_namespace msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':binning_x (binning_x msg))
    (cl:cons ':binning_y (binning_y msg))
    (cl:cons ':roi (roi msg))
))
;//! \htmlinclude GetPolledImage-response.msg.html

(cl:defclass <GetPolledImage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GetPolledImage-response (<GetPolledImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPolledImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPolledImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polled_camera-srv:<GetPolledImage-response> is deprecated: use polled_camera-srv:GetPolledImage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPolledImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:success-val is deprecated.  Use polled_camera-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetPolledImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:status_message-val is deprecated.  Use polled_camera-srv:status_message instead.")
  (status_message m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GetPolledImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polled_camera-srv:stamp-val is deprecated.  Use polled_camera-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPolledImage-response>) ostream)
  "Serializes a message object of type '<GetPolledImage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPolledImage-response>) istream)
  "Deserializes a message object of type '<GetPolledImage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPolledImage-response>)))
  "Returns string type for a service object of type '<GetPolledImage-response>"
  "polled_camera/GetPolledImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPolledImage-response)))
  "Returns string type for a service object of type 'GetPolledImage-response"
  "polled_camera/GetPolledImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPolledImage-response>)))
  "Returns md5sum for a message object of type '<GetPolledImage-response>"
  "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPolledImage-response)))
  "Returns md5sum for a message object of type 'GetPolledImage-response"
  "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPolledImage-response>)))
  "Returns full string definition for message of type '<GetPolledImage-response>"
  (cl:format cl:nil "bool success~%string status_message~%time stamp~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPolledImage-response)))
  "Returns full string definition for message of type 'GetPolledImage-response"
  (cl:format cl:nil "bool success~%string status_message~%time stamp~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPolledImage-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPolledImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPolledImage-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
    (cl:cons ':stamp (stamp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPolledImage)))
  'GetPolledImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPolledImage)))
  'GetPolledImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPolledImage)))
  "Returns string type for a service object of type '<GetPolledImage>"
  "polled_camera/GetPolledImage")
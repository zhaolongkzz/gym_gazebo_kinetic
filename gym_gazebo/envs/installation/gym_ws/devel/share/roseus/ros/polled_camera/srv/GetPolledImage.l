;; Auto-generated. Do not edit!


(when (boundp 'polled_camera::GetPolledImage)
  (if (not (find-package "POLLED_CAMERA"))
    (make-package "POLLED_CAMERA"))
  (shadow 'GetPolledImage (find-package "POLLED_CAMERA")))
(unless (find-package "POLLED_CAMERA::GETPOLLEDIMAGE")
  (make-package "POLLED_CAMERA::GETPOLLEDIMAGE"))
(unless (find-package "POLLED_CAMERA::GETPOLLEDIMAGEREQUEST")
  (make-package "POLLED_CAMERA::GETPOLLEDIMAGEREQUEST"))
(unless (find-package "POLLED_CAMERA::GETPOLLEDIMAGERESPONSE")
  (make-package "POLLED_CAMERA::GETPOLLEDIMAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass polled_camera::GetPolledImageRequest
  :super ros::object
  :slots (_response_namespace _timeout _binning_x _binning_y _roi ))

(defmethod polled_camera::GetPolledImageRequest
  (:init
   (&key
    ((:response_namespace __response_namespace) "")
    ((:timeout __timeout) (instance ros::time :init))
    ((:binning_x __binning_x) 0)
    ((:binning_y __binning_y) 0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _response_namespace (string __response_namespace))
   (setq _timeout __timeout)
   (setq _binning_x (round __binning_x))
   (setq _binning_y (round __binning_y))
   (setq _roi __roi)
   self)
  (:response_namespace
   (&optional __response_namespace)
   (if __response_namespace (setq _response_namespace __response_namespace)) _response_namespace)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:binning_x
   (&optional __binning_x)
   (if __binning_x (setq _binning_x __binning_x)) _binning_x)
  (:binning_y
   (&optional __binning_y)
   (if __binning_y (setq _binning_y __binning_y)) _binning_y)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; string _response_namespace
    4 (length _response_namespace)
    ;; duration _timeout
    8
    ;; uint32 _binning_x
    4
    ;; uint32 _binning_y
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response_namespace
       (write-long (length _response_namespace) s) (princ _response_namespace s)
     ;; duration _timeout
       (write-long (send _timeout :sec) s) (write-long (send _timeout :nsec) s)
     ;; uint32 _binning_x
       (write-long _binning_x s)
     ;; uint32 _binning_y
       (write-long _binning_y s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _timeout
     (send _timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _binning_x
     (setq _binning_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _binning_y
     (setq _binning_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(defclass polled_camera::GetPolledImageResponse
  :super ros::object
  :slots (_success _status_message _stamp ))

(defmethod polled_camera::GetPolledImageResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   (setq _stamp __stamp)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass polled_camera::GetPolledImage
  :super ros::object
  :slots ())

(setf (get polled_camera::GetPolledImage :md5sum-) "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(setf (get polled_camera::GetPolledImage :datatype-) "polled_camera/GetPolledImage")
(setf (get polled_camera::GetPolledImage :request) polled_camera::GetPolledImageRequest)
(setf (get polled_camera::GetPolledImage :response) polled_camera::GetPolledImageResponse)

(defmethod polled_camera::GetPolledImageRequest
  (:response () (instance polled_camera::GetPolledImageResponse :init)))

(setf (get polled_camera::GetPolledImageRequest :md5sum-) "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(setf (get polled_camera::GetPolledImageRequest :datatype-) "polled_camera/GetPolledImageRequest")
(setf (get polled_camera::GetPolledImageRequest :definition-)
      "



string response_namespace




duration timeout


uint32 binning_x
uint32 binning_y


sensor_msgs/RegionOfInterest roi

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
---
bool success
string status_message
time stamp


")

(setf (get polled_camera::GetPolledImageResponse :md5sum-) "1f3fb0d09d6e1c72d4a7eeb9822d9030")
(setf (get polled_camera::GetPolledImageResponse :datatype-) "polled_camera/GetPolledImageResponse")
(setf (get polled_camera::GetPolledImageResponse :definition-)
      "



string response_namespace




duration timeout


uint32 binning_x
uint32 binning_y


sensor_msgs/RegionOfInterest roi

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
---
bool success
string status_message
time stamp


")



(provide :polled_camera/GetPolledImage "1f3fb0d09d6e1c72d4a7eeb9822d9030")



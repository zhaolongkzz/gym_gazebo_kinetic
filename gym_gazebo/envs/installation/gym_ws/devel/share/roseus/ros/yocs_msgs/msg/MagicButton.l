;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::MagicButton)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'MagicButton (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::MAGICBUTTON")
  (make-package "YOCS_MSGS::MAGICBUTTON"))

(in-package "ROS")
;;//! \htmlinclude MagicButton.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass yocs_msgs::MagicButton
  :super ros::object
  :slots (_header _pressed ))

(defmethod yocs_msgs::MagicButton
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pressed __pressed) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pressed __pressed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pressed
   (&optional __pressed)
   (if __pressed (setq _pressed __pressed)) _pressed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _pressed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _pressed
       (if _pressed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _pressed
     (setq _pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yocs_msgs::MagicButton :md5sum-) "bfc1e2424321b1d3dcc226b473f78588")
(setf (get yocs_msgs::MagicButton :datatype-) "yocs_msgs/MagicButton")
(setf (get yocs_msgs::MagicButton :definition-)
      "# Used to send status and timestamp of a magic button press (typically
# from a joystick). Used in yocs_joyop.

std_msgs/Header header
bool pressed
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :yocs_msgs/MagicButton "bfc1e2424321b1d3dcc226b473f78588")



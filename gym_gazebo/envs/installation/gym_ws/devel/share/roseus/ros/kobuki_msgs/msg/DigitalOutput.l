;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::DigitalOutput)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'DigitalOutput (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::DIGITALOUTPUT")
  (make-package "KOBUKI_MSGS::DIGITALOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude DigitalOutput.msg.html


(defclass kobuki_msgs::DigitalOutput
  :super ros::object
  :slots (_values _mask ))

(defmethod kobuki_msgs::DigitalOutput
  (:init
   (&key
    ((:values __values) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:mask __mask) (let (r) (dotimes (i 4) (push nil r)) r))
    )
   (send-super :init)
   (setq _values __values)
   (setq _mask __mask)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:serialization-length
   ()
   (+
    ;; bool[4] _values
    (* 1    4)
    ;; bool[4] _mask
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[4] _values
     (dotimes (i 4)
       (if (elt _values i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[4] _mask
     (dotimes (i 4)
       (if (elt _mask i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[4] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[4] _mask
   (dotimes (i (length _mask))
     (setf (elt _mask i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get kobuki_msgs::DigitalOutput :md5sum-) "1e97cd7f196a0270516b506e8bf29ca2")
(setf (get kobuki_msgs::DigitalOutput :datatype-) "kobuki_msgs/DigitalOutput")
(setf (get kobuki_msgs::DigitalOutput :definition-)
      "# Digital output - only four pins. 

# Array of values indices represent pins 0-3 respectively.
bool[4] values

# Set indices to true to set a pin, false to ignore.
bool[4] mask

")



(provide :kobuki_msgs/DigitalOutput "1e97cd7f196a0270516b506e8bf29ca2")



;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::DigitalInputEvent)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'DigitalInputEvent (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::DIGITALINPUTEVENT")
  (make-package "KOBUKI_MSGS::DIGITALINPUTEVENT"))

(in-package "ROS")
;;//! \htmlinclude DigitalInputEvent.msg.html


(defclass kobuki_msgs::DigitalInputEvent
  :super ros::object
  :slots (_values ))

(defmethod kobuki_msgs::DigitalInputEvent
  (:init
   (&key
    ((:values __values) (let (r) (dotimes (i 4) (push nil r)) r))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; bool[4] _values
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[4] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get kobuki_msgs::DigitalInputEvent :md5sum-) "93da823c8b121f8a3940ef3830c58e44")
(setf (get kobuki_msgs::DigitalInputEvent :datatype-) "kobuki_msgs/DigitalInputEvent")
(setf (get kobuki_msgs::DigitalInputEvent :definition-)
      "# This message is generated whenever the value of one or more digital input pins changes.

# Array of values; indices represent pins 0-3 respectively.
bool[4] values

")



(provide :kobuki_msgs/DigitalInputEvent "93da823c8b121f8a3940ef3830c58e44")



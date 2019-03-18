;; Auto-generated. Do not edit!


(when (boundp 'driver_base::ConfigString)
  (if (not (find-package "DRIVER_BASE"))
    (make-package "DRIVER_BASE"))
  (shadow 'ConfigString (find-package "DRIVER_BASE")))
(unless (find-package "DRIVER_BASE::CONFIGSTRING")
  (make-package "DRIVER_BASE::CONFIGSTRING"))

(in-package "ROS")
;;//! \htmlinclude ConfigString.msg.html


(defclass driver_base::ConfigString
  :super ros::object
  :slots (_name _value ))

(defmethod driver_base::ConfigString
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (string __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get driver_base::ConfigString :md5sum-) "bc6ccc4a57f61779c8eaae61e9f422e0")
(setf (get driver_base::ConfigString :datatype-) "driver_base/ConfigString")
(setf (get driver_base::ConfigString :definition-)
      "string name
string value

")



(provide :driver_base/ConfigString "bc6ccc4a57f61779c8eaae61e9f422e0")



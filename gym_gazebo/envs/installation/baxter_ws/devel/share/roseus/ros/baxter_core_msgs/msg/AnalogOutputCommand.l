;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::AnalogOutputCommand)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'AnalogOutputCommand (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ANALOGOUTPUTCOMMAND")
  (make-package "BAXTER_CORE_MSGS::ANALOGOUTPUTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AnalogOutputCommand.msg.html


(defclass baxter_core_msgs::AnalogOutputCommand
  :super ros::object
  :slots (_name _value ))

(defmethod baxter_core_msgs::AnalogOutputCommand
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (round __value))
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get baxter_core_msgs::AnalogOutputCommand :md5sum-) "a7b945129a083ca4095d48aa94841d85")
(setf (get baxter_core_msgs::AnalogOutputCommand :datatype-) "baxter_core_msgs/AnalogOutputCommand")
(setf (get baxter_core_msgs::AnalogOutputCommand :definition-)
      "##the name of the output
string name  
##the value to set output 
uint16 value   

")



(provide :baxter_core_msgs/AnalogOutputCommand "a7b945129a083ca4095d48aa94841d85")



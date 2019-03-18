;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::DigitalOutputCommand)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'DigitalOutputCommand (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::DIGITALOUTPUTCOMMAND")
  (make-package "BAXTER_CORE_MSGS::DIGITALOUTPUTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DigitalOutputCommand.msg.html


(defclass baxter_core_msgs::DigitalOutputCommand
  :super ros::object
  :slots (_name _value ))

(defmethod baxter_core_msgs::DigitalOutputCommand
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value __value)
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
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::DigitalOutputCommand :md5sum-) "23f05028c1a699fb83e22401228c3a9e")
(setf (get baxter_core_msgs::DigitalOutputCommand :datatype-) "baxter_core_msgs/DigitalOutputCommand")
(setf (get baxter_core_msgs::DigitalOutputCommand :definition-)
      "##the name of the output
string name  
##the value to set output 
bool value   

")



(provide :baxter_core_msgs/DigitalOutputCommand "23f05028c1a699fb83e22401228c3a9e")



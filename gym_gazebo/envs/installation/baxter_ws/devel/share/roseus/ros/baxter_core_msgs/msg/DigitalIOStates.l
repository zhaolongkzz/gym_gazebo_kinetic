;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::DigitalIOStates)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'DigitalIOStates (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::DIGITALIOSTATES")
  (make-package "BAXTER_CORE_MSGS::DIGITALIOSTATES"))

(in-package "ROS")
;;//! \htmlinclude DigitalIOStates.msg.html


(defclass baxter_core_msgs::DigitalIOStates
  :super ros::object
  :slots (_names _states ))

(defmethod baxter_core_msgs::DigitalIOStates
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:states __states) (let (r) (dotimes (i 0) (push (instance baxter_core_msgs::DigitalIOState :init) r)) r))
    )
   (send-super :init)
   (setq _names __names)
   (setq _states __states)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; baxter_core_msgs/DigitalIOState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; baxter_core_msgs/DigitalIOState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; baxter_core_msgs/DigitalIOState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance baxter_core_msgs::DigitalIOState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::DigitalIOStates :md5sum-) "d434210c6ec20947fec667d6c13d6062")
(setf (get baxter_core_msgs::DigitalIOStates :datatype-) "baxter_core_msgs/DigitalIOStates")
(setf (get baxter_core_msgs::DigitalIOStates :definition-)
      "string[]         names
DigitalIOState[] states
================================================================================
MSG: baxter_core_msgs/DigitalIOState
int8 state
bool isInputOnly

int8 OFF = 0
int8 ON  = 1
int8 PRESSED = 1
int8 UNPRESSED = 0
")



(provide :baxter_core_msgs/DigitalIOStates "d434210c6ec20947fec667d6c13d6062")



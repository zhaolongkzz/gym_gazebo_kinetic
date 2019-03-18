;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::AnalogIOState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'AnalogIOState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ANALOGIOSTATE")
  (make-package "BAXTER_CORE_MSGS::ANALOGIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude AnalogIOState.msg.html


(defclass baxter_core_msgs::AnalogIOState
  :super ros::object
  :slots (_timestamp _value _isInputOnly ))

(defmethod baxter_core_msgs::AnalogIOState
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:value __value) 0.0)
    ((:isInputOnly __isInputOnly) nil)
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _value (float __value))
   (setq _isInputOnly __isInputOnly)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:isInputOnly
   (&optional __isInputOnly)
   (if __isInputOnly (setq _isInputOnly __isInputOnly)) _isInputOnly)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; float64 _value
    8
    ;; bool _isInputOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _isInputOnly
       (if _isInputOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _isInputOnly
     (setq _isInputOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::AnalogIOState :md5sum-) "39af371963dc9e4447e91f430c720b33")
(setf (get baxter_core_msgs::AnalogIOState :datatype-) "baxter_core_msgs/AnalogIOState")
(setf (get baxter_core_msgs::AnalogIOState :definition-)
      "time timestamp
float64 value
bool isInputOnly

")



(provide :baxter_core_msgs/AnalogIOState "39af371963dc9e4447e91f430c720b33")



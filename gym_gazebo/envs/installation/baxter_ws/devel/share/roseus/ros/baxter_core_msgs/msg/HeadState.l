;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::HeadState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'HeadState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::HEADSTATE")
  (make-package "BAXTER_CORE_MSGS::HEADSTATE"))

(in-package "ROS")
;;//! \htmlinclude HeadState.msg.html


(defclass baxter_core_msgs::HeadState
  :super ros::object
  :slots (_pan _isTurning _isNodding _isPanEnabled ))

(defmethod baxter_core_msgs::HeadState
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:isTurning __isTurning) nil)
    ((:isNodding __isNodding) nil)
    ((:isPanEnabled __isPanEnabled) nil)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _isTurning __isTurning)
   (setq _isNodding __isNodding)
   (setq _isPanEnabled __isPanEnabled)
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:isTurning
   (&optional __isTurning)
   (if __isTurning (setq _isTurning __isTurning)) _isTurning)
  (:isNodding
   (&optional __isNodding)
   (if __isNodding (setq _isNodding __isNodding)) _isNodding)
  (:isPanEnabled
   (&optional __isPanEnabled)
   (if __isPanEnabled (setq _isPanEnabled __isPanEnabled)) _isPanEnabled)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; bool _isTurning
    1
    ;; bool _isNodding
    1
    ;; bool _isPanEnabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isTurning
       (if _isTurning (write-byte -1 s) (write-byte 0 s))
     ;; bool _isNodding
       (if _isNodding (write-byte -1 s) (write-byte 0 s))
     ;; bool _isPanEnabled
       (if _isPanEnabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isTurning
     (setq _isTurning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isNodding
     (setq _isNodding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isPanEnabled
     (setq _isPanEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_core_msgs::HeadState :md5sum-) "71c43b264307205358e7e49be5601348")
(setf (get baxter_core_msgs::HeadState :datatype-) "baxter_core_msgs/HeadState")
(setf (get baxter_core_msgs::HeadState :definition-)
      "float32 pan
bool isTurning
bool isNodding
bool isPanEnabled

")



(provide :baxter_core_msgs/HeadState "71c43b264307205358e7e49be5601348")



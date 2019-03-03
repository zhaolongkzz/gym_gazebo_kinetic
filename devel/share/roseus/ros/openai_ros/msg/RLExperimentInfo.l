;; Auto-generated. Do not edit!


(when (boundp 'openai_ros::RLExperimentInfo)
  (if (not (find-package "OPENAI_ROS"))
    (make-package "OPENAI_ROS"))
  (shadow 'RLExperimentInfo (find-package "OPENAI_ROS")))
(unless (find-package "OPENAI_ROS::RLEXPERIMENTINFO")
  (make-package "OPENAI_ROS::RLEXPERIMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude RLExperimentInfo.msg.html


(defclass openai_ros::RLExperimentInfo
  :super ros::object
  :slots (_episode_number _episode_reward ))

(defmethod openai_ros::RLExperimentInfo
  (:init
   (&key
    ((:episode_number __episode_number) 0)
    ((:episode_reward __episode_reward) 0.0)
    )
   (send-super :init)
   (setq _episode_number (round __episode_number))
   (setq _episode_reward (float __episode_reward))
   self)
  (:episode_number
   (&optional __episode_number)
   (if __episode_number (setq _episode_number __episode_number)) _episode_number)
  (:episode_reward
   (&optional __episode_reward)
   (if __episode_reward (setq _episode_reward __episode_reward)) _episode_reward)
  (:serialization-length
   ()
   (+
    ;; int32 _episode_number
    4
    ;; float32 _episode_reward
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _episode_number
       (write-long _episode_number s)
     ;; float32 _episode_reward
       (sys::poke _episode_reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _episode_number
     (setq _episode_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _episode_reward
     (setq _episode_reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get openai_ros::RLExperimentInfo :md5sum-) "117729220546455cc216a7df0b6e91d0")
(setf (get openai_ros::RLExperimentInfo :datatype-) "openai_ros/RLExperimentInfo")
(setf (get openai_ros::RLExperimentInfo :definition-)
      "int32 episode_number
float32 episode_reward

")



(provide :openai_ros/RLExperimentInfo "117729220546455cc216a7df0b6e91d0")



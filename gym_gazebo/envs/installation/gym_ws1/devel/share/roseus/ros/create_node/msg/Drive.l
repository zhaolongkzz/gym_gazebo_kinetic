;; Auto-generated. Do not edit!


(when (boundp 'create_node::Drive)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'Drive (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::DRIVE")
  (make-package "CREATE_NODE::DRIVE"))

(in-package "ROS")
;;//! \htmlinclude Drive.msg.html


(defclass create_node::Drive
  :super ros::object
  :slots (_velocity _radius ))

(defmethod create_node::Drive
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _radius (float __radius))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get create_node::Drive :md5sum-) "cbd1637d308acca6b24c12a3db426e5e")
(setf (get create_node::Drive :datatype-) "create_node/Drive")
(setf (get create_node::Drive :definition-)
      "float32 velocity
float32 radius

")



(provide :create_node/Drive "cbd1637d308acca6b24c12a3db426e5e")



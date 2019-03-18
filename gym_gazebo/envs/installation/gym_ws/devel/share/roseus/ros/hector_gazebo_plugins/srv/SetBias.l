;; Auto-generated. Do not edit!


(when (boundp 'hector_gazebo_plugins::SetBias)
  (if (not (find-package "HECTOR_GAZEBO_PLUGINS"))
    (make-package "HECTOR_GAZEBO_PLUGINS"))
  (shadow 'SetBias (find-package "HECTOR_GAZEBO_PLUGINS")))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETBIAS")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETBIAS"))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETBIASREQUEST")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETBIASREQUEST"))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETBIASRESPONSE")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETBIASRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hector_gazebo_plugins::SetBiasRequest
  :super ros::object
  :slots (_bias ))

(defmethod hector_gazebo_plugins::SetBiasRequest
  (:init
   (&key
    ((:bias __bias) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _bias __bias)
   self)
  (:bias
   (&rest __bias)
   (if (keywordp (car __bias))
       (send* _bias __bias)
     (progn
       (if __bias (setq _bias (car __bias)))
       _bias)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _bias
    (send _bias :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _bias
       (send _bias :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _bias
     (send _bias :deserialize buf ptr-) (incf ptr- (send _bias :serialization-length))
   ;;
   self)
  )

(defclass hector_gazebo_plugins::SetBiasResponse
  :super ros::object
  :slots ())

(defmethod hector_gazebo_plugins::SetBiasResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hector_gazebo_plugins::SetBias
  :super ros::object
  :slots ())

(setf (get hector_gazebo_plugins::SetBias :md5sum-) "af1f260075d9ba9bd73ca10c6a45df07")
(setf (get hector_gazebo_plugins::SetBias :datatype-) "hector_gazebo_plugins/SetBias")
(setf (get hector_gazebo_plugins::SetBias :request) hector_gazebo_plugins::SetBiasRequest)
(setf (get hector_gazebo_plugins::SetBias :response) hector_gazebo_plugins::SetBiasResponse)

(defmethod hector_gazebo_plugins::SetBiasRequest
  (:response () (instance hector_gazebo_plugins::SetBiasResponse :init)))

(setf (get hector_gazebo_plugins::SetBiasRequest :md5sum-) "af1f260075d9ba9bd73ca10c6a45df07")
(setf (get hector_gazebo_plugins::SetBiasRequest :datatype-) "hector_gazebo_plugins/SetBiasRequest")
(setf (get hector_gazebo_plugins::SetBiasRequest :definition-)
      "geometry_msgs/Vector3 bias

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")

(setf (get hector_gazebo_plugins::SetBiasResponse :md5sum-) "af1f260075d9ba9bd73ca10c6a45df07")
(setf (get hector_gazebo_plugins::SetBiasResponse :datatype-) "hector_gazebo_plugins/SetBiasResponse")
(setf (get hector_gazebo_plugins::SetBiasResponse :definition-)
      "geometry_msgs/Vector3 bias

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")



(provide :hector_gazebo_plugins/SetBias "af1f260075d9ba9bd73ca10c6a45df07")



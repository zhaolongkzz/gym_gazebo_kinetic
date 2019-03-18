;; Auto-generated. Do not edit!


(when (boundp 'baxter_maintenance_msgs::TareData)
  (if (not (find-package "BAXTER_MAINTENANCE_MSGS"))
    (make-package "BAXTER_MAINTENANCE_MSGS"))
  (shadow 'TareData (find-package "BAXTER_MAINTENANCE_MSGS")))
(unless (find-package "BAXTER_MAINTENANCE_MSGS::TAREDATA")
  (make-package "BAXTER_MAINTENANCE_MSGS::TAREDATA"))

(in-package "ROS")
;;//! \htmlinclude TareData.msg.html


(defclass baxter_maintenance_msgs::TareData
  :super ros::object
  :slots (_tuneGravitySpring ))

(defmethod baxter_maintenance_msgs::TareData
  (:init
   (&key
    ((:tuneGravitySpring __tuneGravitySpring) nil)
    )
   (send-super :init)
   (setq _tuneGravitySpring __tuneGravitySpring)
   self)
  (:tuneGravitySpring
   (&optional __tuneGravitySpring)
   (if __tuneGravitySpring (setq _tuneGravitySpring __tuneGravitySpring)) _tuneGravitySpring)
  (:serialization-length
   ()
   (+
    ;; bool _tuneGravitySpring
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tuneGravitySpring
       (if _tuneGravitySpring (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tuneGravitySpring
     (setq _tuneGravitySpring (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_maintenance_msgs::TareData :md5sum-) "241e9c2ceee7da9db50693da0b3f2741")
(setf (get baxter_maintenance_msgs::TareData :datatype-) "baxter_maintenance_msgs/TareData")
(setf (get baxter_maintenance_msgs::TareData :definition-)
      "bool tuneGravitySpring

")



(provide :baxter_maintenance_msgs/TareData "241e9c2ceee7da9db50693da0b3f2741")



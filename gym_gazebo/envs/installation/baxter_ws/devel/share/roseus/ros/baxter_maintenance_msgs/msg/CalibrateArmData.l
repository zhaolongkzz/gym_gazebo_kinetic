;; Auto-generated. Do not edit!


(when (boundp 'baxter_maintenance_msgs::CalibrateArmData)
  (if (not (find-package "BAXTER_MAINTENANCE_MSGS"))
    (make-package "BAXTER_MAINTENANCE_MSGS"))
  (shadow 'CalibrateArmData (find-package "BAXTER_MAINTENANCE_MSGS")))
(unless (find-package "BAXTER_MAINTENANCE_MSGS::CALIBRATEARMDATA")
  (make-package "BAXTER_MAINTENANCE_MSGS::CALIBRATEARMDATA"))

(in-package "ROS")
;;//! \htmlinclude CalibrateArmData.msg.html


(defclass baxter_maintenance_msgs::CalibrateArmData
  :super ros::object
  :slots (_suppressWriteToFile ))

(defmethod baxter_maintenance_msgs::CalibrateArmData
  (:init
   (&key
    ((:suppressWriteToFile __suppressWriteToFile) nil)
    )
   (send-super :init)
   (setq _suppressWriteToFile __suppressWriteToFile)
   self)
  (:suppressWriteToFile
   (&optional __suppressWriteToFile)
   (if __suppressWriteToFile (setq _suppressWriteToFile __suppressWriteToFile)) _suppressWriteToFile)
  (:serialization-length
   ()
   (+
    ;; bool _suppressWriteToFile
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _suppressWriteToFile
       (if _suppressWriteToFile (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _suppressWriteToFile
     (setq _suppressWriteToFile (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get baxter_maintenance_msgs::CalibrateArmData :md5sum-) "ba9ee949ea363f7bcfc8cc74e0bcb69d")
(setf (get baxter_maintenance_msgs::CalibrateArmData :datatype-) "baxter_maintenance_msgs/CalibrateArmData")
(setf (get baxter_maintenance_msgs::CalibrateArmData :definition-)
      "bool suppressWriteToFile

")



(provide :baxter_maintenance_msgs/CalibrateArmData "ba9ee949ea363f7bcfc8cc74e0bcb69d")



;; Auto-generated. Do not edit!


(when (boundp 'driver_base::SensorLevels)
  (if (not (find-package "DRIVER_BASE"))
    (make-package "DRIVER_BASE"))
  (shadow 'SensorLevels (find-package "DRIVER_BASE")))
(unless (find-package "DRIVER_BASE::SENSORLEVELS")
  (make-package "DRIVER_BASE::SENSORLEVELS"))

(in-package "ROS")
;;//! \htmlinclude SensorLevels.msg.html


(intern "*RECONFIGURE_CLOSE*" (find-package "DRIVER_BASE::SENSORLEVELS"))
(shadow '*RECONFIGURE_CLOSE* (find-package "DRIVER_BASE::SENSORLEVELS"))
(defconstant driver_base::SensorLevels::*RECONFIGURE_CLOSE* 3)
(intern "*RECONFIGURE_STOP*" (find-package "DRIVER_BASE::SENSORLEVELS"))
(shadow '*RECONFIGURE_STOP* (find-package "DRIVER_BASE::SENSORLEVELS"))
(defconstant driver_base::SensorLevels::*RECONFIGURE_STOP* 1)
(intern "*RECONFIGURE_RUNNING*" (find-package "DRIVER_BASE::SENSORLEVELS"))
(shadow '*RECONFIGURE_RUNNING* (find-package "DRIVER_BASE::SENSORLEVELS"))
(defconstant driver_base::SensorLevels::*RECONFIGURE_RUNNING* 0)
(defclass driver_base::SensorLevels
  :super ros::object
  :slots ())

(defmethod driver_base::SensorLevels
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

(setf (get driver_base::SensorLevels :md5sum-) "6322637bee96d5489db6e2127c47602c")
(setf (get driver_base::SensorLevels :datatype-) "driver_base/SensorLevels")
(setf (get driver_base::SensorLevels :definition-)
      "byte RECONFIGURE_CLOSE = 3  # Parameters that need a sensor to be stopped completely when changed
byte RECONFIGURE_STOP = 1  # Parameters that need a sensor to stop streaming when changed
byte RECONFIGURE_RUNNING = 0 # Parameters that can be changed while a sensor is streaming

")



(provide :driver_base/SensorLevels "6322637bee96d5489db6e2127c47602c")



;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::HardwareInterfaceResources)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'HardwareInterfaceResources (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::HARDWAREINTERFACERESOURCES")
  (make-package "CONTROLLER_MANAGER_MSGS::HARDWAREINTERFACERESOURCES"))

(in-package "ROS")
;;//! \htmlinclude HardwareInterfaceResources.msg.html


(defclass controller_manager_msgs::HardwareInterfaceResources
  :super ros::object
  :slots (_hardware_interface _resources ))

(defmethod controller_manager_msgs::HardwareInterfaceResources
  (:init
   (&key
    ((:hardware_interface __hardware_interface) "")
    ((:resources __resources) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _hardware_interface (string __hardware_interface))
   (setq _resources __resources)
   self)
  (:hardware_interface
   (&optional __hardware_interface)
   (if __hardware_interface (setq _hardware_interface __hardware_interface)) _hardware_interface)
  (:resources
   (&optional __resources)
   (if __resources (setq _resources __resources)) _resources)
  (:serialization-length
   ()
   (+
    ;; string _hardware_interface
    4 (length _hardware_interface)
    ;; string[] _resources
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _resources)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _hardware_interface
       (write-long (length _hardware_interface) s) (princ _hardware_interface s)
     ;; string[] _resources
     (write-long (length _resources) s)
     (dolist (elem _resources)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _hardware_interface
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_interface (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resources (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _resources i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get controller_manager_msgs::HardwareInterfaceResources :md5sum-) "f25b55cbf1d1f76e82e5ec9e83f76258")
(setf (get controller_manager_msgs::HardwareInterfaceResources :datatype-) "controller_manager_msgs/HardwareInterfaceResources")
(setf (get controller_manager_msgs::HardwareInterfaceResources :definition-)
      "# Type of hardware interface
string hardware_interface
# List of resources belonging to the hardware interface
string[] resources

")



(provide :controller_manager_msgs/HardwareInterfaceResources "f25b55cbf1d1f76e82e5ec9e83f76258")



;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ReloadControllerLibraries)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ReloadControllerLibraries (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIES")
  (make-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIES"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIESREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIESREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIESRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::RELOADCONTROLLERLIBRARIESRESPONSE"))

(in-package "ROS")





(defclass controller_manager_msgs::ReloadControllerLibrariesRequest
  :super ros::object
  :slots (_force_kill ))

(defmethod controller_manager_msgs::ReloadControllerLibrariesRequest
  (:init
   (&key
    ((:force_kill __force_kill) nil)
    )
   (send-super :init)
   (setq _force_kill __force_kill)
   self)
  (:force_kill
   (&optional __force_kill)
   (if __force_kill (setq _force_kill __force_kill)) _force_kill)
  (:serialization-length
   ()
   (+
    ;; bool _force_kill
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _force_kill
       (if _force_kill (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _force_kill
     (setq _force_kill (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass controller_manager_msgs::ReloadControllerLibrariesResponse
  :super ros::object
  :slots (_ok ))

(defmethod controller_manager_msgs::ReloadControllerLibrariesResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass controller_manager_msgs::ReloadControllerLibraries
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::ReloadControllerLibraries :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get controller_manager_msgs::ReloadControllerLibraries :datatype-) "controller_manager_msgs/ReloadControllerLibraries")
(setf (get controller_manager_msgs::ReloadControllerLibraries :request) controller_manager_msgs::ReloadControllerLibrariesRequest)
(setf (get controller_manager_msgs::ReloadControllerLibraries :response) controller_manager_msgs::ReloadControllerLibrariesResponse)

(defmethod controller_manager_msgs::ReloadControllerLibrariesRequest
  (:response () (instance controller_manager_msgs::ReloadControllerLibrariesResponse :init)))

(setf (get controller_manager_msgs::ReloadControllerLibrariesRequest :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get controller_manager_msgs::ReloadControllerLibrariesRequest :datatype-) "controller_manager_msgs/ReloadControllerLibrariesRequest")
(setf (get controller_manager_msgs::ReloadControllerLibrariesRequest :definition-)
      "







bool force_kill
---
bool ok

")

(setf (get controller_manager_msgs::ReloadControllerLibrariesResponse :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get controller_manager_msgs::ReloadControllerLibrariesResponse :datatype-) "controller_manager_msgs/ReloadControllerLibrariesResponse")
(setf (get controller_manager_msgs::ReloadControllerLibrariesResponse :definition-)
      "







bool force_kill
---
bool ok

")



(provide :controller_manager_msgs/ReloadControllerLibraries "40e8c411fd1797d2e2c486018f846040")



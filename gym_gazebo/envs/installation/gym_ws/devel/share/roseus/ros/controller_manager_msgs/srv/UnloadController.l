;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::UnloadController)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'UnloadController (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLER")
  (make-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLER"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLERREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLERREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLERRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::UNLOADCONTROLLERRESPONSE"))

(in-package "ROS")





(defclass controller_manager_msgs::UnloadControllerRequest
  :super ros::object
  :slots (_name ))

(defmethod controller_manager_msgs::UnloadControllerRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass controller_manager_msgs::UnloadControllerResponse
  :super ros::object
  :slots (_ok ))

(defmethod controller_manager_msgs::UnloadControllerResponse
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

(defclass controller_manager_msgs::UnloadController
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::UnloadController :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::UnloadController :datatype-) "controller_manager_msgs/UnloadController")
(setf (get controller_manager_msgs::UnloadController :request) controller_manager_msgs::UnloadControllerRequest)
(setf (get controller_manager_msgs::UnloadController :response) controller_manager_msgs::UnloadControllerResponse)

(defmethod controller_manager_msgs::UnloadControllerRequest
  (:response () (instance controller_manager_msgs::UnloadControllerResponse :init)))

(setf (get controller_manager_msgs::UnloadControllerRequest :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::UnloadControllerRequest :datatype-) "controller_manager_msgs/UnloadControllerRequest")
(setf (get controller_manager_msgs::UnloadControllerRequest :definition-)
      "






string name
---
bool ok
")

(setf (get controller_manager_msgs::UnloadControllerResponse :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::UnloadControllerResponse :datatype-) "controller_manager_msgs/UnloadControllerResponse")
(setf (get controller_manager_msgs::UnloadControllerResponse :definition-)
      "






string name
---
bool ok
")



(provide :controller_manager_msgs/UnloadController "647e5c54b8d6468952d8d31f1efe96c0")



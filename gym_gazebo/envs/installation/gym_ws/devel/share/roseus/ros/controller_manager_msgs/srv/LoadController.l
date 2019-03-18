;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::LoadController)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'LoadController (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLER")
  (make-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLER"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLERREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLERREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLERRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::LOADCONTROLLERRESPONSE"))

(in-package "ROS")





(defclass controller_manager_msgs::LoadControllerRequest
  :super ros::object
  :slots (_name ))

(defmethod controller_manager_msgs::LoadControllerRequest
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

(defclass controller_manager_msgs::LoadControllerResponse
  :super ros::object
  :slots (_ok ))

(defmethod controller_manager_msgs::LoadControllerResponse
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

(defclass controller_manager_msgs::LoadController
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::LoadController :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::LoadController :datatype-) "controller_manager_msgs/LoadController")
(setf (get controller_manager_msgs::LoadController :request) controller_manager_msgs::LoadControllerRequest)
(setf (get controller_manager_msgs::LoadController :response) controller_manager_msgs::LoadControllerResponse)

(defmethod controller_manager_msgs::LoadControllerRequest
  (:response () (instance controller_manager_msgs::LoadControllerResponse :init)))

(setf (get controller_manager_msgs::LoadControllerRequest :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::LoadControllerRequest :datatype-) "controller_manager_msgs/LoadControllerRequest")
(setf (get controller_manager_msgs::LoadControllerRequest :definition-)
      "






string name
---
bool ok
")

(setf (get controller_manager_msgs::LoadControllerResponse :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get controller_manager_msgs::LoadControllerResponse :datatype-) "controller_manager_msgs/LoadControllerResponse")
(setf (get controller_manager_msgs::LoadControllerResponse :definition-)
      "






string name
---
bool ok
")



(provide :controller_manager_msgs/LoadController "647e5c54b8d6468952d8d31f1efe96c0")



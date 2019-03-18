;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ListControllers)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ListControllers (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERS")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERS"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERSREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERSREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERSRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERSRESPONSE"))

(in-package "ROS")





(defclass controller_manager_msgs::ListControllersRequest
  :super ros::object
  :slots ())

(defmethod controller_manager_msgs::ListControllersRequest
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

(defclass controller_manager_msgs::ListControllersResponse
  :super ros::object
  :slots (_controller ))

(defmethod controller_manager_msgs::ListControllersResponse
  (:init
   (&key
    ((:controller __controller) (let (r) (dotimes (i 0) (push (instance controller_manager_msgs::ControllerState :init) r)) r))
    )
   (send-super :init)
   (setq _controller __controller)
   self)
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:serialization-length
   ()
   (+
    ;; controller_manager_msgs/ControllerState[] _controller
    (apply #'+ (send-all _controller :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; controller_manager_msgs/ControllerState[] _controller
     (write-long (length _controller) s)
     (dolist (elem _controller)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; controller_manager_msgs/ControllerState[] _controller
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controller (let (r) (dotimes (i n) (push (instance controller_manager_msgs::ControllerState :init) r)) r))
     (dolist (elem- _controller)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass controller_manager_msgs::ListControllers
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::ListControllers :md5sum-) "12c85fca1984c8ec86264f3d00b938f2")
(setf (get controller_manager_msgs::ListControllers :datatype-) "controller_manager_msgs/ListControllers")
(setf (get controller_manager_msgs::ListControllers :request) controller_manager_msgs::ListControllersRequest)
(setf (get controller_manager_msgs::ListControllers :response) controller_manager_msgs::ListControllersResponse)

(defmethod controller_manager_msgs::ListControllersRequest
  (:response () (instance controller_manager_msgs::ListControllersResponse :init)))

(setf (get controller_manager_msgs::ListControllersRequest :md5sum-) "12c85fca1984c8ec86264f3d00b938f2")
(setf (get controller_manager_msgs::ListControllersRequest :datatype-) "controller_manager_msgs/ListControllersRequest")
(setf (get controller_manager_msgs::ListControllersRequest :definition-)
      "


---
ControllerState[] controller


================================================================================
MSG: controller_manager_msgs/ControllerState
string name
string state
string type
string hardware_interface
string[] resources
")

(setf (get controller_manager_msgs::ListControllersResponse :md5sum-) "12c85fca1984c8ec86264f3d00b938f2")
(setf (get controller_manager_msgs::ListControllersResponse :datatype-) "controller_manager_msgs/ListControllersResponse")
(setf (get controller_manager_msgs::ListControllersResponse :definition-)
      "


---
ControllerState[] controller


================================================================================
MSG: controller_manager_msgs/ControllerState
string name
string state
string type
string hardware_interface
string[] resources
")



(provide :controller_manager_msgs/ListControllers "12c85fca1984c8ec86264f3d00b938f2")



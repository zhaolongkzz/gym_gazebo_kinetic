;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ListControllerTypes)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ListControllerTypes (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPES")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPES"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPESREQUEST")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPESREQUEST"))
(unless (find-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPESRESPONSE")
  (make-package "CONTROLLER_MANAGER_MSGS::LISTCONTROLLERTYPESRESPONSE"))

(in-package "ROS")





(defclass controller_manager_msgs::ListControllerTypesRequest
  :super ros::object
  :slots ())

(defmethod controller_manager_msgs::ListControllerTypesRequest
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

(defclass controller_manager_msgs::ListControllerTypesResponse
  :super ros::object
  :slots (_types _base_classes ))

(defmethod controller_manager_msgs::ListControllerTypesResponse
  (:init
   (&key
    ((:types __types) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:base_classes __base_classes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _types __types)
   (setq _base_classes __base_classes)
   self)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:base_classes
   (&optional __base_classes)
   (if __base_classes (setq _base_classes __base_classes)) _base_classes)
  (:serialization-length
   ()
   (+
    ;; string[] _types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _types)) 4
    ;; string[] _base_classes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _base_classes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _base_classes
     (write-long (length _base_classes) s)
     (dolist (elem _base_classes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _base_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _base_classes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _base_classes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass controller_manager_msgs::ListControllerTypes
  :super ros::object
  :slots ())

(setf (get controller_manager_msgs::ListControllerTypes :md5sum-) "c1d4cd11aefa9f97ba4aeb5b33987f4e")
(setf (get controller_manager_msgs::ListControllerTypes :datatype-) "controller_manager_msgs/ListControllerTypes")
(setf (get controller_manager_msgs::ListControllerTypes :request) controller_manager_msgs::ListControllerTypesRequest)
(setf (get controller_manager_msgs::ListControllerTypes :response) controller_manager_msgs::ListControllerTypesResponse)

(defmethod controller_manager_msgs::ListControllerTypesRequest
  (:response () (instance controller_manager_msgs::ListControllerTypesResponse :init)))

(setf (get controller_manager_msgs::ListControllerTypesRequest :md5sum-) "c1d4cd11aefa9f97ba4aeb5b33987f4e")
(setf (get controller_manager_msgs::ListControllerTypesRequest :datatype-) "controller_manager_msgs/ListControllerTypesRequest")
(setf (get controller_manager_msgs::ListControllerTypesRequest :definition-)
      "


---
string[] types
string[] base_classes

")

(setf (get controller_manager_msgs::ListControllerTypesResponse :md5sum-) "c1d4cd11aefa9f97ba4aeb5b33987f4e")
(setf (get controller_manager_msgs::ListControllerTypesResponse :datatype-) "controller_manager_msgs/ListControllerTypesResponse")
(setf (get controller_manager_msgs::ListControllerTypesResponse :definition-)
      "


---
string[] types
string[] base_classes

")



(provide :controller_manager_msgs/ListControllerTypes "c1d4cd11aefa9f97ba4aeb5b33987f4e")



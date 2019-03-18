;; Auto-generated. Do not edit!


(when (boundp 'controller_manager_msgs::ControllerState)
  (if (not (find-package "CONTROLLER_MANAGER_MSGS"))
    (make-package "CONTROLLER_MANAGER_MSGS"))
  (shadow 'ControllerState (find-package "CONTROLLER_MANAGER_MSGS")))
(unless (find-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSTATE")
  (make-package "CONTROLLER_MANAGER_MSGS::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html


(defclass controller_manager_msgs::ControllerState
  :super ros::object
  :slots (_name _state _type _hardware_interface _resources ))

(defmethod controller_manager_msgs::ControllerState
  (:init
   (&key
    ((:name __name) "")
    ((:state __state) "")
    ((:type __type) "")
    ((:hardware_interface __hardware_interface) "")
    ((:resources __resources) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state (string __state))
   (setq _type (string __type))
   (setq _hardware_interface (string __hardware_interface))
   (setq _resources __resources)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:hardware_interface
   (&optional __hardware_interface)
   (if __hardware_interface (setq _hardware_interface __hardware_interface)) _hardware_interface)
  (:resources
   (&optional __resources)
   (if __resources (setq _resources __resources)) _resources)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _state
    4 (length _state)
    ;; string _type
    4 (length _type)
    ;; string _hardware_interface
    4 (length _hardware_interface)
    ;; string[] _resources
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _resources)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
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
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get controller_manager_msgs::ControllerState :md5sum-) "cac963cc68f4f5836765c108de0fc446")
(setf (get controller_manager_msgs::ControllerState :datatype-) "controller_manager_msgs/ControllerState")
(setf (get controller_manager_msgs::ControllerState :definition-)
      "string name
string state
string type
string hardware_interface
string[] resources

")



(provide :controller_manager_msgs/ControllerState "cac963cc68f4f5836765c108de0fc446")



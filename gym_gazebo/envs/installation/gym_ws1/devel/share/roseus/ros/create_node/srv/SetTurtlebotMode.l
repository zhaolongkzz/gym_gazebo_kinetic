;; Auto-generated. Do not edit!


(when (boundp 'create_node::SetTurtlebotMode)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'SetTurtlebotMode (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::SETTURTLEBOTMODE")
  (make-package "CREATE_NODE::SETTURTLEBOTMODE"))
(unless (find-package "CREATE_NODE::SETTURTLEBOTMODEREQUEST")
  (make-package "CREATE_NODE::SETTURTLEBOTMODEREQUEST"))
(unless (find-package "CREATE_NODE::SETTURTLEBOTMODERESPONSE")
  (make-package "CREATE_NODE::SETTURTLEBOTMODERESPONSE"))

(in-package "ROS")





(defclass create_node::SetTurtlebotModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod create_node::SetTurtlebotModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass create_node::SetTurtlebotModeResponse
  :super ros::object
  :slots (_valid_mode ))

(defmethod create_node::SetTurtlebotModeResponse
  (:init
   (&key
    ((:valid_mode __valid_mode) nil)
    )
   (send-super :init)
   (setq _valid_mode __valid_mode)
   self)
  (:valid_mode
   (&optional __valid_mode)
   (if __valid_mode (setq _valid_mode __valid_mode)) _valid_mode)
  (:serialization-length
   ()
   (+
    ;; bool _valid_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid_mode
       (if _valid_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid_mode
     (setq _valid_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass create_node::SetTurtlebotMode
  :super ros::object
  :slots ())

(setf (get create_node::SetTurtlebotMode :md5sum-) "652c4fe00e931153f82f8af90f1da441")
(setf (get create_node::SetTurtlebotMode :datatype-) "create_node/SetTurtlebotMode")
(setf (get create_node::SetTurtlebotMode :request) create_node::SetTurtlebotModeRequest)
(setf (get create_node::SetTurtlebotMode :response) create_node::SetTurtlebotModeResponse)

(defmethod create_node::SetTurtlebotModeRequest
  (:response () (instance create_node::SetTurtlebotModeResponse :init)))

(setf (get create_node::SetTurtlebotModeRequest :md5sum-) "652c4fe00e931153f82f8af90f1da441")
(setf (get create_node::SetTurtlebotModeRequest :datatype-) "create_node/SetTurtlebotModeRequest")
(setf (get create_node::SetTurtlebotModeRequest :definition-)
      "uint8 mode
---
bool valid_mode
")

(setf (get create_node::SetTurtlebotModeResponse :md5sum-) "652c4fe00e931153f82f8af90f1da441")
(setf (get create_node::SetTurtlebotModeResponse :datatype-) "create_node/SetTurtlebotModeResponse")
(setf (get create_node::SetTurtlebotModeResponse :definition-)
      "uint8 mode
---
bool valid_mode
")



(provide :create_node/SetTurtlebotMode "652c4fe00e931153f82f8af90f1da441")



;; Auto-generated. Do not edit!


(when (boundp 'create_node::SetDigitalOutputs)
  (if (not (find-package "CREATE_NODE"))
    (make-package "CREATE_NODE"))
  (shadow 'SetDigitalOutputs (find-package "CREATE_NODE")))
(unless (find-package "CREATE_NODE::SETDIGITALOUTPUTS")
  (make-package "CREATE_NODE::SETDIGITALOUTPUTS"))
(unless (find-package "CREATE_NODE::SETDIGITALOUTPUTSREQUEST")
  (make-package "CREATE_NODE::SETDIGITALOUTPUTSREQUEST"))
(unless (find-package "CREATE_NODE::SETDIGITALOUTPUTSRESPONSE")
  (make-package "CREATE_NODE::SETDIGITALOUTPUTSRESPONSE"))

(in-package "ROS")





(defclass create_node::SetDigitalOutputsRequest
  :super ros::object
  :slots (_digital_out_0 _digital_out_1 _digital_out_2 ))

(defmethod create_node::SetDigitalOutputsRequest
  (:init
   (&key
    ((:digital_out_0 __digital_out_0) 0)
    ((:digital_out_1 __digital_out_1) 0)
    ((:digital_out_2 __digital_out_2) 0)
    )
   (send-super :init)
   (setq _digital_out_0 (round __digital_out_0))
   (setq _digital_out_1 (round __digital_out_1))
   (setq _digital_out_2 (round __digital_out_2))
   self)
  (:digital_out_0
   (&optional __digital_out_0)
   (if __digital_out_0 (setq _digital_out_0 __digital_out_0)) _digital_out_0)
  (:digital_out_1
   (&optional __digital_out_1)
   (if __digital_out_1 (setq _digital_out_1 __digital_out_1)) _digital_out_1)
  (:digital_out_2
   (&optional __digital_out_2)
   (if __digital_out_2 (setq _digital_out_2 __digital_out_2)) _digital_out_2)
  (:serialization-length
   ()
   (+
    ;; uint8 _digital_out_0
    1
    ;; uint8 _digital_out_1
    1
    ;; uint8 _digital_out_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _digital_out_0
       (write-byte _digital_out_0 s)
     ;; uint8 _digital_out_1
       (write-byte _digital_out_1 s)
     ;; uint8 _digital_out_2
       (write-byte _digital_out_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _digital_out_0
     (setq _digital_out_0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _digital_out_1
     (setq _digital_out_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _digital_out_2
     (setq _digital_out_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass create_node::SetDigitalOutputsResponse
  :super ros::object
  :slots (_done ))

(defmethod create_node::SetDigitalOutputsResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass create_node::SetDigitalOutputs
  :super ros::object
  :slots ())

(setf (get create_node::SetDigitalOutputs :md5sum-) "3e43640171aa67a865fe4990d6959f42")
(setf (get create_node::SetDigitalOutputs :datatype-) "create_node/SetDigitalOutputs")
(setf (get create_node::SetDigitalOutputs :request) create_node::SetDigitalOutputsRequest)
(setf (get create_node::SetDigitalOutputs :response) create_node::SetDigitalOutputsResponse)

(defmethod create_node::SetDigitalOutputsRequest
  (:response () (instance create_node::SetDigitalOutputsResponse :init)))

(setf (get create_node::SetDigitalOutputsRequest :md5sum-) "3e43640171aa67a865fe4990d6959f42")
(setf (get create_node::SetDigitalOutputsRequest :datatype-) "create_node/SetDigitalOutputsRequest")
(setf (get create_node::SetDigitalOutputsRequest :definition-)
      "uint8 digital_out_0
uint8 digital_out_1
uint8 digital_out_2
---
bool done
")

(setf (get create_node::SetDigitalOutputsResponse :md5sum-) "3e43640171aa67a865fe4990d6959f42")
(setf (get create_node::SetDigitalOutputsResponse :datatype-) "create_node/SetDigitalOutputsResponse")
(setf (get create_node::SetDigitalOutputsResponse :definition-)
      "uint8 digital_out_0
uint8 digital_out_1
uint8 digital_out_2
---
bool done
")



(provide :create_node/SetDigitalOutputs "3e43640171aa67a865fe4990d6959f42")



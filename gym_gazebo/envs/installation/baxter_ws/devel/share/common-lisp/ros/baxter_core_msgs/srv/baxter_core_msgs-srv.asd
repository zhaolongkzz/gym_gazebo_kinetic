
(cl:in-package :asdf)

(defsystem "baxter_core_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :baxter_core_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CloseCamera" :depends-on ("_package_CloseCamera"))
    (:file "_package_CloseCamera" :depends-on ("_package"))
    (:file "ListCameras" :depends-on ("_package_ListCameras"))
    (:file "_package_ListCameras" :depends-on ("_package"))
    (:file "OpenCamera" :depends-on ("_package_OpenCamera"))
    (:file "_package_OpenCamera" :depends-on ("_package"))
    (:file "SolvePositionIK" :depends-on ("_package_SolvePositionIK"))
    (:file "_package_SolvePositionIK" :depends-on ("_package"))
  ))
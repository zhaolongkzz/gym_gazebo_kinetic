
(cl:in-package :asdf)

(defsystem "create_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetDigitalOutputs" :depends-on ("_package_SetDigitalOutputs"))
    (:file "_package_SetDigitalOutputs" :depends-on ("_package"))
    (:file "SetTurtlebotMode" :depends-on ("_package_SetTurtlebotMode"))
    (:file "_package_SetTurtlebotMode" :depends-on ("_package"))
  ))
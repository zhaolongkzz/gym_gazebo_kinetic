
(cl:in-package :asdf)

(defsystem "control_toolbox-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetPidGains" :depends-on ("_package_SetPidGains"))
    (:file "_package_SetPidGains" :depends-on ("_package"))
  ))
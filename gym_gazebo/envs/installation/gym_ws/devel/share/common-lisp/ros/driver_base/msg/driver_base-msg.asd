
(cl:in-package :asdf)

(defsystem "driver_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConfigString" :depends-on ("_package_ConfigString"))
    (:file "_package_ConfigString" :depends-on ("_package"))
    (:file "ConfigValue" :depends-on ("_package_ConfigValue"))
    (:file "_package_ConfigValue" :depends-on ("_package"))
    (:file "SensorLevels" :depends-on ("_package_SensorLevels"))
    (:file "_package_SensorLevels" :depends-on ("_package"))
  ))
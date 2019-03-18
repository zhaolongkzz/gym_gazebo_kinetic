
(cl:in-package :asdf)

(defsystem "create_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryState" :depends-on ("_package_BatteryState"))
    (:file "_package_BatteryState" :depends-on ("_package"))
    (:file "Drive" :depends-on ("_package_Drive"))
    (:file "_package_Drive" :depends-on ("_package"))
    (:file "RawTurtlebotSensorState" :depends-on ("_package_RawTurtlebotSensorState"))
    (:file "_package_RawTurtlebotSensorState" :depends-on ("_package"))
    (:file "RoombaSensorState" :depends-on ("_package_RoombaSensorState"))
    (:file "_package_RoombaSensorState" :depends-on ("_package"))
    (:file "Turtle" :depends-on ("_package_Turtle"))
    (:file "_package_Turtle" :depends-on ("_package"))
    (:file "TurtlebotSensorState" :depends-on ("_package_TurtlebotSensorState"))
    (:file "_package_TurtlebotSensorState" :depends-on ("_package"))
  ))
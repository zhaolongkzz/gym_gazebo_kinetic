
(cl:in-package :asdf)

(defsystem "yocs_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :yocs_msgs-msg
)
  :components ((:file "_package")
    (:file "WaypointListService" :depends-on ("_package_WaypointListService"))
    (:file "_package_WaypointListService" :depends-on ("_package"))
  ))
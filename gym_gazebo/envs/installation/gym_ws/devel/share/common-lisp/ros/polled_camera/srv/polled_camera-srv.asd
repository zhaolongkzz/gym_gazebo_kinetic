
(cl:in-package :asdf)

(defsystem "polled_camera-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPolledImage" :depends-on ("_package_GetPolledImage"))
    (:file "_package_GetPolledImage" :depends-on ("_package"))
  ))
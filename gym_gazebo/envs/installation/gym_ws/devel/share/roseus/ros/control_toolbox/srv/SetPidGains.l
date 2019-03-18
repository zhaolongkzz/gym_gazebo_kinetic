;; Auto-generated. Do not edit!


(when (boundp 'control_toolbox::SetPidGains)
  (if (not (find-package "CONTROL_TOOLBOX"))
    (make-package "CONTROL_TOOLBOX"))
  (shadow 'SetPidGains (find-package "CONTROL_TOOLBOX")))
(unless (find-package "CONTROL_TOOLBOX::SETPIDGAINS")
  (make-package "CONTROL_TOOLBOX::SETPIDGAINS"))
(unless (find-package "CONTROL_TOOLBOX::SETPIDGAINSREQUEST")
  (make-package "CONTROL_TOOLBOX::SETPIDGAINSREQUEST"))
(unless (find-package "CONTROL_TOOLBOX::SETPIDGAINSRESPONSE")
  (make-package "CONTROL_TOOLBOX::SETPIDGAINSRESPONSE"))

(in-package "ROS")





(defclass control_toolbox::SetPidGainsRequest
  :super ros::object
  :slots (_p _i _d _i_clamp ))

(defmethod control_toolbox::SetPidGainsRequest
  (:init
   (&key
    ((:p __p) 0.0)
    ((:i __i) 0.0)
    ((:d __d) 0.0)
    ((:i_clamp __i_clamp) 0.0)
    )
   (send-super :init)
   (setq _p (float __p))
   (setq _i (float __i))
   (setq _d (float __d))
   (setq _i_clamp (float __i_clamp))
   self)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:i_clamp
   (&optional __i_clamp)
   (if __i_clamp (setq _i_clamp __i_clamp)) _i_clamp)
  (:serialization-length
   ()
   (+
    ;; float64 _p
    8
    ;; float64 _i
    8
    ;; float64 _d
    8
    ;; float64 _i_clamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _p
       (sys::poke _p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i
       (sys::poke _i (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_clamp
       (sys::poke _i_clamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _p
     (setq _p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i
     (setq _i (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_clamp
     (setq _i_clamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass control_toolbox::SetPidGainsResponse
  :super ros::object
  :slots ())

(defmethod control_toolbox::SetPidGainsResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass control_toolbox::SetPidGains
  :super ros::object
  :slots ())

(setf (get control_toolbox::SetPidGains :md5sum-) "b06494a6fc3d5b972ded4e2a9a71535a")
(setf (get control_toolbox::SetPidGains :datatype-) "control_toolbox/SetPidGains")
(setf (get control_toolbox::SetPidGains :request) control_toolbox::SetPidGainsRequest)
(setf (get control_toolbox::SetPidGains :response) control_toolbox::SetPidGainsResponse)

(defmethod control_toolbox::SetPidGainsRequest
  (:response () (instance control_toolbox::SetPidGainsResponse :init)))

(setf (get control_toolbox::SetPidGainsRequest :md5sum-) "b06494a6fc3d5b972ded4e2a9a71535a")
(setf (get control_toolbox::SetPidGainsRequest :datatype-) "control_toolbox/SetPidGainsRequest")
(setf (get control_toolbox::SetPidGainsRequest :definition-)
      "float64 p
float64 i
float64 d
float64 i_clamp
---

")

(setf (get control_toolbox::SetPidGainsResponse :md5sum-) "b06494a6fc3d5b972ded4e2a9a71535a")
(setf (get control_toolbox::SetPidGainsResponse :datatype-) "control_toolbox/SetPidGainsResponse")
(setf (get control_toolbox::SetPidGainsResponse :definition-)
      "float64 p
float64 i
float64 d
float64 i_clamp
---

")



(provide :control_toolbox/SetPidGains "b06494a6fc3d5b972ded4e2a9a71535a")



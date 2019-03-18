;; Auto-generated. Do not edit!


(when (boundp 'baxter_maintenance_msgs::UpdateSources)
  (if (not (find-package "BAXTER_MAINTENANCE_MSGS"))
    (make-package "BAXTER_MAINTENANCE_MSGS"))
  (shadow 'UpdateSources (find-package "BAXTER_MAINTENANCE_MSGS")))
(unless (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESOURCES")
  (make-package "BAXTER_MAINTENANCE_MSGS::UPDATESOURCES"))

(in-package "ROS")
;;//! \htmlinclude UpdateSources.msg.html


(defclass baxter_maintenance_msgs::UpdateSources
  :super ros::object
  :slots (_uuid _sources ))

(defmethod baxter_maintenance_msgs::UpdateSources
  (:init
   (&key
    ((:uuid __uuid) "")
    ((:sources __sources) (let (r) (dotimes (i 0) (push (instance baxter_maintenance_msgs::UpdateSource :init) r)) r))
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   (setq _sources __sources)
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:sources
   (&rest __sources)
   (if (keywordp (car __sources))
       (send* _sources __sources)
     (progn
       (if __sources (setq _sources (car __sources)))
       _sources)))
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ;; baxter_maintenance_msgs/UpdateSource[] _sources
    (apply #'+ (send-all _sources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; baxter_maintenance_msgs/UpdateSource[] _sources
     (write-long (length _sources) s)
     (dolist (elem _sources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; baxter_maintenance_msgs/UpdateSource[] _sources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sources (let (r) (dotimes (i n) (push (instance baxter_maintenance_msgs::UpdateSource :init) r)) r))
     (dolist (elem- _sources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get baxter_maintenance_msgs::UpdateSources :md5sum-) "b3b428bf55e80e83d378830c33b3405b")
(setf (get baxter_maintenance_msgs::UpdateSources :datatype-) "baxter_maintenance_msgs/UpdateSources")
(setf (get baxter_maintenance_msgs::UpdateSources :definition-)
      "string          uuid
UpdateSource[]  sources

================================================================================
MSG: baxter_maintenance_msgs/UpdateSource
string  devname
string  filename
string  version
string  uuid

")



(provide :baxter_maintenance_msgs/UpdateSources "b3b428bf55e80e83d378830c33b3405b")



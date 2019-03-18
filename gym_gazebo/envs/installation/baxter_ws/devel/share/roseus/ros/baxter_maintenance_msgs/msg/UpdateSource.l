;; Auto-generated. Do not edit!


(when (boundp 'baxter_maintenance_msgs::UpdateSource)
  (if (not (find-package "BAXTER_MAINTENANCE_MSGS"))
    (make-package "BAXTER_MAINTENANCE_MSGS"))
  (shadow 'UpdateSource (find-package "BAXTER_MAINTENANCE_MSGS")))
(unless (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESOURCE")
  (make-package "BAXTER_MAINTENANCE_MSGS::UPDATESOURCE"))

(in-package "ROS")
;;//! \htmlinclude UpdateSource.msg.html


(defclass baxter_maintenance_msgs::UpdateSource
  :super ros::object
  :slots (_devname _filename _version _uuid ))

(defmethod baxter_maintenance_msgs::UpdateSource
  (:init
   (&key
    ((:devname __devname) "")
    ((:filename __filename) "")
    ((:version __version) "")
    ((:uuid __uuid) "")
    )
   (send-super :init)
   (setq _devname (string __devname))
   (setq _filename (string __filename))
   (setq _version (string __version))
   (setq _uuid (string __uuid))
   self)
  (:devname
   (&optional __devname)
   (if __devname (setq _devname __devname)) _devname)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:serialization-length
   ()
   (+
    ;; string _devname
    4 (length _devname)
    ;; string _filename
    4 (length _filename)
    ;; string _version
    4 (length _version)
    ;; string _uuid
    4 (length _uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _devname
       (write-long (length _devname) s) (princ _devname s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _devname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _devname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get baxter_maintenance_msgs::UpdateSource :md5sum-) "88ad69e3ed4d619e167c9d83e6d9310f")
(setf (get baxter_maintenance_msgs::UpdateSource :datatype-) "baxter_maintenance_msgs/UpdateSource")
(setf (get baxter_maintenance_msgs::UpdateSource :definition-)
      "string  devname
string  filename
string  version
string  uuid

")



(provide :baxter_maintenance_msgs/UpdateSource "88ad69e3ed4d619e167c9d83e6d9310f")



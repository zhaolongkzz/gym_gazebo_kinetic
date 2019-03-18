;; Auto-generated. Do not edit!


(when (boundp 'baxter_maintenance_msgs::UpdateStatus)
  (if (not (find-package "BAXTER_MAINTENANCE_MSGS"))
    (make-package "BAXTER_MAINTENANCE_MSGS"))
  (shadow 'UpdateStatus (find-package "BAXTER_MAINTENANCE_MSGS")))
(unless (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS")
  (make-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))

(in-package "ROS")
;;//! \htmlinclude UpdateStatus.msg.html


(intern "*STS_IDLE*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_IDLE* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_IDLE* 0)
(intern "*STS_INVALID*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_INVALID* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_INVALID* 1)
(intern "*STS_BUSY*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_BUSY* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_BUSY* 2)
(intern "*STS_CANCELLED*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_CANCELLED* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_CANCELLED* 3)
(intern "*STS_ERR*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_ERR* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_ERR* 4)
(intern "*STS_MOUNT_UPDATE*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_MOUNT_UPDATE* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_MOUNT_UPDATE* 5)
(intern "*STS_VERIFY_UPDATE*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_VERIFY_UPDATE* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_VERIFY_UPDATE* 6)
(intern "*STS_PREP_STAGING*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_PREP_STAGING* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_PREP_STAGING* 7)
(intern "*STS_MOUNT_STAGING*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_MOUNT_STAGING* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_MOUNT_STAGING* 8)
(intern "*STS_EXTRACT_UPDATE*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_EXTRACT_UPDATE* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_EXTRACT_UPDATE* 9)
(intern "*STS_LOAD_KEXEC*" (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(shadow '*STS_LOAD_KEXEC* (find-package "BAXTER_MAINTENANCE_MSGS::UPDATESTATUS"))
(defconstant baxter_maintenance_msgs::UpdateStatus::*STS_LOAD_KEXEC* 10)
(defclass baxter_maintenance_msgs::UpdateStatus
  :super ros::object
  :slots (_status _progress _long_description ))

(defmethod baxter_maintenance_msgs::UpdateStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:progress __progress) 0.0)
    ((:long_description __long_description) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _progress (float __progress))
   (setq _long_description (string __long_description))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:long_description
   (&optional __long_description)
   (if __long_description (setq _long_description __long_description)) _long_description)
  (:serialization-length
   ()
   (+
    ;; uint16 _status
    2
    ;; float32 _progress
    4
    ;; string _long_description
    4 (length _long_description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _status
       (write-word _status s)
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _long_description
       (write-long (length _long_description) s) (princ _long_description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _long_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _long_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get baxter_maintenance_msgs::UpdateStatus :md5sum-) "74e246350421569590252c39e8aa7b85")
(setf (get baxter_maintenance_msgs::UpdateStatus :datatype-) "baxter_maintenance_msgs/UpdateStatus")
(setf (get baxter_maintenance_msgs::UpdateStatus :definition-)
      "# See the class UpdateRunner()
# status:           One-word description of the current action being performed
# long_description: Details pertaining to status if any.  Used for verbose error messages.

uint16  status
float32 progress
string  long_description

uint16 STS_IDLE            = 0
uint16 STS_INVALID         = 1
uint16 STS_BUSY            = 2
uint16 STS_CANCELLED       = 3
uint16 STS_ERR             = 4
uint16 STS_MOUNT_UPDATE    = 5
uint16 STS_VERIFY_UPDATE   = 6
uint16 STS_PREP_STAGING    = 7
uint16 STS_MOUNT_STAGING   = 8
uint16 STS_EXTRACT_UPDATE  = 9
uint16 STS_LOAD_KEXEC      = 10


")



(provide :baxter_maintenance_msgs/UpdateStatus "74e246350421569590252c39e8aa7b85")



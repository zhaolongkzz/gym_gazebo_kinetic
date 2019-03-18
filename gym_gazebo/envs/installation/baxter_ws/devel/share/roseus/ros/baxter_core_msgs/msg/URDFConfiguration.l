;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::URDFConfiguration)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'URDFConfiguration (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::URDFCONFIGURATION")
  (make-package "BAXTER_CORE_MSGS::URDFCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude URDFConfiguration.msg.html


(defclass baxter_core_msgs::URDFConfiguration
  :super ros::object
  :slots (_time _link _joint _urdf ))

(defmethod baxter_core_msgs::URDFConfiguration
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:link __link) "")
    ((:joint __joint) "")
    ((:urdf __urdf) "")
    )
   (send-super :init)
   (setq _time __time)
   (setq _link (string __link))
   (setq _joint (string __joint))
   (setq _urdf (string __urdf))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:link
   (&optional __link)
   (if __link (setq _link __link)) _link)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:urdf
   (&optional __urdf)
   (if __urdf (setq _urdf __urdf)) _urdf)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; string _link
    4 (length _link)
    ;; string _joint
    4 (length _joint)
    ;; string _urdf
    4 (length _urdf)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; string _link
       (write-long (length _link) s) (princ _link s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; string _urdf
       (write-long (length _urdf) s) (princ _urdf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _urdf
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _urdf (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get baxter_core_msgs::URDFConfiguration :md5sum-) "0c7028d878027820eed2aa0cbf1f5e4a")
(setf (get baxter_core_msgs::URDFConfiguration :datatype-) "baxter_core_msgs/URDFConfiguration")
(setf (get baxter_core_msgs::URDFConfiguration :definition-)
      "## URDF Configuration
time time      # time the message was created, serves as a sequence number
               # time should be changed only when the content changes.
string link    # parent link name
string joint   # joint to configure
               # link + joint + time uniquely identifies a configuration.
string urdf    # XML or JSON-encoded URDF data.  This should be a URDF fragment
               # describing the entire subtree for the given joint attached
               # to the given parent link. If this field is empty the joint
               # is removed from the parent link.

")



(provide :baxter_core_msgs/URDFConfiguration "0c7028d878027820eed2aa0cbf1f5e4a")



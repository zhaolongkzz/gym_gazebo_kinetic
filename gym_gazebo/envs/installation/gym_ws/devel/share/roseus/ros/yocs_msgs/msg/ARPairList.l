;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::ARPairList)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'ARPairList (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::ARPAIRLIST")
  (make-package "YOCS_MSGS::ARPAIRLIST"))

(in-package "ROS")
;;//! \htmlinclude ARPairList.msg.html


(defclass yocs_msgs::ARPairList
  :super ros::object
  :slots (_pairs ))

(defmethod yocs_msgs::ARPairList
  (:init
   (&key
    ((:pairs __pairs) (let (r) (dotimes (i 0) (push (instance yocs_msgs::ARPair :init) r)) r))
    )
   (send-super :init)
   (setq _pairs __pairs)
   self)
  (:pairs
   (&rest __pairs)
   (if (keywordp (car __pairs))
       (send* _pairs __pairs)
     (progn
       (if __pairs (setq _pairs (car __pairs)))
       _pairs)))
  (:serialization-length
   ()
   (+
    ;; yocs_msgs/ARPair[] _pairs
    (apply #'+ (send-all _pairs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; yocs_msgs/ARPair[] _pairs
     (write-long (length _pairs) s)
     (dolist (elem _pairs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; yocs_msgs/ARPair[] _pairs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pairs (let (r) (dotimes (i n) (push (instance yocs_msgs::ARPair :init) r)) r))
     (dolist (elem- _pairs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yocs_msgs::ARPairList :md5sum-) "0d0cfdee6418b6b3edd41c0abc93d76f")
(setf (get yocs_msgs::ARPairList :datatype-) "yocs_msgs/ARPairList")
(setf (get yocs_msgs::ARPairList :definition-)
      "ARPair[] pairs

================================================================================
MSG: yocs_msgs/ARPair
int16  left_id
int16  right_id
float32 baseline
float32 target_offset
string  target_frame

")



(provide :yocs_msgs/ARPairList "0d0cfdee6418b6b3edd41c0abc93d76f")



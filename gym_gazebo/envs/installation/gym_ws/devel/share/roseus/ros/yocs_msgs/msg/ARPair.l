;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::ARPair)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'ARPair (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::ARPAIR")
  (make-package "YOCS_MSGS::ARPAIR"))

(in-package "ROS")
;;//! \htmlinclude ARPair.msg.html


(defclass yocs_msgs::ARPair
  :super ros::object
  :slots (_left_id _right_id _baseline _target_offset _target_frame ))

(defmethod yocs_msgs::ARPair
  (:init
   (&key
    ((:left_id __left_id) 0)
    ((:right_id __right_id) 0)
    ((:baseline __baseline) 0.0)
    ((:target_offset __target_offset) 0.0)
    ((:target_frame __target_frame) "")
    )
   (send-super :init)
   (setq _left_id (round __left_id))
   (setq _right_id (round __right_id))
   (setq _baseline (float __baseline))
   (setq _target_offset (float __target_offset))
   (setq _target_frame (string __target_frame))
   self)
  (:left_id
   (&optional __left_id)
   (if __left_id (setq _left_id __left_id)) _left_id)
  (:right_id
   (&optional __right_id)
   (if __right_id (setq _right_id __right_id)) _right_id)
  (:baseline
   (&optional __baseline)
   (if __baseline (setq _baseline __baseline)) _baseline)
  (:target_offset
   (&optional __target_offset)
   (if __target_offset (setq _target_offset __target_offset)) _target_offset)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:serialization-length
   ()
   (+
    ;; int16 _left_id
    2
    ;; int16 _right_id
    2
    ;; float32 _baseline
    4
    ;; float32 _target_offset
    4
    ;; string _target_frame
    4 (length _target_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _left_id
       (write-word _left_id s)
     ;; int16 _right_id
       (write-word _right_id s)
     ;; float32 _baseline
       (sys::poke _baseline (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_offset
       (sys::poke _target_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _left_id
     (setq _left_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_id
     (setq _right_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _baseline
     (setq _baseline (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_offset
     (setq _target_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yocs_msgs::ARPair :md5sum-) "9a0e51fbcb2eab37a945707af8ee9a6b")
(setf (get yocs_msgs::ARPair :datatype-) "yocs_msgs/ARPair")
(setf (get yocs_msgs::ARPair :definition-)
      "int16  left_id
int16  right_id
float32 baseline
float32 target_offset
string  target_frame

")



(provide :yocs_msgs/ARPair "9a0e51fbcb2eab37a945707af8ee9a6b")



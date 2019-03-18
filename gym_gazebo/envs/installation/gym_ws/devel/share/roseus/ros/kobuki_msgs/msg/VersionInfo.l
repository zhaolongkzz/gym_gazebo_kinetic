;; Auto-generated. Do not edit!


(when (boundp 'kobuki_msgs::VersionInfo)
  (if (not (find-package "KOBUKI_MSGS"))
    (make-package "KOBUKI_MSGS"))
  (shadow 'VersionInfo (find-package "KOBUKI_MSGS")))
(unless (find-package "KOBUKI_MSGS::VERSIONINFO")
  (make-package "KOBUKI_MSGS::VERSIONINFO"))

(in-package "ROS")
;;//! \htmlinclude VersionInfo.msg.html


(intern "*SMOOTH_MOVE_START*" (find-package "KOBUKI_MSGS::VERSIONINFO"))
(shadow '*SMOOTH_MOVE_START* (find-package "KOBUKI_MSGS::VERSIONINFO"))
(defconstant kobuki_msgs::VersionInfo::*SMOOTH_MOVE_START* 1)
(intern "*GYROSCOPE_3D_DATA*" (find-package "KOBUKI_MSGS::VERSIONINFO"))
(shadow '*GYROSCOPE_3D_DATA* (find-package "KOBUKI_MSGS::VERSIONINFO"))
(defconstant kobuki_msgs::VersionInfo::*GYROSCOPE_3D_DATA* 2)
(defclass kobuki_msgs::VersionInfo
  :super ros::object
  :slots (_hardware _firmware _software _udid _features ))

(defmethod kobuki_msgs::VersionInfo
  (:init
   (&key
    ((:hardware __hardware) "")
    ((:firmware __firmware) "")
    ((:software __software) "")
    ((:udid __udid) (make-array 0 :initial-element 0 :element-type :integer))
    ((:features __features) 0)
    )
   (send-super :init)
   (setq _hardware (string __hardware))
   (setq _firmware (string __firmware))
   (setq _software (string __software))
   (setq _udid __udid)
   (setq _features (round __features))
   self)
  (:hardware
   (&optional __hardware)
   (if __hardware (setq _hardware __hardware)) _hardware)
  (:firmware
   (&optional __firmware)
   (if __firmware (setq _firmware __firmware)) _firmware)
  (:software
   (&optional __software)
   (if __software (setq _software __software)) _software)
  (:udid
   (&optional __udid)
   (if __udid (setq _udid __udid)) _udid)
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:serialization-length
   ()
   (+
    ;; string _hardware
    4 (length _hardware)
    ;; string _firmware
    4 (length _firmware)
    ;; string _software
    4 (length _software)
    ;; uint32[] _udid
    (* 4    (length _udid)) 4
    ;; uint64 _features
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _hardware
       (write-long (length _hardware) s) (princ _hardware s)
     ;; string _firmware
       (write-long (length _firmware) s) (princ _firmware s)
     ;; string _software
       (write-long (length _software) s) (princ _software s)
     ;; uint32[] _udid
     (write-long (length _udid) s)
     (dotimes (i (length _udid))
       (write-long (elt _udid i) s)
       )
     ;; uint64 _features
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _features (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _features) (= (length (_features . bv)) 2)) ;; bignum
              (write-long (ash (elt (_features . bv) 0) 0) s)
              (write-long (ash (elt (_features . bv) 1) -1) s))
             ((and (class _features) (= (length (_features . bv)) 1)) ;; big1
              (write-long (elt (_features . bv) 0) s)
              (write-long (if (>= _features 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _features s)(write-long (if (>= _features 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _hardware
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _firmware
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _software
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _software (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32[] _udid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _udid (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _udid i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint64 _features
     
#+(or :alpha :irix6 :x86_64)
      (setf _features (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _features (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get kobuki_msgs::VersionInfo :md5sum-) "3dc0ce6edd49be1fc86730f4a4a21861")
(setf (get kobuki_msgs::VersionInfo :datatype-) "kobuki_msgs/VersionInfo")
(setf (get kobuki_msgs::VersionInfo :definition-)
      "# Contains unique device id, version info and available features for the kobuki platform.
# Useful for compatibility checking and introspection

string hardware   # <major>.<minor>.<patch>
string firmware   # <major>.<minor>.<patch>
string software   # Still to decide how it will look
uint32[] udid

# Bitmask that specifies the available features in the firmware and/or driver
uint64 features

# The following represent the bit fields corresponding to bits in the features value

# Provided firmware kobuki_firmware_1.1.1.hex
uint64 SMOOTH_MOVE_START    = 0000000000000001
uint64 GYROSCOPE_3D_DATA    = 0000000000000002

")



(provide :kobuki_msgs/VersionInfo "3dc0ce6edd49be1fc86730f4a4a21861")



;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::RobustControllerStatus)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'RobustControllerStatus (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS")
  (make-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobustControllerStatus.msg.html


(intern "*NOT_COMPLETE*" (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(shadow '*NOT_COMPLETE* (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(defconstant baxter_core_msgs::RobustControllerStatus::*NOT_COMPLETE* 0)
(intern "*COMPLETE_W_FAILURE*" (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(shadow '*COMPLETE_W_FAILURE* (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(defconstant baxter_core_msgs::RobustControllerStatus::*COMPLETE_W_FAILURE* 1)
(intern "*COMPLETE_W_SUCCESS*" (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(shadow '*COMPLETE_W_SUCCESS* (find-package "BAXTER_CORE_MSGS::ROBUSTCONTROLLERSTATUS"))
(defconstant baxter_core_msgs::RobustControllerStatus::*COMPLETE_W_SUCCESS* 2)
(defclass baxter_core_msgs::RobustControllerStatus
  :super ros::object
  :slots (_isEnabled _complete _controlUid _timedOut _errorCodes _labels ))

(defmethod baxter_core_msgs::RobustControllerStatus
  (:init
   (&key
    ((:isEnabled __isEnabled) nil)
    ((:complete __complete) 0)
    ((:controlUid __controlUid) "")
    ((:timedOut __timedOut) nil)
    ((:errorCodes __errorCodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:labels __labels) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _isEnabled __isEnabled)
   (setq _complete (round __complete))
   (setq _controlUid (string __controlUid))
   (setq _timedOut __timedOut)
   (setq _errorCodes __errorCodes)
   (setq _labels __labels)
   self)
  (:isEnabled
   (&optional __isEnabled)
   (if __isEnabled (setq _isEnabled __isEnabled)) _isEnabled)
  (:complete
   (&optional __complete)
   (if __complete (setq _complete __complete)) _complete)
  (:controlUid
   (&optional __controlUid)
   (if __controlUid (setq _controlUid __controlUid)) _controlUid)
  (:timedOut
   (&optional __timedOut)
   (if __timedOut (setq _timedOut __timedOut)) _timedOut)
  (:errorCodes
   (&optional __errorCodes)
   (if __errorCodes (setq _errorCodes __errorCodes)) _errorCodes)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:serialization-length
   ()
   (+
    ;; bool _isEnabled
    1
    ;; int32 _complete
    4
    ;; string _controlUid
    4 (length _controlUid)
    ;; bool _timedOut
    1
    ;; string[] _errorCodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _errorCodes)) 4
    ;; string[] _labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isEnabled
       (if _isEnabled (write-byte -1 s) (write-byte 0 s))
     ;; int32 _complete
       (write-long _complete s)
     ;; string _controlUid
       (write-long (length _controlUid) s) (princ _controlUid s)
     ;; bool _timedOut
       (if _timedOut (write-byte -1 s) (write-byte 0 s))
     ;; string[] _errorCodes
     (write-long (length _errorCodes) s)
     (dolist (elem _errorCodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isEnabled
     (setq _isEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _complete
     (setq _complete (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _controlUid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controlUid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _timedOut
     (setq _timedOut (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _errorCodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errorCodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _errorCodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::RobustControllerStatus :md5sum-) "2f15441b7285d915e7e59d3618e173f2")
(setf (get baxter_core_msgs::RobustControllerStatus :datatype-) "baxter_core_msgs/RobustControllerStatus")
(setf (get baxter_core_msgs::RobustControllerStatus :definition-)
      "# True if the RC is enabled and running, false if not.
bool isEnabled

# The state of the RC with respect to its completion goal.  One of
# NOT_COMPLETE, COMPLETE_W_FAILURE, or COMPLETE_W_SUCCESS
int32 complete
int32 NOT_COMPLETE = 0
int32 COMPLETE_W_FAILURE = 1
int32 COMPLETE_W_SUCCESS = 2

# Identifies the sender of the Enable message that the RC is using for its
# commands.  This should correspond to the \"uid\" field of a recently published
# RC *Enable message.
string controlUid

# Set to true when the RC self-disables as a result of too much time elapsing
# without receiving an Enable message.
bool timedOut

# A list of relevant error codes.  Error codes are defined by the individual
# robust controllers, consult a robust controller's documentation to see what
# error codes it generates.
string[] errorCodes

# A list of current labels for the RC's current state. For example, \"fastapproach\",
# \"slowapproach\", etc. Used primarily for the blended RCs, other RCs can leave this
# blank. This will probably contains just one label, but it could contain multiple labels
# in the future.
string[] labels

")



(provide :baxter_core_msgs/RobustControllerStatus "2f15441b7285d915e7e59d3618e173f2")



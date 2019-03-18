;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::EndEffectorCommand)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'EndEffectorCommand (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND")
  (make-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude EndEffectorCommand.msg.html


(intern "*CMD_NO_OP*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_NO_OP* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_NO_OP* "no_op")
(intern "*CMD_SET*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_SET* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_SET* "set")
(intern "*CMD_CONFIGURE*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_CONFIGURE* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_CONFIGURE* "configure")
(intern "*CMD_REBOOT*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_REBOOT* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_REBOOT* "reboot")
(intern "*CMD_RESET*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_RESET* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_RESET* "reset")
(intern "*CMD_CALIBRATE*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_CALIBRATE* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_CALIBRATE* "calibrate")
(intern "*CMD_CLEAR_CALIBRATION*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_CLEAR_CALIBRATION* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_CLEAR_CALIBRATION* "clear_calibration")
(intern "*CMD_PREPARE_TO_GRIP*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_PREPARE_TO_GRIP* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_PREPARE_TO_GRIP* "prepare_to_grip")
(intern "*CMD_GRIP*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_GRIP* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_GRIP* "grip")
(intern "*CMD_RELEASE*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_RELEASE* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_RELEASE* "release")
(intern "*CMD_GO*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_GO* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_GO* "go")
(intern "*CMD_STOP*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(shadow '*CMD_STOP* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORCOMMAND"))
(defconstant baxter_core_msgs::EndEffectorCommand::*CMD_STOP* "stop")
(defclass baxter_core_msgs::EndEffectorCommand
  :super ros::object
  :slots (_id _command _args _sender _sequence ))

(defmethod baxter_core_msgs::EndEffectorCommand
  (:init
   (&key
    ((:id __id) 0)
    ((:command __command) "")
    ((:args __args) "")
    ((:sender __sender) "")
    ((:sequence __sequence) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _command (string __command))
   (setq _args (string __args))
   (setq _sender (string __sender))
   (setq _sequence (round __sequence))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _command
    4 (length _command)
    ;; string _args
    4 (length _args)
    ;; string _sender
    4 (length _sender)
    ;; uint32 _sequence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _args
       (write-long (length _args) s) (princ _args s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; uint32 _sequence
       (write-long _sequence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _args
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _args (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _sequence
     (setq _sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get baxter_core_msgs::EndEffectorCommand :md5sum-) "c003234e90416f2ca02ac7837c42cbb7")
(setf (get baxter_core_msgs::EndEffectorCommand :datatype-) "baxter_core_msgs/EndEffectorCommand")
(setf (get baxter_core_msgs::EndEffectorCommand :definition-)
      "## Command to be sent to an end effector
uint32 id       # target end effector id
string command  # operation to perform
# Well known commands:
string   CMD_NO_OP           = no_op
string   CMD_SET             = set
string   CMD_CONFIGURE       = configure
string   CMD_REBOOT          = reboot
string   CMD_RESET           = reset
string   CMD_CALIBRATE       = calibrate
string   CMD_CLEAR_CALIBRATION = clear_calibration
string   CMD_PREPARE_TO_GRIP = prepare_to_grip
string   CMD_GRIP            = grip
string   CMD_RELEASE         = release
string   CMD_GO              = go
string   CMD_STOP            = stop
#
string args     # JSON arguments to the command
#
string sender   # optional identifier, returned in state when the command is handled
uint32 sequence # optional sequence number, return in state when the command is handled


")



(provide :baxter_core_msgs/EndEffectorCommand "c003234e90416f2ca02ac7837c42cbb7")



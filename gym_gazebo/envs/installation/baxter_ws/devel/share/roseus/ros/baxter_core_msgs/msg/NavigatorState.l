;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::NavigatorState)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'NavigatorState (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::NAVIGATORSTATE")
  (make-package "BAXTER_CORE_MSGS::NAVIGATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude NavigatorState.msg.html


(defclass baxter_core_msgs::NavigatorState
  :super ros::object
  :slots (_button_names _buttons _wheel _light_names _lights ))

(defmethod baxter_core_msgs::NavigatorState
  (:init
   (&key
    ((:button_names __button_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:buttons __buttons) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:wheel __wheel) 0)
    ((:light_names __light_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:lights __lights) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _button_names __button_names)
   (setq _buttons __buttons)
   (setq _wheel (round __wheel))
   (setq _light_names __light_names)
   (setq _lights __lights)
   self)
  (:button_names
   (&optional __button_names)
   (if __button_names (setq _button_names __button_names)) _button_names)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:light_names
   (&optional __light_names)
   (if __light_names (setq _light_names __light_names)) _light_names)
  (:lights
   (&optional __lights)
   (if __lights (setq _lights __lights)) _lights)
  (:serialization-length
   ()
   (+
    ;; string[] _button_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _button_names)) 4
    ;; bool[] _buttons
    (* 1    (length _buttons)) 4
    ;; uint8 _wheel
    1
    ;; string[] _light_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _light_names)) 4
    ;; bool[] _lights
    (* 1    (length _lights)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _button_names
     (write-long (length _button_names) s)
     (dolist (elem _button_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _buttons
     (write-long (length _buttons) s)
     (dotimes (i (length _buttons))
       (if (elt _buttons i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint8 _wheel
       (write-byte _wheel s)
     ;; string[] _light_names
     (write-long (length _light_names) s)
     (dolist (elem _light_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _lights
     (write-long (length _lights) s)
     (dotimes (i (length _lights))
       (if (elt _lights i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _button_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _button_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _button_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _buttons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _buttons (make-list n))
     (dotimes (i n)
     (setf (elt _buttons i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint8 _wheel
     (setq _wheel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _light_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _light_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _light_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lights (make-list n))
     (dotimes (i n)
     (setf (elt _lights i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get baxter_core_msgs::NavigatorState :md5sum-) "680d121a1f16a32647298b292492fffd")
(setf (get baxter_core_msgs::NavigatorState :datatype-) "baxter_core_msgs/NavigatorState")
(setf (get baxter_core_msgs::NavigatorState :definition-)
      "# buttons
string[] button_names
bool[] buttons

# wheel position
uint8   wheel

# true if the light is on, false if not
# lights map to button names
string[] light_names
bool[] lights

")



(provide :baxter_core_msgs/NavigatorState "680d121a1f16a32647298b292492fffd")



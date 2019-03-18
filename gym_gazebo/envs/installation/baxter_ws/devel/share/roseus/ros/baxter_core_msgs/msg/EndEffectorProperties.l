;; Auto-generated. Do not edit!


(when (boundp 'baxter_core_msgs::EndEffectorProperties)
  (if (not (find-package "BAXTER_CORE_MSGS"))
    (make-package "BAXTER_CORE_MSGS"))
  (shadow 'EndEffectorProperties (find-package "BAXTER_CORE_MSGS")))
(unless (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES")
  (make-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude EndEffectorProperties.msg.html


(intern "*NO_GRIPPER*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(shadow '*NO_GRIPPER* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(defconstant baxter_core_msgs::EndEffectorProperties::*NO_GRIPPER* 0)
(intern "*SUCTION_CUP_GRIPPER*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(shadow '*SUCTION_CUP_GRIPPER* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(defconstant baxter_core_msgs::EndEffectorProperties::*SUCTION_CUP_GRIPPER* 1)
(intern "*ELECTRIC_GRIPPER*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(shadow '*ELECTRIC_GRIPPER* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(defconstant baxter_core_msgs::EndEffectorProperties::*ELECTRIC_GRIPPER* 2)
(intern "*PASSIVE_GRIPPER*" (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(shadow '*PASSIVE_GRIPPER* (find-package "BAXTER_CORE_MSGS::ENDEFFECTORPROPERTIES"))
(defconstant baxter_core_msgs::EndEffectorProperties::*PASSIVE_GRIPPER* 3)
(defclass baxter_core_msgs::EndEffectorProperties
  :super ros::object
  :slots (_id _ui_type _manufacturer _product _serial_number _hardware_rev _firmware_rev _firmware_date _has_calibration _controls_grip _senses_grip _reverses_grip _controls_force _senses_force _controls_position _senses_position _properties ))

(defmethod baxter_core_msgs::EndEffectorProperties
  (:init
   (&key
    ((:id __id) 0)
    ((:ui_type __ui_type) 0)
    ((:manufacturer __manufacturer) "")
    ((:product __product) "")
    ((:serial_number __serial_number) "")
    ((:hardware_rev __hardware_rev) "")
    ((:firmware_rev __firmware_rev) "")
    ((:firmware_date __firmware_date) "")
    ((:has_calibration __has_calibration) nil)
    ((:controls_grip __controls_grip) nil)
    ((:senses_grip __senses_grip) nil)
    ((:reverses_grip __reverses_grip) nil)
    ((:controls_force __controls_force) nil)
    ((:senses_force __senses_force) nil)
    ((:controls_position __controls_position) nil)
    ((:senses_position __senses_position) nil)
    ((:properties __properties) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _ui_type (round __ui_type))
   (setq _manufacturer (string __manufacturer))
   (setq _product (string __product))
   (setq _serial_number (string __serial_number))
   (setq _hardware_rev (string __hardware_rev))
   (setq _firmware_rev (string __firmware_rev))
   (setq _firmware_date (string __firmware_date))
   (setq _has_calibration __has_calibration)
   (setq _controls_grip __controls_grip)
   (setq _senses_grip __senses_grip)
   (setq _reverses_grip __reverses_grip)
   (setq _controls_force __controls_force)
   (setq _senses_force __senses_force)
   (setq _controls_position __controls_position)
   (setq _senses_position __senses_position)
   (setq _properties (string __properties))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:ui_type
   (&optional __ui_type)
   (if __ui_type (setq _ui_type __ui_type)) _ui_type)
  (:manufacturer
   (&optional __manufacturer)
   (if __manufacturer (setq _manufacturer __manufacturer)) _manufacturer)
  (:product
   (&optional __product)
   (if __product (setq _product __product)) _product)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:hardware_rev
   (&optional __hardware_rev)
   (if __hardware_rev (setq _hardware_rev __hardware_rev)) _hardware_rev)
  (:firmware_rev
   (&optional __firmware_rev)
   (if __firmware_rev (setq _firmware_rev __firmware_rev)) _firmware_rev)
  (:firmware_date
   (&optional __firmware_date)
   (if __firmware_date (setq _firmware_date __firmware_date)) _firmware_date)
  (:has_calibration
   (&optional __has_calibration)
   (if __has_calibration (setq _has_calibration __has_calibration)) _has_calibration)
  (:controls_grip
   (&optional __controls_grip)
   (if __controls_grip (setq _controls_grip __controls_grip)) _controls_grip)
  (:senses_grip
   (&optional __senses_grip)
   (if __senses_grip (setq _senses_grip __senses_grip)) _senses_grip)
  (:reverses_grip
   (&optional __reverses_grip)
   (if __reverses_grip (setq _reverses_grip __reverses_grip)) _reverses_grip)
  (:controls_force
   (&optional __controls_force)
   (if __controls_force (setq _controls_force __controls_force)) _controls_force)
  (:senses_force
   (&optional __senses_force)
   (if __senses_force (setq _senses_force __senses_force)) _senses_force)
  (:controls_position
   (&optional __controls_position)
   (if __controls_position (setq _controls_position __controls_position)) _controls_position)
  (:senses_position
   (&optional __senses_position)
   (if __senses_position (setq _senses_position __senses_position)) _senses_position)
  (:properties
   (&optional __properties)
   (if __properties (setq _properties __properties)) _properties)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint8 _ui_type
    1
    ;; string _manufacturer
    4 (length _manufacturer)
    ;; string _product
    4 (length _product)
    ;; string _serial_number
    4 (length _serial_number)
    ;; string _hardware_rev
    4 (length _hardware_rev)
    ;; string _firmware_rev
    4 (length _firmware_rev)
    ;; string _firmware_date
    4 (length _firmware_date)
    ;; bool _has_calibration
    1
    ;; bool _controls_grip
    1
    ;; bool _senses_grip
    1
    ;; bool _reverses_grip
    1
    ;; bool _controls_force
    1
    ;; bool _senses_force
    1
    ;; bool _controls_position
    1
    ;; bool _senses_position
    1
    ;; string _properties
    4 (length _properties)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _ui_type
       (write-byte _ui_type s)
     ;; string _manufacturer
       (write-long (length _manufacturer) s) (princ _manufacturer s)
     ;; string _product
       (write-long (length _product) s) (princ _product s)
     ;; string _serial_number
       (write-long (length _serial_number) s) (princ _serial_number s)
     ;; string _hardware_rev
       (write-long (length _hardware_rev) s) (princ _hardware_rev s)
     ;; string _firmware_rev
       (write-long (length _firmware_rev) s) (princ _firmware_rev s)
     ;; string _firmware_date
       (write-long (length _firmware_date) s) (princ _firmware_date s)
     ;; bool _has_calibration
       (if _has_calibration (write-byte -1 s) (write-byte 0 s))
     ;; bool _controls_grip
       (if _controls_grip (write-byte -1 s) (write-byte 0 s))
     ;; bool _senses_grip
       (if _senses_grip (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverses_grip
       (if _reverses_grip (write-byte -1 s) (write-byte 0 s))
     ;; bool _controls_force
       (if _controls_force (write-byte -1 s) (write-byte 0 s))
     ;; bool _senses_force
       (if _senses_force (write-byte -1 s) (write-byte 0 s))
     ;; bool _controls_position
       (if _controls_position (write-byte -1 s) (write-byte 0 s))
     ;; bool _senses_position
       (if _senses_position (write-byte -1 s) (write-byte 0 s))
     ;; string _properties
       (write-long (length _properties) s) (princ _properties s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _ui_type
     (setq _ui_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _manufacturer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _manufacturer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _product
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _product (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_rev
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_rev (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _firmware_rev
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_rev (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _firmware_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _has_calibration
     (setq _has_calibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _controls_grip
     (setq _controls_grip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _senses_grip
     (setq _senses_grip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverses_grip
     (setq _reverses_grip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _controls_force
     (setq _controls_force (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _senses_force
     (setq _senses_force (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _controls_position
     (setq _controls_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _senses_position
     (setq _senses_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get baxter_core_msgs::EndEffectorProperties :md5sum-) "21b83773ab9a35216d11e427573c76cc")
(setf (get baxter_core_msgs::EndEffectorProperties :datatype-) "baxter_core_msgs/EndEffectorProperties")
(setf (get baxter_core_msgs::EndEffectorProperties :definition-)
      "uint32 id               # EndEffectorId
uint8  ui_type
    # End Effector type enumeration, for the UI:
    uint8  NO_GRIPPER = 0
    uint8  SUCTION_CUP_GRIPPER = 1
    uint8  ELECTRIC_GRIPPER = 2
    uint8  PASSIVE_GRIPPER = 3
string manufacturer     # Manufacturer name
string product          # Product name
string serial_number    # Serial number, optional
string hardware_rev     # Hardware revision, optional
string firmware_rev     # Firmware revision, optional
string firmware_date    # Firmware date, optional
#
# End Effector Capabilities
bool   has_calibration  # true if the gripper has calibration
bool   controls_grip    # true if the gripper has grip/release control
bool   senses_grip      # true if the gripper has grip sense
bool   reverses_grip    # true if the gripper has reverse-grip mode

bool   controls_force   # true if the gripper has force control
bool   senses_force     # true if the gripper has force sense

bool   controls_position # true if the gripper has position control
bool   senses_position   # true if the gripper has position sense
#
string properties       # JSON; other properties

")



(provide :baxter_core_msgs/EndEffectorProperties "21b83773ab9a35216d11e427573c76cc")



; Auto-generated. Do not edit!


(cl:in-package baxter_core_msgs-msg)


;//! \htmlinclude EndEffectorProperties.msg.html

(cl:defclass <EndEffectorProperties> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (ui_type
    :reader ui_type
    :initarg :ui_type
    :type cl:fixnum
    :initform 0)
   (manufacturer
    :reader manufacturer
    :initarg :manufacturer
    :type cl:string
    :initform "")
   (product
    :reader product
    :initarg :product
    :type cl:string
    :initform "")
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:string
    :initform "")
   (hardware_rev
    :reader hardware_rev
    :initarg :hardware_rev
    :type cl:string
    :initform "")
   (firmware_rev
    :reader firmware_rev
    :initarg :firmware_rev
    :type cl:string
    :initform "")
   (firmware_date
    :reader firmware_date
    :initarg :firmware_date
    :type cl:string
    :initform "")
   (has_calibration
    :reader has_calibration
    :initarg :has_calibration
    :type cl:boolean
    :initform cl:nil)
   (controls_grip
    :reader controls_grip
    :initarg :controls_grip
    :type cl:boolean
    :initform cl:nil)
   (senses_grip
    :reader senses_grip
    :initarg :senses_grip
    :type cl:boolean
    :initform cl:nil)
   (reverses_grip
    :reader reverses_grip
    :initarg :reverses_grip
    :type cl:boolean
    :initform cl:nil)
   (controls_force
    :reader controls_force
    :initarg :controls_force
    :type cl:boolean
    :initform cl:nil)
   (senses_force
    :reader senses_force
    :initarg :senses_force
    :type cl:boolean
    :initform cl:nil)
   (controls_position
    :reader controls_position
    :initarg :controls_position
    :type cl:boolean
    :initform cl:nil)
   (senses_position
    :reader senses_position
    :initarg :senses_position
    :type cl:boolean
    :initform cl:nil)
   (properties
    :reader properties
    :initarg :properties
    :type cl:string
    :initform ""))
)

(cl:defclass EndEffectorProperties (<EndEffectorProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndEffectorProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndEffectorProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baxter_core_msgs-msg:<EndEffectorProperties> is deprecated: use baxter_core_msgs-msg:EndEffectorProperties instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:id-val is deprecated.  Use baxter_core_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'ui_type-val :lambda-list '(m))
(cl:defmethod ui_type-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:ui_type-val is deprecated.  Use baxter_core_msgs-msg:ui_type instead.")
  (ui_type m))

(cl:ensure-generic-function 'manufacturer-val :lambda-list '(m))
(cl:defmethod manufacturer-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:manufacturer-val is deprecated.  Use baxter_core_msgs-msg:manufacturer instead.")
  (manufacturer m))

(cl:ensure-generic-function 'product-val :lambda-list '(m))
(cl:defmethod product-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:product-val is deprecated.  Use baxter_core_msgs-msg:product instead.")
  (product m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:serial_number-val is deprecated.  Use baxter_core_msgs-msg:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'hardware_rev-val :lambda-list '(m))
(cl:defmethod hardware_rev-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:hardware_rev-val is deprecated.  Use baxter_core_msgs-msg:hardware_rev instead.")
  (hardware_rev m))

(cl:ensure-generic-function 'firmware_rev-val :lambda-list '(m))
(cl:defmethod firmware_rev-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:firmware_rev-val is deprecated.  Use baxter_core_msgs-msg:firmware_rev instead.")
  (firmware_rev m))

(cl:ensure-generic-function 'firmware_date-val :lambda-list '(m))
(cl:defmethod firmware_date-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:firmware_date-val is deprecated.  Use baxter_core_msgs-msg:firmware_date instead.")
  (firmware_date m))

(cl:ensure-generic-function 'has_calibration-val :lambda-list '(m))
(cl:defmethod has_calibration-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:has_calibration-val is deprecated.  Use baxter_core_msgs-msg:has_calibration instead.")
  (has_calibration m))

(cl:ensure-generic-function 'controls_grip-val :lambda-list '(m))
(cl:defmethod controls_grip-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:controls_grip-val is deprecated.  Use baxter_core_msgs-msg:controls_grip instead.")
  (controls_grip m))

(cl:ensure-generic-function 'senses_grip-val :lambda-list '(m))
(cl:defmethod senses_grip-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:senses_grip-val is deprecated.  Use baxter_core_msgs-msg:senses_grip instead.")
  (senses_grip m))

(cl:ensure-generic-function 'reverses_grip-val :lambda-list '(m))
(cl:defmethod reverses_grip-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:reverses_grip-val is deprecated.  Use baxter_core_msgs-msg:reverses_grip instead.")
  (reverses_grip m))

(cl:ensure-generic-function 'controls_force-val :lambda-list '(m))
(cl:defmethod controls_force-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:controls_force-val is deprecated.  Use baxter_core_msgs-msg:controls_force instead.")
  (controls_force m))

(cl:ensure-generic-function 'senses_force-val :lambda-list '(m))
(cl:defmethod senses_force-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:senses_force-val is deprecated.  Use baxter_core_msgs-msg:senses_force instead.")
  (senses_force m))

(cl:ensure-generic-function 'controls_position-val :lambda-list '(m))
(cl:defmethod controls_position-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:controls_position-val is deprecated.  Use baxter_core_msgs-msg:controls_position instead.")
  (controls_position m))

(cl:ensure-generic-function 'senses_position-val :lambda-list '(m))
(cl:defmethod senses_position-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:senses_position-val is deprecated.  Use baxter_core_msgs-msg:senses_position instead.")
  (senses_position m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <EndEffectorProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baxter_core_msgs-msg:properties-val is deprecated.  Use baxter_core_msgs-msg:properties instead.")
  (properties m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EndEffectorProperties>)))
    "Constants for message type '<EndEffectorProperties>"
  '((:NO_GRIPPER . 0)
    (:SUCTION_CUP_GRIPPER . 1)
    (:ELECTRIC_GRIPPER . 2)
    (:PASSIVE_GRIPPER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EndEffectorProperties)))
    "Constants for message type 'EndEffectorProperties"
  '((:NO_GRIPPER . 0)
    (:SUCTION_CUP_GRIPPER . 1)
    (:ELECTRIC_GRIPPER . 2)
    (:PASSIVE_GRIPPER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndEffectorProperties>) ostream)
  "Serializes a message object of type '<EndEffectorProperties>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ui_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'manufacturer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'manufacturer))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'product))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'product))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_rev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_rev))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_rev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_rev))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_date))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_calibration) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controls_grip) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'senses_grip) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverses_grip) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controls_force) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'senses_force) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controls_position) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'senses_position) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'properties))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndEffectorProperties>) istream)
  "Deserializes a message object of type '<EndEffectorProperties>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ui_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'manufacturer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'manufacturer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'product) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_rev) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_rev) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_rev) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_rev) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'has_calibration) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'controls_grip) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'senses_grip) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverses_grip) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'controls_force) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'senses_force) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'controls_position) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'senses_position) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'properties) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'properties) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndEffectorProperties>)))
  "Returns string type for a message object of type '<EndEffectorProperties>"
  "baxter_core_msgs/EndEffectorProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndEffectorProperties)))
  "Returns string type for a message object of type 'EndEffectorProperties"
  "baxter_core_msgs/EndEffectorProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndEffectorProperties>)))
  "Returns md5sum for a message object of type '<EndEffectorProperties>"
  "21b83773ab9a35216d11e427573c76cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndEffectorProperties)))
  "Returns md5sum for a message object of type 'EndEffectorProperties"
  "21b83773ab9a35216d11e427573c76cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndEffectorProperties>)))
  "Returns full string definition for message of type '<EndEffectorProperties>"
  (cl:format cl:nil "uint32 id               # EndEffectorId~%uint8  ui_type~%    # End Effector type enumeration, for the UI:~%    uint8  NO_GRIPPER = 0~%    uint8  SUCTION_CUP_GRIPPER = 1~%    uint8  ELECTRIC_GRIPPER = 2~%    uint8  PASSIVE_GRIPPER = 3~%string manufacturer     # Manufacturer name~%string product          # Product name~%string serial_number    # Serial number, optional~%string hardware_rev     # Hardware revision, optional~%string firmware_rev     # Firmware revision, optional~%string firmware_date    # Firmware date, optional~%#~%# End Effector Capabilities~%bool   has_calibration  # true if the gripper has calibration~%bool   controls_grip    # true if the gripper has grip/release control~%bool   senses_grip      # true if the gripper has grip sense~%bool   reverses_grip    # true if the gripper has reverse-grip mode~%~%bool   controls_force   # true if the gripper has force control~%bool   senses_force     # true if the gripper has force sense~%~%bool   controls_position # true if the gripper has position control~%bool   senses_position   # true if the gripper has position sense~%#~%string properties       # JSON; other properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndEffectorProperties)))
  "Returns full string definition for message of type 'EndEffectorProperties"
  (cl:format cl:nil "uint32 id               # EndEffectorId~%uint8  ui_type~%    # End Effector type enumeration, for the UI:~%    uint8  NO_GRIPPER = 0~%    uint8  SUCTION_CUP_GRIPPER = 1~%    uint8  ELECTRIC_GRIPPER = 2~%    uint8  PASSIVE_GRIPPER = 3~%string manufacturer     # Manufacturer name~%string product          # Product name~%string serial_number    # Serial number, optional~%string hardware_rev     # Hardware revision, optional~%string firmware_rev     # Firmware revision, optional~%string firmware_date    # Firmware date, optional~%#~%# End Effector Capabilities~%bool   has_calibration  # true if the gripper has calibration~%bool   controls_grip    # true if the gripper has grip/release control~%bool   senses_grip      # true if the gripper has grip sense~%bool   reverses_grip    # true if the gripper has reverse-grip mode~%~%bool   controls_force   # true if the gripper has force control~%bool   senses_force     # true if the gripper has force sense~%~%bool   controls_position # true if the gripper has position control~%bool   senses_position   # true if the gripper has position sense~%#~%string properties       # JSON; other properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndEffectorProperties>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'manufacturer))
     4 (cl:length (cl:slot-value msg 'product))
     4 (cl:length (cl:slot-value msg 'serial_number))
     4 (cl:length (cl:slot-value msg 'hardware_rev))
     4 (cl:length (cl:slot-value msg 'firmware_rev))
     4 (cl:length (cl:slot-value msg 'firmware_date))
     1
     1
     1
     1
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'properties))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndEffectorProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'EndEffectorProperties
    (cl:cons ':id (id msg))
    (cl:cons ':ui_type (ui_type msg))
    (cl:cons ':manufacturer (manufacturer msg))
    (cl:cons ':product (product msg))
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':hardware_rev (hardware_rev msg))
    (cl:cons ':firmware_rev (firmware_rev msg))
    (cl:cons ':firmware_date (firmware_date msg))
    (cl:cons ':has_calibration (has_calibration msg))
    (cl:cons ':controls_grip (controls_grip msg))
    (cl:cons ':senses_grip (senses_grip msg))
    (cl:cons ':reverses_grip (reverses_grip msg))
    (cl:cons ':controls_force (controls_force msg))
    (cl:cons ':senses_force (senses_force msg))
    (cl:cons ':controls_position (controls_position msg))
    (cl:cons ':senses_position (senses_position msg))
    (cl:cons ':properties (properties msg))
))

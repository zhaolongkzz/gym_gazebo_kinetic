// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EndEffectorProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.ui_type = null;
      this.manufacturer = null;
      this.product = null;
      this.serial_number = null;
      this.hardware_rev = null;
      this.firmware_rev = null;
      this.firmware_date = null;
      this.has_calibration = null;
      this.controls_grip = null;
      this.senses_grip = null;
      this.reverses_grip = null;
      this.controls_force = null;
      this.senses_force = null;
      this.controls_position = null;
      this.senses_position = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('ui_type')) {
        this.ui_type = initObj.ui_type
      }
      else {
        this.ui_type = 0;
      }
      if (initObj.hasOwnProperty('manufacturer')) {
        this.manufacturer = initObj.manufacturer
      }
      else {
        this.manufacturer = '';
      }
      if (initObj.hasOwnProperty('product')) {
        this.product = initObj.product
      }
      else {
        this.product = '';
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
      if (initObj.hasOwnProperty('hardware_rev')) {
        this.hardware_rev = initObj.hardware_rev
      }
      else {
        this.hardware_rev = '';
      }
      if (initObj.hasOwnProperty('firmware_rev')) {
        this.firmware_rev = initObj.firmware_rev
      }
      else {
        this.firmware_rev = '';
      }
      if (initObj.hasOwnProperty('firmware_date')) {
        this.firmware_date = initObj.firmware_date
      }
      else {
        this.firmware_date = '';
      }
      if (initObj.hasOwnProperty('has_calibration')) {
        this.has_calibration = initObj.has_calibration
      }
      else {
        this.has_calibration = false;
      }
      if (initObj.hasOwnProperty('controls_grip')) {
        this.controls_grip = initObj.controls_grip
      }
      else {
        this.controls_grip = false;
      }
      if (initObj.hasOwnProperty('senses_grip')) {
        this.senses_grip = initObj.senses_grip
      }
      else {
        this.senses_grip = false;
      }
      if (initObj.hasOwnProperty('reverses_grip')) {
        this.reverses_grip = initObj.reverses_grip
      }
      else {
        this.reverses_grip = false;
      }
      if (initObj.hasOwnProperty('controls_force')) {
        this.controls_force = initObj.controls_force
      }
      else {
        this.controls_force = false;
      }
      if (initObj.hasOwnProperty('senses_force')) {
        this.senses_force = initObj.senses_force
      }
      else {
        this.senses_force = false;
      }
      if (initObj.hasOwnProperty('controls_position')) {
        this.controls_position = initObj.controls_position
      }
      else {
        this.controls_position = false;
      }
      if (initObj.hasOwnProperty('senses_position')) {
        this.senses_position = initObj.senses_position
      }
      else {
        this.senses_position = false;
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndEffectorProperties
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [ui_type]
    bufferOffset = _serializer.uint8(obj.ui_type, buffer, bufferOffset);
    // Serialize message field [manufacturer]
    bufferOffset = _serializer.string(obj.manufacturer, buffer, bufferOffset);
    // Serialize message field [product]
    bufferOffset = _serializer.string(obj.product, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [hardware_rev]
    bufferOffset = _serializer.string(obj.hardware_rev, buffer, bufferOffset);
    // Serialize message field [firmware_rev]
    bufferOffset = _serializer.string(obj.firmware_rev, buffer, bufferOffset);
    // Serialize message field [firmware_date]
    bufferOffset = _serializer.string(obj.firmware_date, buffer, bufferOffset);
    // Serialize message field [has_calibration]
    bufferOffset = _serializer.bool(obj.has_calibration, buffer, bufferOffset);
    // Serialize message field [controls_grip]
    bufferOffset = _serializer.bool(obj.controls_grip, buffer, bufferOffset);
    // Serialize message field [senses_grip]
    bufferOffset = _serializer.bool(obj.senses_grip, buffer, bufferOffset);
    // Serialize message field [reverses_grip]
    bufferOffset = _serializer.bool(obj.reverses_grip, buffer, bufferOffset);
    // Serialize message field [controls_force]
    bufferOffset = _serializer.bool(obj.controls_force, buffer, bufferOffset);
    // Serialize message field [senses_force]
    bufferOffset = _serializer.bool(obj.senses_force, buffer, bufferOffset);
    // Serialize message field [controls_position]
    bufferOffset = _serializer.bool(obj.controls_position, buffer, bufferOffset);
    // Serialize message field [senses_position]
    bufferOffset = _serializer.bool(obj.senses_position, buffer, bufferOffset);
    // Serialize message field [properties]
    bufferOffset = _serializer.string(obj.properties, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndEffectorProperties
    let len;
    let data = new EndEffectorProperties(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ui_type]
    data.ui_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [manufacturer]
    data.manufacturer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product]
    data.product = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_rev]
    data.hardware_rev = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firmware_rev]
    data.firmware_rev = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firmware_date]
    data.firmware_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [has_calibration]
    data.has_calibration = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [controls_grip]
    data.controls_grip = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [senses_grip]
    data.senses_grip = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverses_grip]
    data.reverses_grip = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [controls_force]
    data.controls_force = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [senses_force]
    data.senses_force = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [controls_position]
    data.controls_position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [senses_position]
    data.senses_position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [properties]
    data.properties = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.manufacturer.length;
    length += object.product.length;
    length += object.serial_number.length;
    length += object.hardware_rev.length;
    length += object.firmware_rev.length;
    length += object.firmware_date.length;
    length += object.properties.length;
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/EndEffectorProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21b83773ab9a35216d11e427573c76cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id               # EndEffectorId
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndEffectorProperties(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.ui_type !== undefined) {
      resolved.ui_type = msg.ui_type;
    }
    else {
      resolved.ui_type = 0
    }

    if (msg.manufacturer !== undefined) {
      resolved.manufacturer = msg.manufacturer;
    }
    else {
      resolved.manufacturer = ''
    }

    if (msg.product !== undefined) {
      resolved.product = msg.product;
    }
    else {
      resolved.product = ''
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    if (msg.hardware_rev !== undefined) {
      resolved.hardware_rev = msg.hardware_rev;
    }
    else {
      resolved.hardware_rev = ''
    }

    if (msg.firmware_rev !== undefined) {
      resolved.firmware_rev = msg.firmware_rev;
    }
    else {
      resolved.firmware_rev = ''
    }

    if (msg.firmware_date !== undefined) {
      resolved.firmware_date = msg.firmware_date;
    }
    else {
      resolved.firmware_date = ''
    }

    if (msg.has_calibration !== undefined) {
      resolved.has_calibration = msg.has_calibration;
    }
    else {
      resolved.has_calibration = false
    }

    if (msg.controls_grip !== undefined) {
      resolved.controls_grip = msg.controls_grip;
    }
    else {
      resolved.controls_grip = false
    }

    if (msg.senses_grip !== undefined) {
      resolved.senses_grip = msg.senses_grip;
    }
    else {
      resolved.senses_grip = false
    }

    if (msg.reverses_grip !== undefined) {
      resolved.reverses_grip = msg.reverses_grip;
    }
    else {
      resolved.reverses_grip = false
    }

    if (msg.controls_force !== undefined) {
      resolved.controls_force = msg.controls_force;
    }
    else {
      resolved.controls_force = false
    }

    if (msg.senses_force !== undefined) {
      resolved.senses_force = msg.senses_force;
    }
    else {
      resolved.senses_force = false
    }

    if (msg.controls_position !== undefined) {
      resolved.controls_position = msg.controls_position;
    }
    else {
      resolved.controls_position = false
    }

    if (msg.senses_position !== undefined) {
      resolved.senses_position = msg.senses_position;
    }
    else {
      resolved.senses_position = false
    }

    if (msg.properties !== undefined) {
      resolved.properties = msg.properties;
    }
    else {
      resolved.properties = ''
    }

    return resolved;
    }
};

// Constants for message
EndEffectorProperties.Constants = {
  NO_GRIPPER: 0,
  SUCTION_CUP_GRIPPER: 1,
  ELECTRIC_GRIPPER: 2,
  PASSIVE_GRIPPER: 3,
}

module.exports = EndEffectorProperties;

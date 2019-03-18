// Auto-generated. Do not edit!

// (in-package controller_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HardwareInterfaceResources {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hardware_interface = null;
      this.resources = null;
    }
    else {
      if (initObj.hasOwnProperty('hardware_interface')) {
        this.hardware_interface = initObj.hardware_interface
      }
      else {
        this.hardware_interface = '';
      }
      if (initObj.hasOwnProperty('resources')) {
        this.resources = initObj.resources
      }
      else {
        this.resources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareInterfaceResources
    // Serialize message field [hardware_interface]
    bufferOffset = _serializer.string(obj.hardware_interface, buffer, bufferOffset);
    // Serialize message field [resources]
    bufferOffset = _arraySerializer.string(obj.resources, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareInterfaceResources
    let len;
    let data = new HardwareInterfaceResources(null);
    // Deserialize message field [hardware_interface]
    data.hardware_interface = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [resources]
    data.resources = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.hardware_interface.length;
    object.resources.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_manager_msgs/HardwareInterfaceResources';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f25b55cbf1d1f76e82e5ec9e83f76258';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Type of hardware interface
    string hardware_interface
    # List of resources belonging to the hardware interface
    string[] resources
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HardwareInterfaceResources(null);
    if (msg.hardware_interface !== undefined) {
      resolved.hardware_interface = msg.hardware_interface;
    }
    else {
      resolved.hardware_interface = ''
    }

    if (msg.resources !== undefined) {
      resolved.resources = msg.resources;
    }
    else {
      resolved.resources = []
    }

    return resolved;
    }
};

module.exports = HardwareInterfaceResources;

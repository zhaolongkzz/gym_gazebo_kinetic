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

class ControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.state = null;
      this.type = null;
      this.hardware_interface = null;
      this.resources = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
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
    // Serializes a message object of type ControllerState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [hardware_interface]
    bufferOffset = _serializer.string(obj.hardware_interface, buffer, bufferOffset);
    // Serialize message field [resources]
    bufferOffset = _arraySerializer.string(obj.resources, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerState
    let len;
    let data = new ControllerState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_interface]
    data.hardware_interface = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [resources]
    data.resources = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.state.length;
    length += object.type.length;
    length += object.hardware_interface.length;
    object.resources.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_manager_msgs/ControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cac963cc68f4f5836765c108de0fc446';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string state
    string type
    string hardware_interface
    string[] resources
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

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

module.exports = ControllerState;

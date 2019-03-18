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

class JointCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.command = null;
      this.names = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = [];
      }
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommand
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _arraySerializer.float64(obj.command, buffer, bufferOffset, null);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommand
    let len;
    let data = new JointCommand(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.command.length;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/JointCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19bfec8434dd568ab3c633d187c36f2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 mode
    float64[] command
    string[]  names
    
    int32 POSITION_MODE=1
    int32 VELOCITY_MODE=2
    int32 TORQUE_MODE=3
    int32 RAW_POSITION_MODE=4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommand(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = []
    }

    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    return resolved;
    }
};

// Constants for message
JointCommand.Constants = {
  POSITION_MODE: 1,
  VELOCITY_MODE: 2,
  TORQUE_MODE: 3,
  RAW_POSITION_MODE: 4,
}

module.exports = JointCommand;

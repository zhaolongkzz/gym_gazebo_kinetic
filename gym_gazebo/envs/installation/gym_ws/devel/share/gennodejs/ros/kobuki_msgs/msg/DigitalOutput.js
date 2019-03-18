// Auto-generated. Do not edit!

// (in-package kobuki_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DigitalOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
      this.mask = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalOutput
    // Check that the constant length array field [values] has the right length
    if (obj.values.length !== 4) {
      throw new Error('Unable to serialize array field values - length must be 4')
    }
    // Serialize message field [values]
    bufferOffset = _arraySerializer.bool(obj.values, buffer, bufferOffset, 4);
    // Check that the constant length array field [mask] has the right length
    if (obj.mask.length !== 4) {
      throw new Error('Unable to serialize array field mask - length must be 4')
    }
    // Serialize message field [mask]
    bufferOffset = _arraySerializer.bool(obj.mask, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalOutput
    let len;
    let data = new DigitalOutput(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [mask]
    data.mask = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/DigitalOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e97cd7f196a0270516b506e8bf29ca2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Digital output - only four pins. 
    
    # Array of values indices represent pins 0-3 respectively.
    bool[4] values
    
    # Set indices to true to set a pin, false to ignore.
    bool[4] mask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalOutput(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = new Array(4).fill(0)
    }

    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = DigitalOutput;

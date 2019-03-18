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

class ExternalPower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExternalPower
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExternalPower
    let len;
    let data = new ExternalPower(null);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/ExternalPower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95149d524971a4c6d19e64c827307194';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Turn on/off Kobuki's external power sources
    
    # Power sources
    uint8 PWR_3_3V1A  = 0 # DB25 connector only
    uint8 PWR_5V1A    = 1 # DB25 connector and Micro Molex connector
    uint8 PWR_12V5A   = 2 # Micro Molex connector only
    uint8 PWR_12V1_5A = 3 # Micro Molex connector only
    
    # State
    uint8 OFF = 0
    uint8 ON  = 1
    
    uint8 source
    
    uint8 state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExternalPower(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
ExternalPower.Constants = {
  PWR_3_3V1A: 0,
  PWR_5V1A: 1,
  PWR_12V5A: 2,
  PWR_12V1_5A: 3,
  OFF: 0,
  ON: 1,
}

module.exports = ExternalPower;

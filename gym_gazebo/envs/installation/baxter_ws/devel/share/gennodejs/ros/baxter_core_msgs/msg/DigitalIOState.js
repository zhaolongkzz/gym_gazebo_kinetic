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

class DigitalIOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.isInputOnly = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('isInputOnly')) {
        this.isInputOnly = initObj.isInputOnly
      }
      else {
        this.isInputOnly = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalIOState
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    // Serialize message field [isInputOnly]
    bufferOffset = _serializer.bool(obj.isInputOnly, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalIOState
    let len;
    let data = new DigitalIOState(null);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [isInputOnly]
    data.isInputOnly = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/DigitalIOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29d0be3859dae81a66b28f167ecec98c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 state
    bool isInputOnly
    
    int8 OFF = 0
    int8 ON  = 1
    int8 PRESSED = 1
    int8 UNPRESSED = 0
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalIOState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.isInputOnly !== undefined) {
      resolved.isInputOnly = msg.isInputOnly;
    }
    else {
      resolved.isInputOnly = false
    }

    return resolved;
    }
};

// Constants for message
DigitalIOState.Constants = {
  OFF: 0,
  ON: 1,
  PRESSED: 1,
  UNPRESSED: 0,
}

module.exports = DigitalIOState;

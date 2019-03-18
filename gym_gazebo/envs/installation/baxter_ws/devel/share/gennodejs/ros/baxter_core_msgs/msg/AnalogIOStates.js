// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AnalogIOState = require('./AnalogIOState.js');

//-----------------------------------------------------------

class AnalogIOStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnalogIOStates
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = AnalogIOState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnalogIOStates
    let len;
    let data = new AnalogIOStates(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = AnalogIOState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 17 * object.states.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/AnalogIOStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a05ba3bbb53a8a3b164e34946d619f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[]         names
    AnalogIOState[] states
    ================================================================================
    MSG: baxter_core_msgs/AnalogIOState
    time timestamp
    float64 value
    bool isInputOnly
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnalogIOStates(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = AnalogIOState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = AnalogIOStates;

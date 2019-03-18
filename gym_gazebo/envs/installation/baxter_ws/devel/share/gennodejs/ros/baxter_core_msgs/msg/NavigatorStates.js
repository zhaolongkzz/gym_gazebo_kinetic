// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavigatorState = require('./NavigatorState.js');

//-----------------------------------------------------------

class NavigatorStates {
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
    // Serializes a message object of type NavigatorStates
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = NavigatorState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigatorStates
    let len;
    let data = new NavigatorStates(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = NavigatorState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    object.states.forEach((val) => {
      length += NavigatorState.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/NavigatorStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c2eeb02fbbaa6f1ab6c680887f2db78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # used when publishing multiple navigators
    string[]         names
    NavigatorState[] states
    
    ================================================================================
    MSG: baxter_core_msgs/NavigatorState
    # buttons
    string[] button_names
    bool[] buttons
    
    # wheel position
    uint8   wheel
    
    # true if the light is on, false if not
    # lights map to button names
    string[] light_names
    bool[] lights
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigatorStates(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = NavigatorState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = NavigatorStates;

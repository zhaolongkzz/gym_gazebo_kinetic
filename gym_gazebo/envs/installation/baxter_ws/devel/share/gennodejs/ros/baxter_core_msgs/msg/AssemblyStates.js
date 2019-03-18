// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AssemblyState = require('./AssemblyState.js');

//-----------------------------------------------------------

class AssemblyStates {
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
    // Serializes a message object of type AssemblyStates
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = AssemblyState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssemblyStates
    let len;
    let data = new AssemblyStates(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = AssemblyState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 6 * object.states.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/AssemblyStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63427318d41dbd2077c105027ad82a2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] names
    AssemblyState[] states
    ================================================================================
    MSG: baxter_core_msgs/AssemblyState
    bool ready               # true if enabled and ready to operate, e.g., not homing
    bool enabled             # true if enabled
    bool stopped             # true if stopped -- e-stop asserted
    bool error               # true if a component of the assembly has an error
    #
    # The following are specific to the robot top-level assembly:
    uint8  estop_button      # One of the following:
      uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed
      uint8   ESTOP_BUTTON_PRESSED   = 1
      uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source
      uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.
    #
    uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:
      uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted
      uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)
      uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown
      uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault
      uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssemblyStates(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = AssemblyState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = AssemblyStates;

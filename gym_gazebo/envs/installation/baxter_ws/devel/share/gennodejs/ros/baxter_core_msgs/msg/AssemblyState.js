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

class AssemblyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ready = null;
      this.enabled = null;
      this.stopped = null;
      this.error = null;
      this.estop_button = null;
      this.estop_source = null;
    }
    else {
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = false;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('stopped')) {
        this.stopped = initObj.stopped
      }
      else {
        this.stopped = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = false;
      }
      if (initObj.hasOwnProperty('estop_button')) {
        this.estop_button = initObj.estop_button
      }
      else {
        this.estop_button = 0;
      }
      if (initObj.hasOwnProperty('estop_source')) {
        this.estop_source = initObj.estop_source
      }
      else {
        this.estop_source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssemblyState
    // Serialize message field [ready]
    bufferOffset = _serializer.bool(obj.ready, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [stopped]
    bufferOffset = _serializer.bool(obj.stopped, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.bool(obj.error, buffer, bufferOffset);
    // Serialize message field [estop_button]
    bufferOffset = _serializer.uint8(obj.estop_button, buffer, bufferOffset);
    // Serialize message field [estop_source]
    bufferOffset = _serializer.uint8(obj.estop_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssemblyState
    let len;
    let data = new AssemblyState(null);
    // Deserialize message field [ready]
    data.ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stopped]
    data.stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [estop_button]
    data.estop_button = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [estop_source]
    data.estop_source = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/AssemblyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '356d9dd237ce73b2667da9235f541933';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AssemblyState(null);
    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = false
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.stopped !== undefined) {
      resolved.stopped = msg.stopped;
    }
    else {
      resolved.stopped = false
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = false
    }

    if (msg.estop_button !== undefined) {
      resolved.estop_button = msg.estop_button;
    }
    else {
      resolved.estop_button = 0
    }

    if (msg.estop_source !== undefined) {
      resolved.estop_source = msg.estop_source;
    }
    else {
      resolved.estop_source = 0
    }

    return resolved;
    }
};

// Constants for message
AssemblyState.Constants = {
  ESTOP_BUTTON_UNPRESSED: 0,
  ESTOP_BUTTON_PRESSED: 1,
  ESTOP_BUTTON_UNKNOWN: 2,
  ESTOP_BUTTON_RELEASED: 3,
  ESTOP_SOURCE_NONE: 0,
  ESTOP_SOURCE_USER: 1,
  ESTOP_SOURCE_UNKNOWN: 2,
  ESTOP_SOURCE_FAULT: 3,
  ESTOP_SOURCE_BRAIN: 4,
}

module.exports = AssemblyState;

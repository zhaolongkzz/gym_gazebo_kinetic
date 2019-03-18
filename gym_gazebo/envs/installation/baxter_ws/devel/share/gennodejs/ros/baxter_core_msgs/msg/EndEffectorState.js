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

class EndEffectorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.enabled = null;
      this.calibrated = null;
      this.ready = null;
      this.moving = null;
      this.gripping = null;
      this.missed = null;
      this.error = null;
      this.reverse = null;
      this.position = null;
      this.force = null;
      this.state = null;
      this.command = null;
      this.command_sender = null;
      this.command_sequence = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = 0;
      }
      if (initObj.hasOwnProperty('calibrated')) {
        this.calibrated = initObj.calibrated
      }
      else {
        this.calibrated = 0;
      }
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = 0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = 0;
      }
      if (initObj.hasOwnProperty('gripping')) {
        this.gripping = initObj.gripping
      }
      else {
        this.gripping = 0;
      }
      if (initObj.hasOwnProperty('missed')) {
        this.missed = initObj.missed
      }
      else {
        this.missed = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0.0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('command_sender')) {
        this.command_sender = initObj.command_sender
      }
      else {
        this.command_sender = '';
      }
      if (initObj.hasOwnProperty('command_sequence')) {
        this.command_sequence = initObj.command_sequence
      }
      else {
        this.command_sequence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndEffectorState
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.uint8(obj.enabled, buffer, bufferOffset);
    // Serialize message field [calibrated]
    bufferOffset = _serializer.uint8(obj.calibrated, buffer, bufferOffset);
    // Serialize message field [ready]
    bufferOffset = _serializer.uint8(obj.ready, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.uint8(obj.moving, buffer, bufferOffset);
    // Serialize message field [gripping]
    bufferOffset = _serializer.uint8(obj.gripping, buffer, bufferOffset);
    // Serialize message field [missed]
    bufferOffset = _serializer.uint8(obj.missed, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.uint8(obj.reverse, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.float32(obj.force, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [command_sender]
    bufferOffset = _serializer.string(obj.command_sender, buffer, bufferOffset);
    // Serialize message field [command_sequence]
    bufferOffset = _serializer.uint32(obj.command_sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndEffectorState
    let len;
    let data = new EndEffectorState(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [calibrated]
    data.calibrated = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ready]
    data.ready = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gripping]
    data.gripping = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [missed]
    data.missed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_sender]
    data.command_sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_sequence]
    data.command_sequence = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.command.length;
    length += object.command_sender.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/EndEffectorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ade777f069d738595bc19e246b8ec7a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    time timestamp              # time when state was updated
    uint32 id                   # EndEffectorId
    #
    # The following State fields are tristate: 0 = false; 1 = true; 2 = unknown/unsupported
      uint8   STATE_FALSE = 0
      uint8   STATE_TRUE = 1
      uint8   STATE_UNKNOWN = 2
    #
    uint8   enabled             # true if enabled
    uint8   calibrated          # true if calibration has completed
    uint8   ready               # true if ready for another command
    uint8   moving              # true if moving
    uint8   gripping            # true if gripping
    uint8   missed              # true if GRIP/GOTO/SET was commanded and the gripper reaches the end of travel
    uint8   error               # true if the gripper is in an error state
    uint8   reverse             # true if the gripper is in reverse mode
    #
    float32 position            # position as a percentage of the max position;      0=closed - 100=open
    #
      float32 POSITION_CLOSED = 0.0
      float32 POSITION_OPEN   = 100.0
    #
    float32 force               # force as a percentage of max force;                0=none   - 100=max
    #
      float32 FORCE_MIN = 0.0
      float32 FORCE_MAX = 100.0
    #
    string state                # JSON: other state information
    #
    string command              # from the last command message
    string command_sender
    uint32 command_sequence
    #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndEffectorState(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = 0
    }

    if (msg.calibrated !== undefined) {
      resolved.calibrated = msg.calibrated;
    }
    else {
      resolved.calibrated = 0
    }

    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = 0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = 0
    }

    if (msg.gripping !== undefined) {
      resolved.gripping = msg.gripping;
    }
    else {
      resolved.gripping = 0
    }

    if (msg.missed !== undefined) {
      resolved.missed = msg.missed;
    }
    else {
      resolved.missed = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0.0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.command_sender !== undefined) {
      resolved.command_sender = msg.command_sender;
    }
    else {
      resolved.command_sender = ''
    }

    if (msg.command_sequence !== undefined) {
      resolved.command_sequence = msg.command_sequence;
    }
    else {
      resolved.command_sequence = 0
    }

    return resolved;
    }
};

// Constants for message
EndEffectorState.Constants = {
  STATE_FALSE: 0,
  STATE_TRUE: 1,
  STATE_UNKNOWN: 2,
  POSITION_CLOSED: 0.0,
  POSITION_OPEN: 100.0,
  FORCE_MIN: 0.0,
  FORCE_MAX: 100.0,
}

module.exports = EndEffectorState;

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

class BumperEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bumper = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('bumper')) {
        this.bumper = initObj.bumper
      }
      else {
        this.bumper = 0;
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
    // Serializes a message object of type BumperEvent
    // Serialize message field [bumper]
    bufferOffset = _serializer.uint8(obj.bumper, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperEvent
    let len;
    let data = new BumperEvent(null);
    // Deserialize message field [bumper]
    data.bumper = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/BumperEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffe360cd50f14f9251d9844083e72ac5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a bumper event.
    # This message is generated whenever a particular bumper is pressed or released.
    # Note that, despite bumper field on SensorState messages, state field is not a
    # bitmask, but the new state of a single sensor.
    
    # bumper
    uint8 LEFT   = 0
    uint8 CENTER = 1
    uint8 RIGHT  = 2
    
    # state
    uint8 RELEASED = 0
    uint8 PRESSED  = 1
    
    uint8 bumper
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BumperEvent(null);
    if (msg.bumper !== undefined) {
      resolved.bumper = msg.bumper;
    }
    else {
      resolved.bumper = 0
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
BumperEvent.Constants = {
  LEFT: 0,
  CENTER: 1,
  RIGHT: 2,
  RELEASED: 0,
  PRESSED: 1,
}

module.exports = BumperEvent;

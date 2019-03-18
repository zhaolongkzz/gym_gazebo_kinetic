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

class WheelDropEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0;
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
    // Serializes a message object of type WheelDropEvent
    // Serialize message field [wheel]
    bufferOffset = _serializer.uint8(obj.wheel, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDropEvent
    let len;
    let data = new WheelDropEvent(null);
    // Deserialize message field [wheel]
    data.wheel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/WheelDropEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e102837d89384d67669a0df86b63f33b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a wheel drop event.
    # This message is generated whenever one of the wheels is dropped (robot fell
    # or was raised) or raised (normal condition).
    # Note that, despite wheel_drop field on SensorState messages, state field is
    # not a bitmask, but the new state of a single sensor.
    
    # wheel
    uint8 LEFT  = 0
    uint8 RIGHT = 1
    
    # state
    uint8 RAISED  = 0
    uint8 DROPPED = 1
    
    uint8 wheel
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDropEvent(null);
    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0
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
WheelDropEvent.Constants = {
  LEFT: 0,
  RIGHT: 1,
  RAISED: 0,
  DROPPED: 1,
}

module.exports = WheelDropEvent;

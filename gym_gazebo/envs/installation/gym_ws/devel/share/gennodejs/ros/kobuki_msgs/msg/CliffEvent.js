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

class CliffEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
      this.state = null;
      this.bottom = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CliffEvent
    // Serialize message field [sensor]
    bufferOffset = _serializer.uint8(obj.sensor, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _serializer.uint16(obj.bottom, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CliffEvent
    let len;
    let data = new CliffEvent(null);
    // Deserialize message field [sensor]
    data.sensor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/CliffEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5b106efbb1427a94f517c5e05f06295';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a cliff sensor event.
    # This message is generated whenever a particular cliff sensor signals that the
    # robot approaches or moves away from a cliff.
    # Note that, despite cliff field on SensorState messages, state field is not a
    # bitmask, but the new state of a single sensor.
    
    # cliff sensor
    uint8 LEFT   = 0
    uint8 CENTER = 1
    uint8 RIGHT  = 2
    
    # cliff sensor state
    uint8 FLOOR = 0
    uint8 CLIFF = 1
    
    uint8 sensor
    uint8 state
    
    # distance to floor when cliff was detected
    uint16 bottom
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CliffEvent(null);
    if (msg.sensor !== undefined) {
      resolved.sensor = msg.sensor;
    }
    else {
      resolved.sensor = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = 0
    }

    return resolved;
    }
};

// Constants for message
CliffEvent.Constants = {
  LEFT: 0,
  CENTER: 1,
  RIGHT: 2,
  FLOOR: 0,
  CLIFF: 1,
}

module.exports = CliffEvent;

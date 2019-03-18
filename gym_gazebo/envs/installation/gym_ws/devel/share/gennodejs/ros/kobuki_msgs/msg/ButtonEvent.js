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

class ButtonEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('button')) {
        this.button = initObj.button
      }
      else {
        this.button = 0;
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
    // Serializes a message object of type ButtonEvent
    // Serialize message field [button]
    bufferOffset = _serializer.uint8(obj.button, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonEvent
    let len;
    let data = new ButtonEvent(null);
    // Deserialize message field [button]
    data.button = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/ButtonEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49eca512765dbdec759a79083ffcec8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a button event.
    # This message is generated whenever a particular button is pressed or released.
    # Note that, despite buttons field on SensorState messages, state field is not a
    # bitmask, but the new state of a single button.
    
    uint8 Button0 = 0
    uint8 Button1 = 1
    uint8 Button2 = 2
    
    uint8 RELEASED = 0
    uint8 PRESSED  = 1
    
    uint8 button
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonEvent(null);
    if (msg.button !== undefined) {
      resolved.button = msg.button;
    }
    else {
      resolved.button = 0
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
ButtonEvent.Constants = {
  BUTTON0: 0,
  BUTTON1: 1,
  BUTTON2: 2,
  RELEASED: 0,
  PRESSED: 1,
}

module.exports = ButtonEvent;

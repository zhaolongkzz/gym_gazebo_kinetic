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

class DigitalInputEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalInputEvent
    // Check that the constant length array field [values] has the right length
    if (obj.values.length !== 4) {
      throw new Error('Unable to serialize array field values - length must be 4')
    }
    // Serialize message field [values]
    bufferOffset = _arraySerializer.bool(obj.values, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalInputEvent
    let len;
    let data = new DigitalInputEvent(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/DigitalInputEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93da823c8b121f8a3940ef3830c58e44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is generated whenever the value of one or more digital input pins changes.
    
    # Array of values; indices represent pins 0-3 respectively.
    bool[4] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalInputEvent(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = DigitalInputEvent;

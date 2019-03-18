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

class Led {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Led
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Led
    let len;
    let data = new Led(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/Led';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4391183b0cf05f8f25d04220401b9f43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sends a command for controlling the a LED.
    # 
    # Typically the first LED is always reserved to denote
    # the state - the remainder will be controllable. 
    
    uint8 BLACK   = 0
    uint8 GREEN   = 1
    uint8 ORANGE  = 2
    uint8 RED     = 3
    
    # For kobuki there are only two controllable LED's.
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Led(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
Led.Constants = {
  BLACK: 0,
  GREEN: 1,
  ORANGE: 2,
  RED: 3,
}

module.exports = Led;

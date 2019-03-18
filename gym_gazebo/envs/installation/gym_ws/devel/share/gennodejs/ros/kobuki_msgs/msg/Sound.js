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

class Sound {
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
    // Serializes a message object of type Sound
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sound
    let len;
    let data = new Sound(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/Sound';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfeab0daae67749c426c1db741a4f420';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sends a command for playing sounds.
    # The available sound sequences:
    # 0 - turn on
    # 1 - turn off
    # 2 - recharge start
    # 3 - press button,
    # 4 - error sound
    # 5 - start cleaning
    # 6 - cleaning end
    
    uint8 ON            = 0
    uint8 OFF           = 1
    uint8 RECHARGE      = 2
    uint8 BUTTON        = 3
    uint8 ERROR         = 4
    uint8 CLEANINGSTART = 5
    uint8 CLEANINGEND   = 6
    
    uint8 value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sound(null);
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
Sound.Constants = {
  ON: 0,
  OFF: 1,
  RECHARGE: 2,
  BUTTON: 3,
  ERROR: 4,
  CLEANINGSTART: 5,
  CLEANINGEND: 6,
}

module.exports = Sound;

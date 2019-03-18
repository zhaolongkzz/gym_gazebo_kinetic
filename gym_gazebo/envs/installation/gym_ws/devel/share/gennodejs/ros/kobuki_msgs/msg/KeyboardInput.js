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

class KeyboardInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pressedKey = null;
    }
    else {
      if (initObj.hasOwnProperty('pressedKey')) {
        this.pressedKey = initObj.pressedKey
      }
      else {
        this.pressedKey = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyboardInput
    // Serialize message field [pressedKey]
    bufferOffset = _serializer.uint8(obj.pressedKey, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyboardInput
    let len;
    let data = new KeyboardInput(null);
    // Deserialize message field [pressedKey]
    data.pressedKey = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/KeyboardInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9288b95cb32b48719d84d696be253401';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # KEYBOARD INPUT
    # 
    # Keycodes to be transferred for remote teleops.
    
    uint8  KeyCode_Right    = 67     # 0x43
    uint8  KeyCode_Left     = 68     # 0x44
    uint8  KeyCode_Up       = 65     # 0x41
    uint8  KeyCode_Down     = 66     # 0x42
    uint8  KeyCode_Space    = 32     # 0x20
    uint8  KeyCode_Enable   = 101    # 0x65, 'e'
    uint8  KeyCode_Disable  = 100    # 0x64, 'd'
    
    uint8 pressedKey
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeyboardInput(null);
    if (msg.pressedKey !== undefined) {
      resolved.pressedKey = msg.pressedKey;
    }
    else {
      resolved.pressedKey = 0
    }

    return resolved;
    }
};

// Constants for message
KeyboardInput.Constants = {
  KEYCODE_RIGHT: 67,
  KEYCODE_LEFT: 68,
  KEYCODE_UP: 65,
  KEYCODE_DOWN: 66,
  KEYCODE_SPACE: 32,
  KEYCODE_ENABLE: 101,
  KEYCODE_DISABLE: 100,
}

module.exports = KeyboardInput;

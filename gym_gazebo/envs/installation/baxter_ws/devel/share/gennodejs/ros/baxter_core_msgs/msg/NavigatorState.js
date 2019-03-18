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

class NavigatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_names = null;
      this.buttons = null;
      this.wheel = null;
      this.light_names = null;
      this.lights = null;
    }
    else {
      if (initObj.hasOwnProperty('button_names')) {
        this.button_names = initObj.button_names
      }
      else {
        this.button_names = [];
      }
      if (initObj.hasOwnProperty('buttons')) {
        this.buttons = initObj.buttons
      }
      else {
        this.buttons = [];
      }
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0;
      }
      if (initObj.hasOwnProperty('light_names')) {
        this.light_names = initObj.light_names
      }
      else {
        this.light_names = [];
      }
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigatorState
    // Serialize message field [button_names]
    bufferOffset = _arraySerializer.string(obj.button_names, buffer, bufferOffset, null);
    // Serialize message field [buttons]
    bufferOffset = _arraySerializer.bool(obj.buttons, buffer, bufferOffset, null);
    // Serialize message field [wheel]
    bufferOffset = _serializer.uint8(obj.wheel, buffer, bufferOffset);
    // Serialize message field [light_names]
    bufferOffset = _arraySerializer.string(obj.light_names, buffer, bufferOffset, null);
    // Serialize message field [lights]
    bufferOffset = _arraySerializer.bool(obj.lights, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigatorState
    let len;
    let data = new NavigatorState(null);
    // Deserialize message field [button_names]
    data.button_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [buttons]
    data.buttons = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [wheel]
    data.wheel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light_names]
    data.light_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [lights]
    data.lights = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.button_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.buttons.length;
    object.light_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.lights.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/NavigatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '680d121a1f16a32647298b292492fffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # buttons
    string[] button_names
    bool[] buttons
    
    # wheel position
    uint8   wheel
    
    # true if the light is on, false if not
    # lights map to button names
    string[] light_names
    bool[] lights
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigatorState(null);
    if (msg.button_names !== undefined) {
      resolved.button_names = msg.button_names;
    }
    else {
      resolved.button_names = []
    }

    if (msg.buttons !== undefined) {
      resolved.buttons = msg.buttons;
    }
    else {
      resolved.buttons = []
    }

    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0
    }

    if (msg.light_names !== undefined) {
      resolved.light_names = msg.light_names;
    }
    else {
      resolved.light_names = []
    }

    if (msg.lights !== undefined) {
      resolved.lights = msg.lights;
    }
    else {
      resolved.lights = []
    }

    return resolved;
    }
};

module.exports = NavigatorState;

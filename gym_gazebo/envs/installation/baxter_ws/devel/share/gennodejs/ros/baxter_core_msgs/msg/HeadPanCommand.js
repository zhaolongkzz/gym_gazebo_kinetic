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

class HeadPanCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target = null;
      this.speed_ratio = null;
      this.enable_pan_request = null;
    }
    else {
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = 0.0;
      }
      if (initObj.hasOwnProperty('speed_ratio')) {
        this.speed_ratio = initObj.speed_ratio
      }
      else {
        this.speed_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('enable_pan_request')) {
        this.enable_pan_request = initObj.enable_pan_request
      }
      else {
        this.enable_pan_request = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadPanCommand
    // Serialize message field [target]
    bufferOffset = _serializer.float32(obj.target, buffer, bufferOffset);
    // Serialize message field [speed_ratio]
    bufferOffset = _serializer.float32(obj.speed_ratio, buffer, bufferOffset);
    // Serialize message field [enable_pan_request]
    bufferOffset = _serializer.uint8(obj.enable_pan_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadPanCommand
    let len;
    let data = new HeadPanCommand(null);
    // Deserialize message field [target]
    data.target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_ratio]
    data.speed_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enable_pan_request]
    data.enable_pan_request = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/HeadPanCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23b8a3f4b7ee9de7099d029e57660a8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 target              # radians for target, 0 str
    float32 speed_ratio         # Percentage of max speed [0-1]
    #
      float32 MAX_SPEED_RATIO = 1.0
      float32 MIN_SPEED_RATIO = 0.0
    #
    uint8   enable_pan_request  # override automatic pan enable/disable
    # enable_pan_request is tristate: 0 = disable pan; 1 = enable pan; 2 = don't change pan
      uint8   REQUEST_PAN_DISABLE = 0
      uint8   REQUEST_PAN_ENABLE = 1
      uint8   REQUEST_PAN_VOID = 2
    #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadPanCommand(null);
    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = 0.0
    }

    if (msg.speed_ratio !== undefined) {
      resolved.speed_ratio = msg.speed_ratio;
    }
    else {
      resolved.speed_ratio = 0.0
    }

    if (msg.enable_pan_request !== undefined) {
      resolved.enable_pan_request = msg.enable_pan_request;
    }
    else {
      resolved.enable_pan_request = 0
    }

    return resolved;
    }
};

// Constants for message
HeadPanCommand.Constants = {
  MAX_SPEED_RATIO: 1.0,
  MIN_SPEED_RATIO: 0.0,
  REQUEST_PAN_DISABLE: 0,
  REQUEST_PAN_ENABLE: 1,
  REQUEST_PAN_VOID: 2,
}

module.exports = HeadPanCommand;

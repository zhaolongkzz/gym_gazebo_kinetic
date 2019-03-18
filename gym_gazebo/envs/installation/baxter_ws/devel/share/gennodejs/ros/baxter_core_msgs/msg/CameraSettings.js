// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraControl = require('./CameraControl.js');

//-----------------------------------------------------------

class CameraSettings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.fps = null;
      this.controls = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('fps')) {
        this.fps = initObj.fps
      }
      else {
        this.fps = 0.0;
      }
      if (initObj.hasOwnProperty('controls')) {
        this.controls = initObj.controls
      }
      else {
        this.controls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraSettings
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [fps]
    bufferOffset = _serializer.float32(obj.fps, buffer, bufferOffset);
    // Serialize message field [controls]
    // Serialize the length for message field [controls]
    bufferOffset = _serializer.uint32(obj.controls.length, buffer, bufferOffset);
    obj.controls.forEach((val) => {
      bufferOffset = CameraControl.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraSettings
    let len;
    let data = new CameraSettings(null);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fps]
    data.fps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [controls]
    // Deserialize array length for message field [controls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controls[i] = CameraControl.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.controls.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/CameraSettings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd133bef4a3bd9a6e490a5dc91d20f429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32           width
    int32           height
    float32         fps
    CameraControl[] controls
    
    ================================================================================
    MSG: baxter_core_msgs/CameraControl
    int32   id
    int32   value
    
    int32 CAMERA_CONTROL_EXPOSURE=100
    int32 CAMERA_CONTROL_GAIN=101
    int32 CAMERA_CONTROL_WHITE_BALANCE_R=102
    int32 CAMERA_CONTROL_WHITE_BALANCE_G=103
    int32 CAMERA_CONTROL_WHITE_BALANCE_B=104
    int32 CAMERA_CONTROL_WINDOW_X=105
    int32 CAMERA_CONTROL_WINDOW_Y=106
    int32 CAMERA_CONTROL_FLIP=107
    int32 CAMERA_CONTROL_MIRROR=108
    int32 CAMERA_CONTROL_RESOLUTION_HALF=109
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraSettings(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.fps !== undefined) {
      resolved.fps = msg.fps;
    }
    else {
      resolved.fps = 0.0
    }

    if (msg.controls !== undefined) {
      resolved.controls = new Array(msg.controls.length);
      for (let i = 0; i < resolved.controls.length; ++i) {
        resolved.controls[i] = CameraControl.Resolve(msg.controls[i]);
      }
    }
    else {
      resolved.controls = []
    }

    return resolved;
    }
};

module.exports = CameraSettings;

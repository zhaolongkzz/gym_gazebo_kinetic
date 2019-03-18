// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSettings = require('../msg/CameraSettings.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class OpenCameraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.settings = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('settings')) {
        this.settings = initObj.settings
      }
      else {
        this.settings = new CameraSettings();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpenCameraRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [settings]
    bufferOffset = CameraSettings.serialize(obj.settings, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenCameraRequest
    let len;
    let data = new OpenCameraRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [settings]
    data.settings = CameraSettings.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += CameraSettings.getMessageSize(object.settings);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'baxter_core_msgs/OpenCameraRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4194eee32741c5a98ef8da9666fa6c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string          name
    CameraSettings  settings
    
    ================================================================================
    MSG: baxter_core_msgs/CameraSettings
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
    const resolved = new OpenCameraRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.settings !== undefined) {
      resolved.settings = CameraSettings.Resolve(msg.settings)
    }
    else {
      resolved.settings = new CameraSettings()
    }

    return resolved;
    }
};

class OpenCameraResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.err = null;
    }
    else {
      if (initObj.hasOwnProperty('err')) {
        this.err = initObj.err
      }
      else {
        this.err = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpenCameraResponse
    // Serialize message field [err]
    bufferOffset = _serializer.int32(obj.err, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenCameraResponse
    let len;
    let data = new OpenCameraResponse(null);
    // Deserialize message field [err]
    data.err = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'baxter_core_msgs/OpenCameraResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6e094011a4dfaee5eddf447220446cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32           err
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpenCameraResponse(null);
    if (msg.err !== undefined) {
      resolved.err = msg.err;
    }
    else {
      resolved.err = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: OpenCameraRequest,
  Response: OpenCameraResponse,
  md5sum() { return '73eacff63d5f9cca2d986614515a5c8c'; },
  datatype() { return 'baxter_core_msgs/OpenCamera'; }
};

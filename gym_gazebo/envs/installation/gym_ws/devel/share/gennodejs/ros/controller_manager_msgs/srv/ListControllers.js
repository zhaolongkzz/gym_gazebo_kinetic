// Auto-generated. Do not edit!

// (in-package controller_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ControllerState = require('../msg/ControllerState.js');

//-----------------------------------------------------------

class ListControllersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListControllersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListControllersRequest
    let len;
    let data = new ListControllersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/ListControllersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListControllersRequest(null);
    return resolved;
    }
};

class ListControllersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller = null;
    }
    else {
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListControllersResponse
    // Serialize message field [controller]
    // Serialize the length for message field [controller]
    bufferOffset = _serializer.uint32(obj.controller.length, buffer, bufferOffset);
    obj.controller.forEach((val) => {
      bufferOffset = ControllerState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListControllersResponse
    let len;
    let data = new ListControllersResponse(null);
    // Deserialize message field [controller]
    // Deserialize array length for message field [controller]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controller = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controller[i] = ControllerState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.controller.forEach((val) => {
      length += ControllerState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/ListControllersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12c85fca1984c8ec86264f3d00b938f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControllerState[] controller
    
    
    ================================================================================
    MSG: controller_manager_msgs/ControllerState
    string name
    string state
    string type
    string hardware_interface
    string[] resources
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListControllersResponse(null);
    if (msg.controller !== undefined) {
      resolved.controller = new Array(msg.controller.length);
      for (let i = 0; i < resolved.controller.length; ++i) {
        resolved.controller[i] = ControllerState.Resolve(msg.controller[i]);
      }
    }
    else {
      resolved.controller = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListControllersRequest,
  Response: ListControllersResponse,
  md5sum() { return '12c85fca1984c8ec86264f3d00b938f2'; },
  datatype() { return 'controller_manager_msgs/ListControllers'; }
};

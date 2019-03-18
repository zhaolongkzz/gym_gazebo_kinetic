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


//-----------------------------------------------------------

class SwitchControllerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_controllers = null;
      this.stop_controllers = null;
      this.strictness = null;
    }
    else {
      if (initObj.hasOwnProperty('start_controllers')) {
        this.start_controllers = initObj.start_controllers
      }
      else {
        this.start_controllers = [];
      }
      if (initObj.hasOwnProperty('stop_controllers')) {
        this.stop_controllers = initObj.stop_controllers
      }
      else {
        this.stop_controllers = [];
      }
      if (initObj.hasOwnProperty('strictness')) {
        this.strictness = initObj.strictness
      }
      else {
        this.strictness = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchControllerRequest
    // Serialize message field [start_controllers]
    bufferOffset = _arraySerializer.string(obj.start_controllers, buffer, bufferOffset, null);
    // Serialize message field [stop_controllers]
    bufferOffset = _arraySerializer.string(obj.stop_controllers, buffer, bufferOffset, null);
    // Serialize message field [strictness]
    bufferOffset = _serializer.int32(obj.strictness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchControllerRequest
    let len;
    let data = new SwitchControllerRequest(null);
    // Deserialize message field [start_controllers]
    data.start_controllers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [stop_controllers]
    data.stop_controllers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [strictness]
    data.strictness = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.start_controllers.forEach((val) => {
      length += 4 + val.length;
    });
    object.stop_controllers.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/SwitchControllerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '434da54adc434a5af5743ed711fd6ba1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    string[] start_controllers
    string[] stop_controllers
    int32 strictness
    int32 BEST_EFFORT=1
    int32 STRICT=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchControllerRequest(null);
    if (msg.start_controllers !== undefined) {
      resolved.start_controllers = msg.start_controllers;
    }
    else {
      resolved.start_controllers = []
    }

    if (msg.stop_controllers !== undefined) {
      resolved.stop_controllers = msg.stop_controllers;
    }
    else {
      resolved.stop_controllers = []
    }

    if (msg.strictness !== undefined) {
      resolved.strictness = msg.strictness;
    }
    else {
      resolved.strictness = 0
    }

    return resolved;
    }
};

// Constants for message
SwitchControllerRequest.Constants = {
  BEST_EFFORT: 1,
  STRICT: 2,
}

class SwitchControllerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchControllerResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchControllerResponse
    let len;
    let data = new SwitchControllerResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/SwitchControllerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchControllerResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchControllerRequest,
  Response: SwitchControllerResponse,
  md5sum() { return '5e857dedf71d6f337975e15a1e7cfdd8'; },
  datatype() { return 'controller_manager_msgs/SwitchController'; }
};

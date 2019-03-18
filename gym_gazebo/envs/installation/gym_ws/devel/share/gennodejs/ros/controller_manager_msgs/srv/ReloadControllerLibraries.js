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

class ReloadControllerLibrariesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force_kill = null;
    }
    else {
      if (initObj.hasOwnProperty('force_kill')) {
        this.force_kill = initObj.force_kill
      }
      else {
        this.force_kill = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReloadControllerLibrariesRequest
    // Serialize message field [force_kill]
    bufferOffset = _serializer.bool(obj.force_kill, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadControllerLibrariesRequest
    let len;
    let data = new ReloadControllerLibrariesRequest(null);
    // Deserialize message field [force_kill]
    data.force_kill = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/ReloadControllerLibrariesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18442b59be9479097f11c543bddbac62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    bool force_kill
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReloadControllerLibrariesRequest(null);
    if (msg.force_kill !== undefined) {
      resolved.force_kill = msg.force_kill;
    }
    else {
      resolved.force_kill = false
    }

    return resolved;
    }
};

class ReloadControllerLibrariesResponse {
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
    // Serializes a message object of type ReloadControllerLibrariesResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReloadControllerLibrariesResponse
    let len;
    let data = new ReloadControllerLibrariesResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'controller_manager_msgs/ReloadControllerLibrariesResponse';
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
    const resolved = new ReloadControllerLibrariesResponse(null);
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
  Request: ReloadControllerLibrariesRequest,
  Response: ReloadControllerLibrariesResponse,
  md5sum() { return '40e8c411fd1797d2e2c486018f846040'; },
  datatype() { return 'controller_manager_msgs/ReloadControllerLibraries'; }
};

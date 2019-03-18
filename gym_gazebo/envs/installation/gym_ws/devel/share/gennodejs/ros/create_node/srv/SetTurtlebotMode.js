// Auto-generated. Do not edit!

// (in-package create_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTurtlebotModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTurtlebotModeRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTurtlebotModeRequest
    let len;
    let data = new SetTurtlebotModeRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'create_node/SetTurtlebotModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b81386720be1cd0ce7a3953fcd1b19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTurtlebotModeRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class SetTurtlebotModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('valid_mode')) {
        this.valid_mode = initObj.valid_mode
      }
      else {
        this.valid_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTurtlebotModeResponse
    // Serialize message field [valid_mode]
    bufferOffset = _serializer.bool(obj.valid_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTurtlebotModeResponse
    let len;
    let data = new SetTurtlebotModeResponse(null);
    // Deserialize message field [valid_mode]
    data.valid_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'create_node/SetTurtlebotModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef9db56bf4a60ce42049595d58c32b54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTurtlebotModeResponse(null);
    if (msg.valid_mode !== undefined) {
      resolved.valid_mode = msg.valid_mode;
    }
    else {
      resolved.valid_mode = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTurtlebotModeRequest,
  Response: SetTurtlebotModeResponse,
  md5sum() { return '652c4fe00e931153f82f8af90f1da441'; },
  datatype() { return 'create_node/SetTurtlebotMode'; }
};

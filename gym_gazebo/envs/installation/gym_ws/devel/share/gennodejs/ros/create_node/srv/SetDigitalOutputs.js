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

class SetDigitalOutputsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_out_0 = null;
      this.digital_out_1 = null;
      this.digital_out_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_out_0')) {
        this.digital_out_0 = initObj.digital_out_0
      }
      else {
        this.digital_out_0 = 0;
      }
      if (initObj.hasOwnProperty('digital_out_1')) {
        this.digital_out_1 = initObj.digital_out_1
      }
      else {
        this.digital_out_1 = 0;
      }
      if (initObj.hasOwnProperty('digital_out_2')) {
        this.digital_out_2 = initObj.digital_out_2
      }
      else {
        this.digital_out_2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDigitalOutputsRequest
    // Serialize message field [digital_out_0]
    bufferOffset = _serializer.uint8(obj.digital_out_0, buffer, bufferOffset);
    // Serialize message field [digital_out_1]
    bufferOffset = _serializer.uint8(obj.digital_out_1, buffer, bufferOffset);
    // Serialize message field [digital_out_2]
    bufferOffset = _serializer.uint8(obj.digital_out_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDigitalOutputsRequest
    let len;
    let data = new SetDigitalOutputsRequest(null);
    // Deserialize message field [digital_out_0]
    data.digital_out_0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [digital_out_1]
    data.digital_out_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [digital_out_2]
    data.digital_out_2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'create_node/SetDigitalOutputsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95ef1ce60d04abfe27bea339a6261f29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 digital_out_0
    uint8 digital_out_1
    uint8 digital_out_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDigitalOutputsRequest(null);
    if (msg.digital_out_0 !== undefined) {
      resolved.digital_out_0 = msg.digital_out_0;
    }
    else {
      resolved.digital_out_0 = 0
    }

    if (msg.digital_out_1 !== undefined) {
      resolved.digital_out_1 = msg.digital_out_1;
    }
    else {
      resolved.digital_out_1 = 0
    }

    if (msg.digital_out_2 !== undefined) {
      resolved.digital_out_2 = msg.digital_out_2;
    }
    else {
      resolved.digital_out_2 = 0
    }

    return resolved;
    }
};

class SetDigitalOutputsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDigitalOutputsResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDigitalOutputsResponse
    let len;
    let data = new SetDigitalOutputsResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'create_node/SetDigitalOutputsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89bb254424e4cffedbf494e7b0ddbfea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDigitalOutputsResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetDigitalOutputsRequest,
  Response: SetDigitalOutputsResponse,
  md5sum() { return '3e43640171aa67a865fe4990d6959f42'; },
  datatype() { return 'create_node/SetDigitalOutputs'; }
};

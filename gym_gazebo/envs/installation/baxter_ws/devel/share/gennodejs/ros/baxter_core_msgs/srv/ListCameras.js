// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ListCamerasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListCamerasRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListCamerasRequest
    let len;
    let data = new ListCamerasRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'baxter_core_msgs/ListCamerasRequest';
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
    const resolved = new ListCamerasRequest(null);
    return resolved;
    }
};

class ListCamerasResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameras = null;
    }
    else {
      if (initObj.hasOwnProperty('cameras')) {
        this.cameras = initObj.cameras
      }
      else {
        this.cameras = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListCamerasResponse
    // Serialize message field [cameras]
    bufferOffset = _arraySerializer.string(obj.cameras, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListCamerasResponse
    let len;
    let data = new ListCamerasResponse(null);
    // Deserialize message field [cameras]
    data.cameras = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.cameras.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'baxter_core_msgs/ListCamerasResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '855b31192ab61744e7deb992d94db7ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[]    cameras
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListCamerasResponse(null);
    if (msg.cameras !== undefined) {
      resolved.cameras = msg.cameras;
    }
    else {
      resolved.cameras = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListCamerasRequest,
  Response: ListCamerasResponse,
  md5sum() { return '855b31192ab61744e7deb992d94db7ff'; },
  datatype() { return 'baxter_core_msgs/ListCameras'; }
};

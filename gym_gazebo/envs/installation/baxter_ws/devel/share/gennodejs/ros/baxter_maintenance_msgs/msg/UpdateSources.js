// Auto-generated. Do not edit!

// (in-package baxter_maintenance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UpdateSource = require('./UpdateSource.js');

//-----------------------------------------------------------

class UpdateSources {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
      this.sources = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('sources')) {
        this.sources = initObj.sources
      }
      else {
        this.sources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateSources
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [sources]
    // Serialize the length for message field [sources]
    bufferOffset = _serializer.uint32(obj.sources.length, buffer, bufferOffset);
    obj.sources.forEach((val) => {
      bufferOffset = UpdateSource.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateSources
    let len;
    let data = new UpdateSources(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sources]
    // Deserialize array length for message field [sources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sources[i] = UpdateSource.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uuid.length;
    object.sources.forEach((val) => {
      length += UpdateSource.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/UpdateSources';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b428bf55e80e83d378830c33b3405b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string          uuid
    UpdateSource[]  sources
    
    ================================================================================
    MSG: baxter_maintenance_msgs/UpdateSource
    string  devname
    string  filename
    string  version
    string  uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateSources(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.sources !== undefined) {
      resolved.sources = new Array(msg.sources.length);
      for (let i = 0; i < resolved.sources.length; ++i) {
        resolved.sources[i] = UpdateSource.Resolve(msg.sources[i]);
      }
    }
    else {
      resolved.sources = []
    }

    return resolved;
    }
};

module.exports = UpdateSources;

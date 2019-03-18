// Auto-generated. Do not edit!

// (in-package baxter_maintenance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UpdateSource {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.devname = null;
      this.filename = null;
      this.version = null;
      this.uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('devname')) {
        this.devname = initObj.devname
      }
      else {
        this.devname = '';
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateSource
    // Serialize message field [devname]
    bufferOffset = _serializer.string(obj.devname, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateSource
    let len;
    let data = new UpdateSource(null);
    // Deserialize message field [devname]
    data.devname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.devname.length;
    length += object.filename.length;
    length += object.version.length;
    length += object.uuid.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/UpdateSource';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88ad69e3ed4d619e167c9d83e6d9310f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UpdateSource(null);
    if (msg.devname !== undefined) {
      resolved.devname = msg.devname;
    }
    else {
      resolved.devname = ''
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    return resolved;
    }
};

module.exports = UpdateSource;

// Auto-generated. Do not edit!

// (in-package yocs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NavigationControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.status_desc = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('status_desc')) {
        this.status_desc = initObj.status_desc
      }
      else {
        this.status_desc = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationControlStatus
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [status_desc]
    bufferOffset = _serializer.string(obj.status_desc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationControlStatus
    let len;
    let data = new NavigationControlStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status_desc]
    data.status_desc = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_desc.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yocs_msgs/NavigationControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f97c2c5903b273dd04cfb815fadb9f56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Control the way point/trajectory navigation
    int8 status
    
    int8 ERROR     = -1
    int8 IDLING    = 0
    int8 RUNNING   = 1
    int8 PAUSED    = 2
    int8 COMPLETED = 3
    int8 CANCELLED = 4
    
    # Human-readable status description
    string status_desc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationControlStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.status_desc !== undefined) {
      resolved.status_desc = msg.status_desc;
    }
    else {
      resolved.status_desc = ''
    }

    return resolved;
    }
};

// Constants for message
NavigationControlStatus.Constants = {
  ERROR: -1,
  IDLING: 0,
  RUNNING: 1,
  PAUSED: 2,
  COMPLETED: 3,
  CANCELLED: 4,
}

module.exports = NavigationControlStatus;

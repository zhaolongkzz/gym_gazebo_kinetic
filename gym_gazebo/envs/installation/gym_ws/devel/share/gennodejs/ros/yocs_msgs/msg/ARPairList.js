// Auto-generated. Do not edit!

// (in-package yocs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ARPair = require('./ARPair.js');

//-----------------------------------------------------------

class ARPairList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pairs = null;
    }
    else {
      if (initObj.hasOwnProperty('pairs')) {
        this.pairs = initObj.pairs
      }
      else {
        this.pairs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ARPairList
    // Serialize message field [pairs]
    // Serialize the length for message field [pairs]
    bufferOffset = _serializer.uint32(obj.pairs.length, buffer, bufferOffset);
    obj.pairs.forEach((val) => {
      bufferOffset = ARPair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ARPairList
    let len;
    let data = new ARPairList(null);
    // Deserialize message field [pairs]
    // Deserialize array length for message field [pairs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pairs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pairs[i] = ARPair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pairs.forEach((val) => {
      length += ARPair.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yocs_msgs/ARPairList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d0cfdee6418b6b3edd41c0abc93d76f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ARPair[] pairs
    
    ================================================================================
    MSG: yocs_msgs/ARPair
    int16  left_id
    int16  right_id
    float32 baseline
    float32 target_offset
    string  target_frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ARPairList(null);
    if (msg.pairs !== undefined) {
      resolved.pairs = new Array(msg.pairs.length);
      for (let i = 0; i < resolved.pairs.length; ++i) {
        resolved.pairs[i] = ARPair.Resolve(msg.pairs[i]);
      }
    }
    else {
      resolved.pairs = []
    }

    return resolved;
    }
};

module.exports = ARPairList;

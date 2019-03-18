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

class ARPair {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_id = null;
      this.right_id = null;
      this.baseline = null;
      this.target_offset = null;
      this.target_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('left_id')) {
        this.left_id = initObj.left_id
      }
      else {
        this.left_id = 0;
      }
      if (initObj.hasOwnProperty('right_id')) {
        this.right_id = initObj.right_id
      }
      else {
        this.right_id = 0;
      }
      if (initObj.hasOwnProperty('baseline')) {
        this.baseline = initObj.baseline
      }
      else {
        this.baseline = 0.0;
      }
      if (initObj.hasOwnProperty('target_offset')) {
        this.target_offset = initObj.target_offset
      }
      else {
        this.target_offset = 0.0;
      }
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ARPair
    // Serialize message field [left_id]
    bufferOffset = _serializer.int16(obj.left_id, buffer, bufferOffset);
    // Serialize message field [right_id]
    bufferOffset = _serializer.int16(obj.right_id, buffer, bufferOffset);
    // Serialize message field [baseline]
    bufferOffset = _serializer.float32(obj.baseline, buffer, bufferOffset);
    // Serialize message field [target_offset]
    bufferOffset = _serializer.float32(obj.target_offset, buffer, bufferOffset);
    // Serialize message field [target_frame]
    bufferOffset = _serializer.string(obj.target_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ARPair
    let len;
    let data = new ARPair(null);
    // Deserialize message field [left_id]
    data.left_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_id]
    data.right_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [baseline]
    data.baseline = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_offset]
    data.target_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_frame]
    data.target_frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_frame.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yocs_msgs/ARPair';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a0e51fbcb2eab37a945707af8ee9a6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ARPair(null);
    if (msg.left_id !== undefined) {
      resolved.left_id = msg.left_id;
    }
    else {
      resolved.left_id = 0
    }

    if (msg.right_id !== undefined) {
      resolved.right_id = msg.right_id;
    }
    else {
      resolved.right_id = 0
    }

    if (msg.baseline !== undefined) {
      resolved.baseline = msg.baseline;
    }
    else {
      resolved.baseline = 0.0
    }

    if (msg.target_offset !== undefined) {
      resolved.target_offset = msg.target_offset;
    }
    else {
      resolved.target_offset = 0.0
    }

    if (msg.target_frame !== undefined) {
      resolved.target_frame = msg.target_frame;
    }
    else {
      resolved.target_frame = ''
    }

    return resolved;
    }
};

module.exports = ARPair;

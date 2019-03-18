// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HeadState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pan = null;
      this.isTurning = null;
      this.isNodding = null;
      this.isPanEnabled = null;
    }
    else {
      if (initObj.hasOwnProperty('pan')) {
        this.pan = initObj.pan
      }
      else {
        this.pan = 0.0;
      }
      if (initObj.hasOwnProperty('isTurning')) {
        this.isTurning = initObj.isTurning
      }
      else {
        this.isTurning = false;
      }
      if (initObj.hasOwnProperty('isNodding')) {
        this.isNodding = initObj.isNodding
      }
      else {
        this.isNodding = false;
      }
      if (initObj.hasOwnProperty('isPanEnabled')) {
        this.isPanEnabled = initObj.isPanEnabled
      }
      else {
        this.isPanEnabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadState
    // Serialize message field [pan]
    bufferOffset = _serializer.float32(obj.pan, buffer, bufferOffset);
    // Serialize message field [isTurning]
    bufferOffset = _serializer.bool(obj.isTurning, buffer, bufferOffset);
    // Serialize message field [isNodding]
    bufferOffset = _serializer.bool(obj.isNodding, buffer, bufferOffset);
    // Serialize message field [isPanEnabled]
    bufferOffset = _serializer.bool(obj.isPanEnabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadState
    let len;
    let data = new HeadState(null);
    // Deserialize message field [pan]
    data.pan = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isTurning]
    data.isTurning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isNodding]
    data.isNodding = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isPanEnabled]
    data.isPanEnabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/HeadState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71c43b264307205358e7e49be5601348';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pan
    bool isTurning
    bool isNodding
    bool isPanEnabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadState(null);
    if (msg.pan !== undefined) {
      resolved.pan = msg.pan;
    }
    else {
      resolved.pan = 0.0
    }

    if (msg.isTurning !== undefined) {
      resolved.isTurning = msg.isTurning;
    }
    else {
      resolved.isTurning = false
    }

    if (msg.isNodding !== undefined) {
      resolved.isNodding = msg.isNodding;
    }
    else {
      resolved.isNodding = false
    }

    if (msg.isPanEnabled !== undefined) {
      resolved.isPanEnabled = msg.isPanEnabled;
    }
    else {
      resolved.isPanEnabled = false
    }

    return resolved;
    }
};

module.exports = HeadState;

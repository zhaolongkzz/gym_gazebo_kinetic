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

class CalibrateArmData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.suppressWriteToFile = null;
    }
    else {
      if (initObj.hasOwnProperty('suppressWriteToFile')) {
        this.suppressWriteToFile = initObj.suppressWriteToFile
      }
      else {
        this.suppressWriteToFile = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrateArmData
    // Serialize message field [suppressWriteToFile]
    bufferOffset = _serializer.bool(obj.suppressWriteToFile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrateArmData
    let len;
    let data = new CalibrateArmData(null);
    // Deserialize message field [suppressWriteToFile]
    data.suppressWriteToFile = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/CalibrateArmData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba9ee949ea363f7bcfc8cc74e0bcb69d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool suppressWriteToFile
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrateArmData(null);
    if (msg.suppressWriteToFile !== undefined) {
      resolved.suppressWriteToFile = msg.suppressWriteToFile;
    }
    else {
      resolved.suppressWriteToFile = false
    }

    return resolved;
    }
};

module.exports = CalibrateArmData;

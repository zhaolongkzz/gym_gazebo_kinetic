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

class TareData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tuneGravitySpring = null;
    }
    else {
      if (initObj.hasOwnProperty('tuneGravitySpring')) {
        this.tuneGravitySpring = initObj.tuneGravitySpring
      }
      else {
        this.tuneGravitySpring = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TareData
    // Serialize message field [tuneGravitySpring]
    bufferOffset = _serializer.bool(obj.tuneGravitySpring, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TareData
    let len;
    let data = new TareData(null);
    // Deserialize message field [tuneGravitySpring]
    data.tuneGravitySpring = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/TareData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '241e9c2ceee7da9db50693da0b3f2741';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tuneGravitySpring
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TareData(null);
    if (msg.tuneGravitySpring !== undefined) {
      resolved.tuneGravitySpring = msg.tuneGravitySpring;
    }
    else {
      resolved.tuneGravitySpring = false
    }

    return resolved;
    }
};

module.exports = TareData;

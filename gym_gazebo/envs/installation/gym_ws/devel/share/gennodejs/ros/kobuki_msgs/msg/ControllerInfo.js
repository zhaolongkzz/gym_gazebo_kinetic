// Auto-generated. Do not edit!

// (in-package kobuki_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.p_gain = null;
      this.i_gain = null;
      this.d_gain = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('p_gain')) {
        this.p_gain = initObj.p_gain
      }
      else {
        this.p_gain = 0.0;
      }
      if (initObj.hasOwnProperty('i_gain')) {
        this.i_gain = initObj.i_gain
      }
      else {
        this.i_gain = 0.0;
      }
      if (initObj.hasOwnProperty('d_gain')) {
        this.d_gain = initObj.d_gain
      }
      else {
        this.d_gain = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerInfo
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [p_gain]
    bufferOffset = _serializer.float64(obj.p_gain, buffer, bufferOffset);
    // Serialize message field [i_gain]
    bufferOffset = _serializer.float64(obj.i_gain, buffer, bufferOffset);
    // Serialize message field [d_gain]
    bufferOffset = _serializer.float64(obj.d_gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerInfo
    let len;
    let data = new ControllerInfo(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [p_gain]
    data.p_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i_gain]
    data.i_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_gain]
    data.d_gain = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/ControllerInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46af38e72f0640f41ed22174d43a2550';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Controller info message, contains PID parameters
    
    uint8 DEFAULT   =  0
    uint8 USER_CONFIGURED =  1
    
    uint8 type
    float64 p_gain #should be positive
    float64 i_gain #should be positive
    float64 d_gain #should be positive
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerInfo(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.p_gain !== undefined) {
      resolved.p_gain = msg.p_gain;
    }
    else {
      resolved.p_gain = 0.0
    }

    if (msg.i_gain !== undefined) {
      resolved.i_gain = msg.i_gain;
    }
    else {
      resolved.i_gain = 0.0
    }

    if (msg.d_gain !== undefined) {
      resolved.d_gain = msg.d_gain;
    }
    else {
      resolved.d_gain = 0.0
    }

    return resolved;
    }
};

// Constants for message
ControllerInfo.Constants = {
  DEFAULT: 0,
  USER_CONFIGURED: 1,
}

module.exports = ControllerInfo;

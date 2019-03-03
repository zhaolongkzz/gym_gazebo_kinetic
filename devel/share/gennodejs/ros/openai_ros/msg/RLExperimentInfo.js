// Auto-generated. Do not edit!

// (in-package openai_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RLExperimentInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.episode_number = null;
      this.episode_reward = null;
    }
    else {
      if (initObj.hasOwnProperty('episode_number')) {
        this.episode_number = initObj.episode_number
      }
      else {
        this.episode_number = 0;
      }
      if (initObj.hasOwnProperty('episode_reward')) {
        this.episode_reward = initObj.episode_reward
      }
      else {
        this.episode_reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RLExperimentInfo
    // Serialize message field [episode_number]
    bufferOffset = _serializer.int32(obj.episode_number, buffer, bufferOffset);
    // Serialize message field [episode_reward]
    bufferOffset = _serializer.float32(obj.episode_reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RLExperimentInfo
    let len;
    let data = new RLExperimentInfo(null);
    // Deserialize message field [episode_number]
    data.episode_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [episode_reward]
    data.episode_reward = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'openai_ros/RLExperimentInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '117729220546455cc216a7df0b6e91d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 episode_number
    float32 episode_reward
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RLExperimentInfo(null);
    if (msg.episode_number !== undefined) {
      resolved.episode_number = msg.episode_number;
    }
    else {
      resolved.episode_number = 0
    }

    if (msg.episode_reward !== undefined) {
      resolved.episode_reward = msg.episode_reward;
    }
    else {
      resolved.episode_reward = 0.0
    }

    return resolved;
    }
};

module.exports = RLExperimentInfo;

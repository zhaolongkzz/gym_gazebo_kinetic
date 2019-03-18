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

class NavigationControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control = null;
      this.goal_name = null;
    }
    else {
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = 0;
      }
      if (initObj.hasOwnProperty('goal_name')) {
        this.goal_name = initObj.goal_name
      }
      else {
        this.goal_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationControl
    // Serialize message field [control]
    bufferOffset = _serializer.int8(obj.control, buffer, bufferOffset);
    // Serialize message field [goal_name]
    bufferOffset = _serializer.string(obj.goal_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationControl
    let len;
    let data = new NavigationControl(null);
    // Deserialize message field [control]
    data.control = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [goal_name]
    data.goal_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal_name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yocs_msgs/NavigationControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2ddf02b376d1d00aed5addfb5cfe0ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # control the way point/trajectory navigation
    int8 control
    
    int8 STOP  = 0
    int8 START = 1
    int8 PAUSE = 2
    
    # name of the way point(s) / trajectory to be execute
    # leave empty, when stopping or pausing
    string goal_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationControl(null);
    if (msg.control !== undefined) {
      resolved.control = msg.control;
    }
    else {
      resolved.control = 0
    }

    if (msg.goal_name !== undefined) {
      resolved.goal_name = msg.goal_name;
    }
    else {
      resolved.goal_name = ''
    }

    return resolved;
    }
};

// Constants for message
NavigationControl.Constants = {
  STOP: 0,
  START: 1,
  PAUSE: 2,
}

module.exports = NavigationControl;

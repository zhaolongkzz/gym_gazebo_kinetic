// Auto-generated. Do not edit!

// (in-package driver_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorLevels {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorLevels
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorLevels
    let len;
    let data = new SensorLevels(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'driver_base/SensorLevels';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6322637bee96d5489db6e2127c47602c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte RECONFIGURE_CLOSE = 3  # Parameters that need a sensor to be stopped completely when changed
    byte RECONFIGURE_STOP = 1  # Parameters that need a sensor to stop streaming when changed
    byte RECONFIGURE_RUNNING = 0 # Parameters that can be changed while a sensor is streaming
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorLevels(null);
    return resolved;
    }
};

// Constants for message
SensorLevels.Constants = {
  RECONFIGURE_CLOSE: 3,
  RECONFIGURE_STOP: 1,
  RECONFIGURE_RUNNING: 0,
}

module.exports = SensorLevels;

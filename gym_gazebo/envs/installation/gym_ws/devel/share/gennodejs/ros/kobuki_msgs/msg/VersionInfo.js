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

class VersionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hardware = null;
      this.firmware = null;
      this.software = null;
      this.udid = null;
      this.features = null;
    }
    else {
      if (initObj.hasOwnProperty('hardware')) {
        this.hardware = initObj.hardware
      }
      else {
        this.hardware = '';
      }
      if (initObj.hasOwnProperty('firmware')) {
        this.firmware = initObj.firmware
      }
      else {
        this.firmware = '';
      }
      if (initObj.hasOwnProperty('software')) {
        this.software = initObj.software
      }
      else {
        this.software = '';
      }
      if (initObj.hasOwnProperty('udid')) {
        this.udid = initObj.udid
      }
      else {
        this.udid = [];
      }
      if (initObj.hasOwnProperty('features')) {
        this.features = initObj.features
      }
      else {
        this.features = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionInfo
    // Serialize message field [hardware]
    bufferOffset = _serializer.string(obj.hardware, buffer, bufferOffset);
    // Serialize message field [firmware]
    bufferOffset = _serializer.string(obj.firmware, buffer, bufferOffset);
    // Serialize message field [software]
    bufferOffset = _serializer.string(obj.software, buffer, bufferOffset);
    // Serialize message field [udid]
    bufferOffset = _arraySerializer.uint32(obj.udid, buffer, bufferOffset, null);
    // Serialize message field [features]
    bufferOffset = _serializer.uint64(obj.features, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionInfo
    let len;
    let data = new VersionInfo(null);
    // Deserialize message field [hardware]
    data.hardware = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firmware]
    data.firmware = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [software]
    data.software = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [udid]
    data.udid = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [features]
    data.features = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.hardware.length;
    length += object.firmware.length;
    length += object.software.length;
    length += 4 * object.udid.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/VersionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dc0ce6edd49be1fc86730f4a4a21861';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains unique device id, version info and available features for the kobuki platform.
    # Useful for compatibility checking and introspection
    
    string hardware   # <major>.<minor>.<patch>
    string firmware   # <major>.<minor>.<patch>
    string software   # Still to decide how it will look
    uint32[] udid
    
    # Bitmask that specifies the available features in the firmware and/or driver
    uint64 features
    
    # The following represent the bit fields corresponding to bits in the features value
    
    # Provided firmware kobuki_firmware_1.1.1.hex
    uint64 SMOOTH_MOVE_START    = 0000000000000001
    uint64 GYROSCOPE_3D_DATA    = 0000000000000002
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionInfo(null);
    if (msg.hardware !== undefined) {
      resolved.hardware = msg.hardware;
    }
    else {
      resolved.hardware = ''
    }

    if (msg.firmware !== undefined) {
      resolved.firmware = msg.firmware;
    }
    else {
      resolved.firmware = ''
    }

    if (msg.software !== undefined) {
      resolved.software = msg.software;
    }
    else {
      resolved.software = ''
    }

    if (msg.udid !== undefined) {
      resolved.udid = msg.udid;
    }
    else {
      resolved.udid = []
    }

    if (msg.features !== undefined) {
      resolved.features = msg.features;
    }
    else {
      resolved.features = 0
    }

    return resolved;
    }
};

// Constants for message
VersionInfo.Constants = {
  SMOOTH_MOVE_START: 1,
  GYROSCOPE_3D_DATA: 2,
}

module.exports = VersionInfo;

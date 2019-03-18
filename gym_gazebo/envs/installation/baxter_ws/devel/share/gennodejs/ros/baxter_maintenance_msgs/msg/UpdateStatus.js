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

class UpdateStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.progress = null;
      this.long_description = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
      if (initObj.hasOwnProperty('long_description')) {
        this.long_description = initObj.long_description
      }
      else {
        this.long_description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.float32(obj.progress, buffer, bufferOffset);
    // Serialize message field [long_description]
    bufferOffset = _serializer.string(obj.long_description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateStatus
    let len;
    let data = new UpdateStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [long_description]
    data.long_description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.long_description.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/UpdateStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74e246350421569590252c39e8aa7b85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # See the class UpdateRunner()
    # status:           One-word description of the current action being performed
    # long_description: Details pertaining to status if any.  Used for verbose error messages.
    
    uint16  status
    float32 progress
    string  long_description
    
    uint16 STS_IDLE            = 0
    uint16 STS_INVALID         = 1
    uint16 STS_BUSY            = 2
    uint16 STS_CANCELLED       = 3
    uint16 STS_ERR             = 4
    uint16 STS_MOUNT_UPDATE    = 5
    uint16 STS_VERIFY_UPDATE   = 6
    uint16 STS_PREP_STAGING    = 7
    uint16 STS_MOUNT_STAGING   = 8
    uint16 STS_EXTRACT_UPDATE  = 9
    uint16 STS_LOAD_KEXEC      = 10
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    if (msg.long_description !== undefined) {
      resolved.long_description = msg.long_description;
    }
    else {
      resolved.long_description = ''
    }

    return resolved;
    }
};

// Constants for message
UpdateStatus.Constants = {
  STS_IDLE: 0,
  STS_INVALID: 1,
  STS_BUSY: 2,
  STS_CANCELLED: 3,
  STS_ERR: 4,
  STS_MOUNT_UPDATE: 5,
  STS_VERIFY_UPDATE: 6,
  STS_PREP_STAGING: 7,
  STS_MOUNT_STAGING: 8,
  STS_EXTRACT_UPDATE: 9,
  STS_LOAD_KEXEC: 10,
}

module.exports = UpdateStatus;

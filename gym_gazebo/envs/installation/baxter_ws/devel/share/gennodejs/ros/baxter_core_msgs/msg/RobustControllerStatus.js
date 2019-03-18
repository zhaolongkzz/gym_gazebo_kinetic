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

class RobustControllerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isEnabled = null;
      this.complete = null;
      this.controlUid = null;
      this.timedOut = null;
      this.errorCodes = null;
      this.labels = null;
    }
    else {
      if (initObj.hasOwnProperty('isEnabled')) {
        this.isEnabled = initObj.isEnabled
      }
      else {
        this.isEnabled = false;
      }
      if (initObj.hasOwnProperty('complete')) {
        this.complete = initObj.complete
      }
      else {
        this.complete = 0;
      }
      if (initObj.hasOwnProperty('controlUid')) {
        this.controlUid = initObj.controlUid
      }
      else {
        this.controlUid = '';
      }
      if (initObj.hasOwnProperty('timedOut')) {
        this.timedOut = initObj.timedOut
      }
      else {
        this.timedOut = false;
      }
      if (initObj.hasOwnProperty('errorCodes')) {
        this.errorCodes = initObj.errorCodes
      }
      else {
        this.errorCodes = [];
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobustControllerStatus
    // Serialize message field [isEnabled]
    bufferOffset = _serializer.bool(obj.isEnabled, buffer, bufferOffset);
    // Serialize message field [complete]
    bufferOffset = _serializer.int32(obj.complete, buffer, bufferOffset);
    // Serialize message field [controlUid]
    bufferOffset = _serializer.string(obj.controlUid, buffer, bufferOffset);
    // Serialize message field [timedOut]
    bufferOffset = _serializer.bool(obj.timedOut, buffer, bufferOffset);
    // Serialize message field [errorCodes]
    bufferOffset = _arraySerializer.string(obj.errorCodes, buffer, bufferOffset, null);
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.string(obj.labels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobustControllerStatus
    let len;
    let data = new RobustControllerStatus(null);
    // Deserialize message field [isEnabled]
    data.isEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [complete]
    data.complete = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [controlUid]
    data.controlUid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timedOut]
    data.timedOut = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [errorCodes]
    data.errorCodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.controlUid.length;
    object.errorCodes.forEach((val) => {
      length += 4 + val.length;
    });
    object.labels.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/RobustControllerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f15441b7285d915e7e59d3618e173f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True if the RC is enabled and running, false if not.
    bool isEnabled
    
    # The state of the RC with respect to its completion goal.  One of
    # NOT_COMPLETE, COMPLETE_W_FAILURE, or COMPLETE_W_SUCCESS
    int32 complete
    int32 NOT_COMPLETE = 0
    int32 COMPLETE_W_FAILURE = 1
    int32 COMPLETE_W_SUCCESS = 2
    
    # Identifies the sender of the Enable message that the RC is using for its
    # commands.  This should correspond to the "uid" field of a recently published
    # RC *Enable message.
    string controlUid
    
    # Set to true when the RC self-disables as a result of too much time elapsing
    # without receiving an Enable message.
    bool timedOut
    
    # A list of relevant error codes.  Error codes are defined by the individual
    # robust controllers, consult a robust controller's documentation to see what
    # error codes it generates.
    string[] errorCodes
    
    # A list of current labels for the RC's current state. For example, "fastapproach",
    # "slowapproach", etc. Used primarily for the blended RCs, other RCs can leave this
    # blank. This will probably contains just one label, but it could contain multiple labels
    # in the future.
    string[] labels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobustControllerStatus(null);
    if (msg.isEnabled !== undefined) {
      resolved.isEnabled = msg.isEnabled;
    }
    else {
      resolved.isEnabled = false
    }

    if (msg.complete !== undefined) {
      resolved.complete = msg.complete;
    }
    else {
      resolved.complete = 0
    }

    if (msg.controlUid !== undefined) {
      resolved.controlUid = msg.controlUid;
    }
    else {
      resolved.controlUid = ''
    }

    if (msg.timedOut !== undefined) {
      resolved.timedOut = msg.timedOut;
    }
    else {
      resolved.timedOut = false
    }

    if (msg.errorCodes !== undefined) {
      resolved.errorCodes = msg.errorCodes;
    }
    else {
      resolved.errorCodes = []
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    return resolved;
    }
};

// Constants for message
RobustControllerStatus.Constants = {
  NOT_COMPLETE: 0,
  COMPLETE_W_FAILURE: 1,
  COMPLETE_W_SUCCESS: 2,
}

module.exports = RobustControllerStatus;

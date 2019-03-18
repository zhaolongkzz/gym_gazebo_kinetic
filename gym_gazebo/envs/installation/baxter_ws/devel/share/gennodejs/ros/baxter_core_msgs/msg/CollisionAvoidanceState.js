// Auto-generated. Do not edit!

// (in-package baxter_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CollisionAvoidanceState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.other_arm = null;
      this.collision_object = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('other_arm')) {
        this.other_arm = initObj.other_arm
      }
      else {
        this.other_arm = false;
      }
      if (initObj.hasOwnProperty('collision_object')) {
        this.collision_object = initObj.collision_object
      }
      else {
        this.collision_object = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionAvoidanceState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [other_arm]
    bufferOffset = _serializer.bool(obj.other_arm, buffer, bufferOffset);
    // Serialize message field [collision_object]
    bufferOffset = _arraySerializer.string(obj.collision_object, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionAvoidanceState
    let len;
    let data = new CollisionAvoidanceState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [other_arm]
    data.other_arm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_object]
    data.collision_object = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.collision_object.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/CollisionAvoidanceState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30f5cb8ae019f1ffe8b599e6d2e589c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool other_arm
    string[] collision_object
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionAvoidanceState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.other_arm !== undefined) {
      resolved.other_arm = msg.other_arm;
    }
    else {
      resolved.other_arm = false
    }

    if (msg.collision_object !== undefined) {
      resolved.collision_object = msg.collision_object;
    }
    else {
      resolved.collision_object = []
    }

    return resolved;
    }
};

module.exports = CollisionAvoidanceState;

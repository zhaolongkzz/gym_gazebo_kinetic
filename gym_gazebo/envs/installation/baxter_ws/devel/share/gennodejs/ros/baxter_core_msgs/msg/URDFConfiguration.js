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

class URDFConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.link = null;
      this.joint = null;
      this.urdf = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('link')) {
        this.link = initObj.link
      }
      else {
        this.link = '';
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('urdf')) {
        this.urdf = initObj.urdf
      }
      else {
        this.urdf = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type URDFConfiguration
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [link]
    bufferOffset = _serializer.string(obj.link, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [urdf]
    bufferOffset = _serializer.string(obj.urdf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type URDFConfiguration
    let len;
    let data = new URDFConfiguration(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [link]
    data.link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [urdf]
    data.urdf = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link.length;
    length += object.joint.length;
    length += object.urdf.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/URDFConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c7028d878027820eed2aa0cbf1f5e4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## URDF Configuration
    time time      # time the message was created, serves as a sequence number
                   # time should be changed only when the content changes.
    string link    # parent link name
    string joint   # joint to configure
                   # link + joint + time uniquely identifies a configuration.
    string urdf    # XML or JSON-encoded URDF data.  This should be a URDF fragment
                   # describing the entire subtree for the given joint attached
                   # to the given parent link. If this field is empty the joint
                   # is removed from the parent link.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new URDFConfiguration(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.link !== undefined) {
      resolved.link = msg.link;
    }
    else {
      resolved.link = ''
    }

    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.urdf !== undefined) {
      resolved.urdf = msg.urdf;
    }
    else {
      resolved.urdf = ''
    }

    return resolved;
    }
};

module.exports = URDFConfiguration;

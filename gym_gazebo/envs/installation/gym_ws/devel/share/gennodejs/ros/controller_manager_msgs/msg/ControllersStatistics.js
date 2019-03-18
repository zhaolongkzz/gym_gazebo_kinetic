// Auto-generated. Do not edit!

// (in-package controller_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllerStatistics = require('./ControllerStatistics.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControllersStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.controller = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllersStatistics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [controller]
    // Serialize the length for message field [controller]
    bufferOffset = _serializer.uint32(obj.controller.length, buffer, bufferOffset);
    obj.controller.forEach((val) => {
      bufferOffset = ControllerStatistics.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllersStatistics
    let len;
    let data = new ControllersStatistics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller]
    // Deserialize array length for message field [controller]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controller = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controller[i] = ControllerStatistics.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.controller.forEach((val) => {
      length += ControllerStatistics.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_manager_msgs/ControllersStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a154c347736773e3700d1719105df29d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    controller_manager_msgs/ControllerStatistics[] controller
    
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
    
    ================================================================================
    MSG: controller_manager_msgs/ControllerStatistics
    # This message contains the state of one realtime controller
    # that was spawned in the controller manager
    
    # the name of the controller
    string name
    
    # the type of the controller
    string type
    
    # the time at which these controller statistics were measured
    time timestamp
    
    # bool that indicates if the controller is currently
    # in a running or a stopped state
    bool running
    
    # the maximum time the update loop of the controller ever needed to complete
    duration max_time
    
    # the average time the update loop of the controller needs to complete.
    # the average is computed in a sliding time window.
    duration mean_time
    
    # the variance on the time the update loop of the controller needs to complete.
    # the variance applies to a sliding time window.
    duration variance_time
    
    # the number of times this controller broke the realtime loop
    int32 num_control_loop_overruns
    
    # the timestamp of the last time this controller broke the realtime loop
    time time_last_control_loop_overrun
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllersStatistics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.controller !== undefined) {
      resolved.controller = new Array(msg.controller.length);
      for (let i = 0; i < resolved.controller.length; ++i) {
        resolved.controller[i] = ControllerStatistics.Resolve(msg.controller[i]);
      }
    }
    else {
      resolved.controller = []
    }

    return resolved;
    }
};

module.exports = ControllersStatistics;

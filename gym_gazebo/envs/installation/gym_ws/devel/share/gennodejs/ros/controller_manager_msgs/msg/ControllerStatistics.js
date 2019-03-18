// Auto-generated. Do not edit!

// (in-package controller_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.timestamp = null;
      this.running = null;
      this.max_time = null;
      this.mean_time = null;
      this.variance_time = null;
      this.num_control_loop_overruns = null;
      this.time_last_control_loop_overrun = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
      if (initObj.hasOwnProperty('max_time')) {
        this.max_time = initObj.max_time
      }
      else {
        this.max_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('mean_time')) {
        this.mean_time = initObj.mean_time
      }
      else {
        this.mean_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('variance_time')) {
        this.variance_time = initObj.variance_time
      }
      else {
        this.variance_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('num_control_loop_overruns')) {
        this.num_control_loop_overruns = initObj.num_control_loop_overruns
      }
      else {
        this.num_control_loop_overruns = 0;
      }
      if (initObj.hasOwnProperty('time_last_control_loop_overrun')) {
        this.time_last_control_loop_overrun = initObj.time_last_control_loop_overrun
      }
      else {
        this.time_last_control_loop_overrun = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerStatistics
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    // Serialize message field [max_time]
    bufferOffset = _serializer.duration(obj.max_time, buffer, bufferOffset);
    // Serialize message field [mean_time]
    bufferOffset = _serializer.duration(obj.mean_time, buffer, bufferOffset);
    // Serialize message field [variance_time]
    bufferOffset = _serializer.duration(obj.variance_time, buffer, bufferOffset);
    // Serialize message field [num_control_loop_overruns]
    bufferOffset = _serializer.int32(obj.num_control_loop_overruns, buffer, bufferOffset);
    // Serialize message field [time_last_control_loop_overrun]
    bufferOffset = _serializer.time(obj.time_last_control_loop_overrun, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerStatistics
    let len;
    let data = new ControllerStatistics(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_time]
    data.max_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [mean_time]
    data.mean_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [variance_time]
    data.variance_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [num_control_loop_overruns]
    data.num_control_loop_overruns = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_last_control_loop_overrun]
    data.time_last_control_loop_overrun = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller_manager_msgs/ControllerStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '697780c372c8d8597a1436d0e2ad3ba8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ControllerStatistics(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    if (msg.max_time !== undefined) {
      resolved.max_time = msg.max_time;
    }
    else {
      resolved.max_time = {secs: 0, nsecs: 0}
    }

    if (msg.mean_time !== undefined) {
      resolved.mean_time = msg.mean_time;
    }
    else {
      resolved.mean_time = {secs: 0, nsecs: 0}
    }

    if (msg.variance_time !== undefined) {
      resolved.variance_time = msg.variance_time;
    }
    else {
      resolved.variance_time = {secs: 0, nsecs: 0}
    }

    if (msg.num_control_loop_overruns !== undefined) {
      resolved.num_control_loop_overruns = msg.num_control_loop_overruns;
    }
    else {
      resolved.num_control_loop_overruns = 0
    }

    if (msg.time_last_control_loop_overrun !== undefined) {
      resolved.time_last_control_loop_overrun = msg.time_last_control_loop_overrun;
    }
    else {
      resolved.time_last_control_loop_overrun = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ControllerStatistics;

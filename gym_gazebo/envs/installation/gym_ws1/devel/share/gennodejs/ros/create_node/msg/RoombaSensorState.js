// Auto-generated. Do not edit!

// (in-package create_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoombaSensorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bumps_wheeldrops = null;
      this.wall = null;
      this.cliff_left = null;
      this.cliff_front_left = null;
      this.cliff_front_right = null;
      this.cliff_right = null;
      this.virtual_wall = null;
      this.motor_overcurrents = null;
      this.dirt_detector_left = null;
      this.dirt_detector_right = null;
      this.remote_opcode = null;
      this.buttons = null;
      this.distance = null;
      this.angle = null;
      this.charging_state = null;
      this.voltage = null;
      this.current = null;
      this.temperature = null;
      this.charge = null;
      this.capacity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bumps_wheeldrops')) {
        this.bumps_wheeldrops = initObj.bumps_wheeldrops
      }
      else {
        this.bumps_wheeldrops = 0;
      }
      if (initObj.hasOwnProperty('wall')) {
        this.wall = initObj.wall
      }
      else {
        this.wall = false;
      }
      if (initObj.hasOwnProperty('cliff_left')) {
        this.cliff_left = initObj.cliff_left
      }
      else {
        this.cliff_left = false;
      }
      if (initObj.hasOwnProperty('cliff_front_left')) {
        this.cliff_front_left = initObj.cliff_front_left
      }
      else {
        this.cliff_front_left = false;
      }
      if (initObj.hasOwnProperty('cliff_front_right')) {
        this.cliff_front_right = initObj.cliff_front_right
      }
      else {
        this.cliff_front_right = false;
      }
      if (initObj.hasOwnProperty('cliff_right')) {
        this.cliff_right = initObj.cliff_right
      }
      else {
        this.cliff_right = false;
      }
      if (initObj.hasOwnProperty('virtual_wall')) {
        this.virtual_wall = initObj.virtual_wall
      }
      else {
        this.virtual_wall = false;
      }
      if (initObj.hasOwnProperty('motor_overcurrents')) {
        this.motor_overcurrents = initObj.motor_overcurrents
      }
      else {
        this.motor_overcurrents = 0;
      }
      if (initObj.hasOwnProperty('dirt_detector_left')) {
        this.dirt_detector_left = initObj.dirt_detector_left
      }
      else {
        this.dirt_detector_left = 0;
      }
      if (initObj.hasOwnProperty('dirt_detector_right')) {
        this.dirt_detector_right = initObj.dirt_detector_right
      }
      else {
        this.dirt_detector_right = 0;
      }
      if (initObj.hasOwnProperty('remote_opcode')) {
        this.remote_opcode = initObj.remote_opcode
      }
      else {
        this.remote_opcode = 0;
      }
      if (initObj.hasOwnProperty('buttons')) {
        this.buttons = initObj.buttons
      }
      else {
        this.buttons = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0;
      }
      if (initObj.hasOwnProperty('charging_state')) {
        this.charging_state = initObj.charging_state
      }
      else {
        this.charging_state = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = 0;
      }
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoombaSensorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bumps_wheeldrops]
    bufferOffset = _serializer.uint8(obj.bumps_wheeldrops, buffer, bufferOffset);
    // Serialize message field [wall]
    bufferOffset = _serializer.bool(obj.wall, buffer, bufferOffset);
    // Serialize message field [cliff_left]
    bufferOffset = _serializer.bool(obj.cliff_left, buffer, bufferOffset);
    // Serialize message field [cliff_front_left]
    bufferOffset = _serializer.bool(obj.cliff_front_left, buffer, bufferOffset);
    // Serialize message field [cliff_front_right]
    bufferOffset = _serializer.bool(obj.cliff_front_right, buffer, bufferOffset);
    // Serialize message field [cliff_right]
    bufferOffset = _serializer.bool(obj.cliff_right, buffer, bufferOffset);
    // Serialize message field [virtual_wall]
    bufferOffset = _serializer.bool(obj.virtual_wall, buffer, bufferOffset);
    // Serialize message field [motor_overcurrents]
    bufferOffset = _serializer.uint8(obj.motor_overcurrents, buffer, bufferOffset);
    // Serialize message field [dirt_detector_left]
    bufferOffset = _serializer.uint8(obj.dirt_detector_left, buffer, bufferOffset);
    // Serialize message field [dirt_detector_right]
    bufferOffset = _serializer.uint8(obj.dirt_detector_right, buffer, bufferOffset);
    // Serialize message field [remote_opcode]
    bufferOffset = _serializer.uint8(obj.remote_opcode, buffer, bufferOffset);
    // Serialize message field [buttons]
    bufferOffset = _serializer.uint8(obj.buttons, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.int16(obj.distance, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.int16(obj.angle, buffer, bufferOffset);
    // Serialize message field [charging_state]
    bufferOffset = _serializer.uint8(obj.charging_state, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.uint16(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int8(obj.temperature, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = _serializer.uint16(obj.charge, buffer, bufferOffset);
    // Serialize message field [capacity]
    bufferOffset = _serializer.uint16(obj.capacity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoombaSensorState
    let len;
    let data = new RoombaSensorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bumps_wheeldrops]
    data.bumps_wheeldrops = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wall]
    data.wall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_left]
    data.cliff_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_front_left]
    data.cliff_front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_front_right]
    data.cliff_front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_right]
    data.cliff_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [virtual_wall]
    data.virtual_wall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_overcurrents]
    data.motor_overcurrents = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dirt_detector_left]
    data.dirt_detector_left = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dirt_detector_right]
    data.dirt_detector_right = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remote_opcode]
    data.remote_opcode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [buttons]
    data.buttons = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [charging_state]
    data.charging_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'create_node/RoombaSensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e8632c0937537603a670e96e85cd991';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 CHARGING_NOT_CHARGING = 0
    uint8 CHARGING_CHARGING_RECOVERY = 1
    uint8 CHARGING_CHARGING = 2
    uint8 CHARGING_TRICKLE_CHARGING = 3
    uint8 CHARGING_WAITING = 4 
    uint8 CHARGING_CHARGING_ERROR = 5
    
    uint8 bumps_wheeldrops
    bool wall
    bool cliff_left
    bool cliff_front_left
    bool cliff_front_right
    bool cliff_right
    bool virtual_wall
    uint8 motor_overcurrents
    uint8 dirt_detector_left  #roomba_only
    uint8 dirt_detector_right #roomba_only
    uint8 remote_opcode
    uint8 buttons
    int16 distance  # mm
    int16 angle # degrees
    uint8 charging_state
    uint16 voltage  # mV
    int16 current  # mA
    int8 temperature  # C
    uint16 charge  # mAh
    uint16 capacity  # mAh
    
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
    const resolved = new RoombaSensorState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bumps_wheeldrops !== undefined) {
      resolved.bumps_wheeldrops = msg.bumps_wheeldrops;
    }
    else {
      resolved.bumps_wheeldrops = 0
    }

    if (msg.wall !== undefined) {
      resolved.wall = msg.wall;
    }
    else {
      resolved.wall = false
    }

    if (msg.cliff_left !== undefined) {
      resolved.cliff_left = msg.cliff_left;
    }
    else {
      resolved.cliff_left = false
    }

    if (msg.cliff_front_left !== undefined) {
      resolved.cliff_front_left = msg.cliff_front_left;
    }
    else {
      resolved.cliff_front_left = false
    }

    if (msg.cliff_front_right !== undefined) {
      resolved.cliff_front_right = msg.cliff_front_right;
    }
    else {
      resolved.cliff_front_right = false
    }

    if (msg.cliff_right !== undefined) {
      resolved.cliff_right = msg.cliff_right;
    }
    else {
      resolved.cliff_right = false
    }

    if (msg.virtual_wall !== undefined) {
      resolved.virtual_wall = msg.virtual_wall;
    }
    else {
      resolved.virtual_wall = false
    }

    if (msg.motor_overcurrents !== undefined) {
      resolved.motor_overcurrents = msg.motor_overcurrents;
    }
    else {
      resolved.motor_overcurrents = 0
    }

    if (msg.dirt_detector_left !== undefined) {
      resolved.dirt_detector_left = msg.dirt_detector_left;
    }
    else {
      resolved.dirt_detector_left = 0
    }

    if (msg.dirt_detector_right !== undefined) {
      resolved.dirt_detector_right = msg.dirt_detector_right;
    }
    else {
      resolved.dirt_detector_right = 0
    }

    if (msg.remote_opcode !== undefined) {
      resolved.remote_opcode = msg.remote_opcode;
    }
    else {
      resolved.remote_opcode = 0
    }

    if (msg.buttons !== undefined) {
      resolved.buttons = msg.buttons;
    }
    else {
      resolved.buttons = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0
    }

    if (msg.charging_state !== undefined) {
      resolved.charging_state = msg.charging_state;
    }
    else {
      resolved.charging_state = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.charge !== undefined) {
      resolved.charge = msg.charge;
    }
    else {
      resolved.charge = 0
    }

    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0
    }

    return resolved;
    }
};

// Constants for message
RoombaSensorState.Constants = {
  CHARGING_NOT_CHARGING: 0,
  CHARGING_CHARGING_RECOVERY: 1,
  CHARGING_CHARGING: 2,
  CHARGING_TRICKLE_CHARGING: 3,
  CHARGING_WAITING: 4,
  CHARGING_CHARGING_ERROR: 5,
}

module.exports = RoombaSensorState;

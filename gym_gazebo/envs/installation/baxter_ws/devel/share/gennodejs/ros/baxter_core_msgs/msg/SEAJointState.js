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

class SEAJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.commanded_position = null;
      this.commanded_velocity = null;
      this.commanded_acceleration = null;
      this.commanded_effort = null;
      this.actual_position = null;
      this.actual_velocity = null;
      this.actual_effort = null;
      this.gravity_model_effort = null;
      this.gravity_only = null;
      this.hysteresis_model_effort = null;
      this.crosstalk_model_effort = null;
      this.hystState = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('commanded_position')) {
        this.commanded_position = initObj.commanded_position
      }
      else {
        this.commanded_position = [];
      }
      if (initObj.hasOwnProperty('commanded_velocity')) {
        this.commanded_velocity = initObj.commanded_velocity
      }
      else {
        this.commanded_velocity = [];
      }
      if (initObj.hasOwnProperty('commanded_acceleration')) {
        this.commanded_acceleration = initObj.commanded_acceleration
      }
      else {
        this.commanded_acceleration = [];
      }
      if (initObj.hasOwnProperty('commanded_effort')) {
        this.commanded_effort = initObj.commanded_effort
      }
      else {
        this.commanded_effort = [];
      }
      if (initObj.hasOwnProperty('actual_position')) {
        this.actual_position = initObj.actual_position
      }
      else {
        this.actual_position = [];
      }
      if (initObj.hasOwnProperty('actual_velocity')) {
        this.actual_velocity = initObj.actual_velocity
      }
      else {
        this.actual_velocity = [];
      }
      if (initObj.hasOwnProperty('actual_effort')) {
        this.actual_effort = initObj.actual_effort
      }
      else {
        this.actual_effort = [];
      }
      if (initObj.hasOwnProperty('gravity_model_effort')) {
        this.gravity_model_effort = initObj.gravity_model_effort
      }
      else {
        this.gravity_model_effort = [];
      }
      if (initObj.hasOwnProperty('gravity_only')) {
        this.gravity_only = initObj.gravity_only
      }
      else {
        this.gravity_only = [];
      }
      if (initObj.hasOwnProperty('hysteresis_model_effort')) {
        this.hysteresis_model_effort = initObj.hysteresis_model_effort
      }
      else {
        this.hysteresis_model_effort = [];
      }
      if (initObj.hasOwnProperty('crosstalk_model_effort')) {
        this.crosstalk_model_effort = initObj.crosstalk_model_effort
      }
      else {
        this.crosstalk_model_effort = [];
      }
      if (initObj.hasOwnProperty('hystState')) {
        this.hystState = initObj.hystState
      }
      else {
        this.hystState = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SEAJointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [commanded_position]
    bufferOffset = _arraySerializer.float64(obj.commanded_position, buffer, bufferOffset, null);
    // Serialize message field [commanded_velocity]
    bufferOffset = _arraySerializer.float64(obj.commanded_velocity, buffer, bufferOffset, null);
    // Serialize message field [commanded_acceleration]
    bufferOffset = _arraySerializer.float64(obj.commanded_acceleration, buffer, bufferOffset, null);
    // Serialize message field [commanded_effort]
    bufferOffset = _arraySerializer.float64(obj.commanded_effort, buffer, bufferOffset, null);
    // Serialize message field [actual_position]
    bufferOffset = _arraySerializer.float64(obj.actual_position, buffer, bufferOffset, null);
    // Serialize message field [actual_velocity]
    bufferOffset = _arraySerializer.float64(obj.actual_velocity, buffer, bufferOffset, null);
    // Serialize message field [actual_effort]
    bufferOffset = _arraySerializer.float64(obj.actual_effort, buffer, bufferOffset, null);
    // Serialize message field [gravity_model_effort]
    bufferOffset = _arraySerializer.float64(obj.gravity_model_effort, buffer, bufferOffset, null);
    // Serialize message field [gravity_only]
    bufferOffset = _arraySerializer.float64(obj.gravity_only, buffer, bufferOffset, null);
    // Serialize message field [hysteresis_model_effort]
    bufferOffset = _arraySerializer.float64(obj.hysteresis_model_effort, buffer, bufferOffset, null);
    // Serialize message field [crosstalk_model_effort]
    bufferOffset = _arraySerializer.float64(obj.crosstalk_model_effort, buffer, bufferOffset, null);
    // Serialize message field [hystState]
    bufferOffset = _serializer.float64(obj.hystState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SEAJointState
    let len;
    let data = new SEAJointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [commanded_position]
    data.commanded_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [commanded_velocity]
    data.commanded_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [commanded_acceleration]
    data.commanded_acceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [commanded_effort]
    data.commanded_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [actual_position]
    data.actual_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [actual_velocity]
    data.actual_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [actual_effort]
    data.actual_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [gravity_model_effort]
    data.gravity_model_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [gravity_only]
    data.gravity_only = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [hysteresis_model_effort]
    data.hysteresis_model_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [crosstalk_model_effort]
    data.crosstalk_model_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [hystState]
    data.hystState = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.commanded_position.length;
    length += 8 * object.commanded_velocity.length;
    length += 8 * object.commanded_acceleration.length;
    length += 8 * object.commanded_effort.length;
    length += 8 * object.actual_position.length;
    length += 8 * object.actual_velocity.length;
    length += 8 * object.actual_effort.length;
    length += 8 * object.gravity_model_effort.length;
    length += 8 * object.gravity_only.length;
    length += 8 * object.hysteresis_model_effort.length;
    length += 8 * object.crosstalk_model_effort.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/SEAJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd36406dcbb6d860b1b39c4e28f81352b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message that holds data to describe the state of a set of torque controlled joints.
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state.
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty.
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[]  name
    float64[] commanded_position
    float64[] commanded_velocity
    float64[] commanded_acceleration
    float64[] commanded_effort
    float64[] actual_position
    float64[] actual_velocity
    float64[] actual_effort
    # This includes the inertial feed forward torques when applicable.
    float64[] gravity_model_effort
    # This is the torque required to hold the arm against gravity returned by KDL
    # if the arm was stationary.  This does not include inertial feed forward
    # torques (even when we have them) or any of the corrections (i.e. spring
    # hysteresis, crosstalk, etc) we make to the KDL model.
    float64[] gravity_only
    float64[] hysteresis_model_effort
    float64[] crosstalk_model_effort
    float64   hystState
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
    const resolved = new SEAJointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.commanded_position !== undefined) {
      resolved.commanded_position = msg.commanded_position;
    }
    else {
      resolved.commanded_position = []
    }

    if (msg.commanded_velocity !== undefined) {
      resolved.commanded_velocity = msg.commanded_velocity;
    }
    else {
      resolved.commanded_velocity = []
    }

    if (msg.commanded_acceleration !== undefined) {
      resolved.commanded_acceleration = msg.commanded_acceleration;
    }
    else {
      resolved.commanded_acceleration = []
    }

    if (msg.commanded_effort !== undefined) {
      resolved.commanded_effort = msg.commanded_effort;
    }
    else {
      resolved.commanded_effort = []
    }

    if (msg.actual_position !== undefined) {
      resolved.actual_position = msg.actual_position;
    }
    else {
      resolved.actual_position = []
    }

    if (msg.actual_velocity !== undefined) {
      resolved.actual_velocity = msg.actual_velocity;
    }
    else {
      resolved.actual_velocity = []
    }

    if (msg.actual_effort !== undefined) {
      resolved.actual_effort = msg.actual_effort;
    }
    else {
      resolved.actual_effort = []
    }

    if (msg.gravity_model_effort !== undefined) {
      resolved.gravity_model_effort = msg.gravity_model_effort;
    }
    else {
      resolved.gravity_model_effort = []
    }

    if (msg.gravity_only !== undefined) {
      resolved.gravity_only = msg.gravity_only;
    }
    else {
      resolved.gravity_only = []
    }

    if (msg.hysteresis_model_effort !== undefined) {
      resolved.hysteresis_model_effort = msg.hysteresis_model_effort;
    }
    else {
      resolved.hysteresis_model_effort = []
    }

    if (msg.crosstalk_model_effort !== undefined) {
      resolved.crosstalk_model_effort = msg.crosstalk_model_effort;
    }
    else {
      resolved.crosstalk_model_effort = []
    }

    if (msg.hystState !== undefined) {
      resolved.hystState = msg.hystState;
    }
    else {
      resolved.hystState = 0.0
    }

    return resolved;
    }
};

module.exports = SEAJointState;

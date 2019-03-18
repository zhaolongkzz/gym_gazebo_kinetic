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

class RawTurtlebotSensorState {
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
      this.wall_signal = null;
      this.cliff_left_signal = null;
      this.cliff_front_left_signal = null;
      this.cliff_front_right_signal = null;
      this.cliff_right_signal = null;
      this.user_digital_inputs = null;
      this.user_analog_input = null;
      this.charging_sources_available = null;
      this.oi_mode = null;
      this.song_number = null;
      this.song_playing = null;
      this.number_of_stream_packets = null;
      this.requested_velocity = null;
      this.requested_radius = null;
      this.requested_right_velocity = null;
      this.requested_left_velocity = null;
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
      if (initObj.hasOwnProperty('wall_signal')) {
        this.wall_signal = initObj.wall_signal
      }
      else {
        this.wall_signal = 0;
      }
      if (initObj.hasOwnProperty('cliff_left_signal')) {
        this.cliff_left_signal = initObj.cliff_left_signal
      }
      else {
        this.cliff_left_signal = 0;
      }
      if (initObj.hasOwnProperty('cliff_front_left_signal')) {
        this.cliff_front_left_signal = initObj.cliff_front_left_signal
      }
      else {
        this.cliff_front_left_signal = 0;
      }
      if (initObj.hasOwnProperty('cliff_front_right_signal')) {
        this.cliff_front_right_signal = initObj.cliff_front_right_signal
      }
      else {
        this.cliff_front_right_signal = 0;
      }
      if (initObj.hasOwnProperty('cliff_right_signal')) {
        this.cliff_right_signal = initObj.cliff_right_signal
      }
      else {
        this.cliff_right_signal = 0;
      }
      if (initObj.hasOwnProperty('user_digital_inputs')) {
        this.user_digital_inputs = initObj.user_digital_inputs
      }
      else {
        this.user_digital_inputs = 0;
      }
      if (initObj.hasOwnProperty('user_analog_input')) {
        this.user_analog_input = initObj.user_analog_input
      }
      else {
        this.user_analog_input = 0;
      }
      if (initObj.hasOwnProperty('charging_sources_available')) {
        this.charging_sources_available = initObj.charging_sources_available
      }
      else {
        this.charging_sources_available = 0;
      }
      if (initObj.hasOwnProperty('oi_mode')) {
        this.oi_mode = initObj.oi_mode
      }
      else {
        this.oi_mode = 0;
      }
      if (initObj.hasOwnProperty('song_number')) {
        this.song_number = initObj.song_number
      }
      else {
        this.song_number = 0;
      }
      if (initObj.hasOwnProperty('song_playing')) {
        this.song_playing = initObj.song_playing
      }
      else {
        this.song_playing = false;
      }
      if (initObj.hasOwnProperty('number_of_stream_packets')) {
        this.number_of_stream_packets = initObj.number_of_stream_packets
      }
      else {
        this.number_of_stream_packets = 0;
      }
      if (initObj.hasOwnProperty('requested_velocity')) {
        this.requested_velocity = initObj.requested_velocity
      }
      else {
        this.requested_velocity = 0;
      }
      if (initObj.hasOwnProperty('requested_radius')) {
        this.requested_radius = initObj.requested_radius
      }
      else {
        this.requested_radius = 0;
      }
      if (initObj.hasOwnProperty('requested_right_velocity')) {
        this.requested_right_velocity = initObj.requested_right_velocity
      }
      else {
        this.requested_right_velocity = 0;
      }
      if (initObj.hasOwnProperty('requested_left_velocity')) {
        this.requested_left_velocity = initObj.requested_left_velocity
      }
      else {
        this.requested_left_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawTurtlebotSensorState
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
    // Serialize message field [wall_signal]
    bufferOffset = _serializer.uint16(obj.wall_signal, buffer, bufferOffset);
    // Serialize message field [cliff_left_signal]
    bufferOffset = _serializer.uint16(obj.cliff_left_signal, buffer, bufferOffset);
    // Serialize message field [cliff_front_left_signal]
    bufferOffset = _serializer.uint16(obj.cliff_front_left_signal, buffer, bufferOffset);
    // Serialize message field [cliff_front_right_signal]
    bufferOffset = _serializer.uint16(obj.cliff_front_right_signal, buffer, bufferOffset);
    // Serialize message field [cliff_right_signal]
    bufferOffset = _serializer.uint16(obj.cliff_right_signal, buffer, bufferOffset);
    // Serialize message field [user_digital_inputs]
    bufferOffset = _serializer.uint8(obj.user_digital_inputs, buffer, bufferOffset);
    // Serialize message field [user_analog_input]
    bufferOffset = _serializer.uint16(obj.user_analog_input, buffer, bufferOffset);
    // Serialize message field [charging_sources_available]
    bufferOffset = _serializer.uint8(obj.charging_sources_available, buffer, bufferOffset);
    // Serialize message field [oi_mode]
    bufferOffset = _serializer.uint8(obj.oi_mode, buffer, bufferOffset);
    // Serialize message field [song_number]
    bufferOffset = _serializer.uint8(obj.song_number, buffer, bufferOffset);
    // Serialize message field [song_playing]
    bufferOffset = _serializer.bool(obj.song_playing, buffer, bufferOffset);
    // Serialize message field [number_of_stream_packets]
    bufferOffset = _serializer.uint8(obj.number_of_stream_packets, buffer, bufferOffset);
    // Serialize message field [requested_velocity]
    bufferOffset = _serializer.int16(obj.requested_velocity, buffer, bufferOffset);
    // Serialize message field [requested_radius]
    bufferOffset = _serializer.int16(obj.requested_radius, buffer, bufferOffset);
    // Serialize message field [requested_right_velocity]
    bufferOffset = _serializer.int16(obj.requested_right_velocity, buffer, bufferOffset);
    // Serialize message field [requested_left_velocity]
    bufferOffset = _serializer.int16(obj.requested_left_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawTurtlebotSensorState
    let len;
    let data = new RawTurtlebotSensorState(null);
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
    // Deserialize message field [wall_signal]
    data.wall_signal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cliff_left_signal]
    data.cliff_left_signal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cliff_front_left_signal]
    data.cliff_front_left_signal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cliff_front_right_signal]
    data.cliff_front_right_signal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cliff_right_signal]
    data.cliff_right_signal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [user_digital_inputs]
    data.user_digital_inputs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_analog_input]
    data.user_analog_input = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [charging_sources_available]
    data.charging_sources_available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [oi_mode]
    data.oi_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [song_number]
    data.song_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [song_playing]
    data.song_playing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [number_of_stream_packets]
    data.number_of_stream_packets = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [requested_velocity]
    data.requested_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [requested_radius]
    data.requested_radius = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [requested_right_velocity]
    data.requested_right_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [requested_left_velocity]
    data.requested_left_velocity = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'create_node/RawTurtlebotSensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '103d192c45e953c8bb1c3c046e89e2ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OI_MODE_OFF = 0
    uint8 OI_MODE_PASSIVE = 1
    uint8 OI_MODE_SAFE = 2
    uint8 OI_MODE_FULL = 3
    
    uint8 REMOTE_LEFT = 129
    uint8 REMOTE_FORWARD = 130 
    uint8 REMOTE_RIGHT = 131 
    uint8 REMOTE_SPOT = 132 
    uint8 REMOTE_MAX = 133 
    uint8 REMOTE_SMALL = 134 
    uint8 REMOTE_MEDIUM = 135 
    uint8 REMOTE_LARGE = 136 
    uint8 REMOTE_CLEAN = 136 
    uint8 REMOTE_PAUSE = 137 
    uint8 REMOTE_POWER = 138 
    uint8 REMOTE_ARC_LEFT = 139 
    uint8 REMOTE_ARC_RIGHT = 140 
    uint8 REMOTE_DRIVE_STOP = 141 
    # Scheduling remote
    uint8 REMOTE_SEND_ALL = 142 
    uint8 REMOTE_SEEK_DOCK = 143 
    # Home base
    uint8 REMOTE_RESERVED = 240 
    uint8 REMOTE_FORCE_FIELD = 242 
    uint8 REMOTE_GREEN_BUOY = 244 
    uint8 REMOTE_GREEN_BUOY_AND_FORCE_FIELD = 246 
    uint8 REMOTE_RED_BUOY = 248 
    uint8 REMOTE_RED_BUOY_AND_FORCE_FIELD = 250 
    uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY = 252 
    uint8 REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD = 254 
    uint8 REMOTE_NONE = 255
    
    uint8 CHARGING_NOT_CHARGING = 0
    uint8 CHARGING_CHARGING_RECOVERY = 1
    uint8 CHARGING_CHARGING = 2
    uint8 CHARGING_TRICKLE_CHARGING = 3
    uint8 CHARGING_WAITING = 4 
    uint8 CHARGING_CHARGING_ERROR = 5
    
    Header header
    
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
    
    uint16 wall_signal
    uint16 cliff_left_signal
    uint16 cliff_front_left_signal
    uint16 cliff_front_right_signal
    uint16 cliff_right_signal
    uint8 user_digital_inputs
    uint16 user_analog_input
    uint8 charging_sources_available
    uint8 oi_mode
    uint8 song_number
    bool song_playing
    
    uint8 number_of_stream_packets
    int16 requested_velocity  # mm/s
    int16 requested_radius  # mm
    int16 requested_right_velocity  # mm/s
    int16 requested_left_velocity  # mm/s
    
    
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
    const resolved = new RawTurtlebotSensorState(null);
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

    if (msg.wall_signal !== undefined) {
      resolved.wall_signal = msg.wall_signal;
    }
    else {
      resolved.wall_signal = 0
    }

    if (msg.cliff_left_signal !== undefined) {
      resolved.cliff_left_signal = msg.cliff_left_signal;
    }
    else {
      resolved.cliff_left_signal = 0
    }

    if (msg.cliff_front_left_signal !== undefined) {
      resolved.cliff_front_left_signal = msg.cliff_front_left_signal;
    }
    else {
      resolved.cliff_front_left_signal = 0
    }

    if (msg.cliff_front_right_signal !== undefined) {
      resolved.cliff_front_right_signal = msg.cliff_front_right_signal;
    }
    else {
      resolved.cliff_front_right_signal = 0
    }

    if (msg.cliff_right_signal !== undefined) {
      resolved.cliff_right_signal = msg.cliff_right_signal;
    }
    else {
      resolved.cliff_right_signal = 0
    }

    if (msg.user_digital_inputs !== undefined) {
      resolved.user_digital_inputs = msg.user_digital_inputs;
    }
    else {
      resolved.user_digital_inputs = 0
    }

    if (msg.user_analog_input !== undefined) {
      resolved.user_analog_input = msg.user_analog_input;
    }
    else {
      resolved.user_analog_input = 0
    }

    if (msg.charging_sources_available !== undefined) {
      resolved.charging_sources_available = msg.charging_sources_available;
    }
    else {
      resolved.charging_sources_available = 0
    }

    if (msg.oi_mode !== undefined) {
      resolved.oi_mode = msg.oi_mode;
    }
    else {
      resolved.oi_mode = 0
    }

    if (msg.song_number !== undefined) {
      resolved.song_number = msg.song_number;
    }
    else {
      resolved.song_number = 0
    }

    if (msg.song_playing !== undefined) {
      resolved.song_playing = msg.song_playing;
    }
    else {
      resolved.song_playing = false
    }

    if (msg.number_of_stream_packets !== undefined) {
      resolved.number_of_stream_packets = msg.number_of_stream_packets;
    }
    else {
      resolved.number_of_stream_packets = 0
    }

    if (msg.requested_velocity !== undefined) {
      resolved.requested_velocity = msg.requested_velocity;
    }
    else {
      resolved.requested_velocity = 0
    }

    if (msg.requested_radius !== undefined) {
      resolved.requested_radius = msg.requested_radius;
    }
    else {
      resolved.requested_radius = 0
    }

    if (msg.requested_right_velocity !== undefined) {
      resolved.requested_right_velocity = msg.requested_right_velocity;
    }
    else {
      resolved.requested_right_velocity = 0
    }

    if (msg.requested_left_velocity !== undefined) {
      resolved.requested_left_velocity = msg.requested_left_velocity;
    }
    else {
      resolved.requested_left_velocity = 0
    }

    return resolved;
    }
};

// Constants for message
RawTurtlebotSensorState.Constants = {
  OI_MODE_OFF: 0,
  OI_MODE_PASSIVE: 1,
  OI_MODE_SAFE: 2,
  OI_MODE_FULL: 3,
  REMOTE_LEFT: 129,
  REMOTE_FORWARD: 130,
  REMOTE_RIGHT: 131,
  REMOTE_SPOT: 132,
  REMOTE_MAX: 133,
  REMOTE_SMALL: 134,
  REMOTE_MEDIUM: 135,
  REMOTE_LARGE: 136,
  REMOTE_CLEAN: 136,
  REMOTE_PAUSE: 137,
  REMOTE_POWER: 138,
  REMOTE_ARC_LEFT: 139,
  REMOTE_ARC_RIGHT: 140,
  REMOTE_DRIVE_STOP: 141,
  REMOTE_SEND_ALL: 142,
  REMOTE_SEEK_DOCK: 143,
  REMOTE_RESERVED: 240,
  REMOTE_FORCE_FIELD: 242,
  REMOTE_GREEN_BUOY: 244,
  REMOTE_GREEN_BUOY_AND_FORCE_FIELD: 246,
  REMOTE_RED_BUOY: 248,
  REMOTE_RED_BUOY_AND_FORCE_FIELD: 250,
  REMOTE_RED_BUOY_AND_GREEN_BUOY: 252,
  REMOTE_RED_BUOY_AND_GREEN_BUOY_AND_FORCE_FIELD: 254,
  REMOTE_NONE: 255,
  CHARGING_NOT_CHARGING: 0,
  CHARGING_CHARGING_RECOVERY: 1,
  CHARGING_CHARGING: 2,
  CHARGING_TRICKLE_CHARGING: 3,
  CHARGING_WAITING: 4,
  CHARGING_CHARGING_ERROR: 5,
}

module.exports = RawTurtlebotSensorState;

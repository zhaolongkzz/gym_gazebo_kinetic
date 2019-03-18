// Auto-generated. Do not edit!

// (in-package kobuki_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SensorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_stamp = null;
      this.bumper = null;
      this.wheel_drop = null;
      this.cliff = null;
      this.left_encoder = null;
      this.right_encoder = null;
      this.left_pwm = null;
      this.right_pwm = null;
      this.buttons = null;
      this.charger = null;
      this.battery = null;
      this.bottom = null;
      this.current = null;
      this.over_current = null;
      this.digital_input = null;
      this.analog_input = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0;
      }
      if (initObj.hasOwnProperty('bumper')) {
        this.bumper = initObj.bumper
      }
      else {
        this.bumper = 0;
      }
      if (initObj.hasOwnProperty('wheel_drop')) {
        this.wheel_drop = initObj.wheel_drop
      }
      else {
        this.wheel_drop = 0;
      }
      if (initObj.hasOwnProperty('cliff')) {
        this.cliff = initObj.cliff
      }
      else {
        this.cliff = 0;
      }
      if (initObj.hasOwnProperty('left_encoder')) {
        this.left_encoder = initObj.left_encoder
      }
      else {
        this.left_encoder = 0;
      }
      if (initObj.hasOwnProperty('right_encoder')) {
        this.right_encoder = initObj.right_encoder
      }
      else {
        this.right_encoder = 0;
      }
      if (initObj.hasOwnProperty('left_pwm')) {
        this.left_pwm = initObj.left_pwm
      }
      else {
        this.left_pwm = 0;
      }
      if (initObj.hasOwnProperty('right_pwm')) {
        this.right_pwm = initObj.right_pwm
      }
      else {
        this.right_pwm = 0;
      }
      if (initObj.hasOwnProperty('buttons')) {
        this.buttons = initObj.buttons
      }
      else {
        this.buttons = 0;
      }
      if (initObj.hasOwnProperty('charger')) {
        this.charger = initObj.charger
      }
      else {
        this.charger = 0;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
      if (initObj.hasOwnProperty('over_current')) {
        this.over_current = initObj.over_current
      }
      else {
        this.over_current = 0;
      }
      if (initObj.hasOwnProperty('digital_input')) {
        this.digital_input = initObj.digital_input
      }
      else {
        this.digital_input = 0;
      }
      if (initObj.hasOwnProperty('analog_input')) {
        this.analog_input = initObj.analog_input
      }
      else {
        this.analog_input = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.uint16(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [bumper]
    bufferOffset = _serializer.uint8(obj.bumper, buffer, bufferOffset);
    // Serialize message field [wheel_drop]
    bufferOffset = _serializer.uint8(obj.wheel_drop, buffer, bufferOffset);
    // Serialize message field [cliff]
    bufferOffset = _serializer.uint8(obj.cliff, buffer, bufferOffset);
    // Serialize message field [left_encoder]
    bufferOffset = _serializer.uint16(obj.left_encoder, buffer, bufferOffset);
    // Serialize message field [right_encoder]
    bufferOffset = _serializer.uint16(obj.right_encoder, buffer, bufferOffset);
    // Serialize message field [left_pwm]
    bufferOffset = _serializer.int8(obj.left_pwm, buffer, bufferOffset);
    // Serialize message field [right_pwm]
    bufferOffset = _serializer.int8(obj.right_pwm, buffer, bufferOffset);
    // Serialize message field [buttons]
    bufferOffset = _serializer.uint8(obj.buttons, buffer, bufferOffset);
    // Serialize message field [charger]
    bufferOffset = _serializer.uint8(obj.charger, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.uint8(obj.battery, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _arraySerializer.uint16(obj.bottom, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.uint8(obj.current, buffer, bufferOffset, null);
    // Serialize message field [over_current]
    bufferOffset = _serializer.uint8(obj.over_current, buffer, bufferOffset);
    // Serialize message field [digital_input]
    bufferOffset = _serializer.uint16(obj.digital_input, buffer, bufferOffset);
    // Serialize message field [analog_input]
    bufferOffset = _arraySerializer.uint16(obj.analog_input, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorState
    let len;
    let data = new SensorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [bumper]
    data.bumper = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_drop]
    data.wheel_drop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cliff]
    data.cliff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_encoder]
    data.left_encoder = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [right_encoder]
    data.right_encoder = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [left_pwm]
    data.left_pwm = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [right_pwm]
    data.right_pwm = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [buttons]
    data.buttons = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [charger]
    data.charger = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [over_current]
    data.over_current = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [digital_input]
    data.digital_input = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [analog_input]
    data.analog_input = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.bottom.length;
    length += object.current.length;
    length += 2 * object.analog_input.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kobuki_msgs/SensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '430a4bfd78449c8740bfef32b26613a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Kobuki Sensor Data Messages
    #
    # For more direct simple interactions (buttons, leds, gyro, motor velocity
    # etc) use the other topics. This provides detailed information about the
    # entire state package that is transmitted at 50Hz from the robot.
    #
    
    
    ###### CONSTANTS ######
    # Bumper states (states are combined, when multiple bumpers are pressed)
    uint8 BUMPER_RIGHT  = 1
    uint8 BUMPER_CENTRE = 2
    uint8 BUMPER_LEFT   = 4
    
    # Wheel drop sensor states (states are combined, when both wheel drop sensors are triggered)
    uint8 WHEEL_DROP_RIGHT = 1
    uint8 WHEEL_DROP_LEFT  = 2
    
    # Cliff sensor states (states are combined, when multiple cliff sensors are triggered)
    uint8 CLIFF_RIGHT  = 1
    uint8 CLIFF_CENTRE = 2
    uint8 CLIFF_LEFT   = 4
    
    # Button states (only one button can be triggered at a time)
    uint8 BUTTON0 = 1
    uint8 BUTTON1 = 2
    uint8 BUTTON2 = 4
    
    # Charger state is a combination of charging device (adapter, docking station)
    # and state (charging, charged, discharging):
    uint8 DISCHARGING      = 0
    uint8 DOCKING_CHARGED  = 2
    uint8 DOCKING_CHARGING = 6
    uint8 ADAPTER_CHARGED  = 18
    uint8 ADAPTER_CHARGING = 22
    
    # Over current states
    uint8 OVER_CURRENT_LEFT_WHEEL  = 1
    uint8 OVER_CURRENT_RIGHT_WHEEL = 2
    uint8 OVER_CURRENT_BOTH_WHEELS = 3
    
    # Digital input states (states are combined, when multiple inputs are set at the same time)
    # When connecting Yujin's test board, it acts as pull-up what inverts the behaviour:
    # No input: 79, all inputs set (e.g. buttons pressed): 64
    uint8 DIGITAL_INPUT0 = 1
    uint8 DIGITAL_INPUT1 = 2
    uint8 DIGITAL_INPUT2 = 4
    uint8 DIGITAL_INPUT3 = 8
    uint8 DB25_TEST_BOARD_CONNECTED = 64
    
    ###### MESSAGE ######
    
    Header header
    
    ###################
    # Core Packet
    ###################
    uint16 time_stamp      # milliseconds starting when turning on Kobuki (max. 65536, then starts from 0 again)
    uint8  bumper          # see bumper states
    uint8  wheel_drop      # see wheel drop sensor states
    uint8  cliff           # see cliff sensor states
    uint16 left_encoder    # accumulated ticks left wheel starting with turning on Kobuki (max. 65535)
    uint16 right_encoder   # accumulated ticks right wheel starting with turning on Kobuki (max. 65535)
    int8   left_pwm        # % of applied maximum voltage left wheel: -100 (max. voltage backward) to +100 (max. voltage forward)
    int8   right_pwm       # % of applied maximum voltage right wheel: -100 (max. voltage backward) to +100 (max. voltage forward)
    uint8  buttons         # see button states
    uint8  charger         # see charger states
    uint8  battery         # battery voltage in 0.1V (ex. 16.1V -> 161)
    
    ###################
    # Cliff Packet
    ###################
    uint16[] bottom        # ADC output of the right, centre, left cliff PSD sensor (0 - 4095, distance measure is non-linear)
    
    ###################
    # Current Packet
    ###################
    uint8[] current        # motor current for the left and right motor in 10mA (ex. 12 -> 120mA)
    uint8   over_current   # see over current states
    
    ###################
    # Input Packet
    ###################
    uint16   digital_input # see digital input states; will show garbage when nothing is connected
    uint16[] analog_input  # ADC values for the 4 analog inputs; 0 - 4095: 0.0 - 3.3V; will show garbage when nothing is connected
    
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
    const resolved = new SensorState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0
    }

    if (msg.bumper !== undefined) {
      resolved.bumper = msg.bumper;
    }
    else {
      resolved.bumper = 0
    }

    if (msg.wheel_drop !== undefined) {
      resolved.wheel_drop = msg.wheel_drop;
    }
    else {
      resolved.wheel_drop = 0
    }

    if (msg.cliff !== undefined) {
      resolved.cliff = msg.cliff;
    }
    else {
      resolved.cliff = 0
    }

    if (msg.left_encoder !== undefined) {
      resolved.left_encoder = msg.left_encoder;
    }
    else {
      resolved.left_encoder = 0
    }

    if (msg.right_encoder !== undefined) {
      resolved.right_encoder = msg.right_encoder;
    }
    else {
      resolved.right_encoder = 0
    }

    if (msg.left_pwm !== undefined) {
      resolved.left_pwm = msg.left_pwm;
    }
    else {
      resolved.left_pwm = 0
    }

    if (msg.right_pwm !== undefined) {
      resolved.right_pwm = msg.right_pwm;
    }
    else {
      resolved.right_pwm = 0
    }

    if (msg.buttons !== undefined) {
      resolved.buttons = msg.buttons;
    }
    else {
      resolved.buttons = 0
    }

    if (msg.charger !== undefined) {
      resolved.charger = msg.charger;
    }
    else {
      resolved.charger = 0
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    if (msg.over_current !== undefined) {
      resolved.over_current = msg.over_current;
    }
    else {
      resolved.over_current = 0
    }

    if (msg.digital_input !== undefined) {
      resolved.digital_input = msg.digital_input;
    }
    else {
      resolved.digital_input = 0
    }

    if (msg.analog_input !== undefined) {
      resolved.analog_input = msg.analog_input;
    }
    else {
      resolved.analog_input = []
    }

    return resolved;
    }
};

// Constants for message
SensorState.Constants = {
  BUMPER_RIGHT: 1,
  BUMPER_CENTRE: 2,
  BUMPER_LEFT: 4,
  WHEEL_DROP_RIGHT: 1,
  WHEEL_DROP_LEFT: 2,
  CLIFF_RIGHT: 1,
  CLIFF_CENTRE: 2,
  CLIFF_LEFT: 4,
  BUTTON0: 1,
  BUTTON1: 2,
  BUTTON2: 4,
  DISCHARGING: 0,
  DOCKING_CHARGED: 2,
  DOCKING_CHARGING: 6,
  ADAPTER_CHARGED: 18,
  ADAPTER_CHARGING: 22,
  OVER_CURRENT_LEFT_WHEEL: 1,
  OVER_CURRENT_RIGHT_WHEEL: 2,
  OVER_CURRENT_BOTH_WHEELS: 3,
  DIGITAL_INPUT0: 1,
  DIGITAL_INPUT1: 2,
  DIGITAL_INPUT2: 4,
  DIGITAL_INPUT3: 8,
  DB25_TEST_BOARD_CONNECTED: 64,
}

module.exports = SensorState;

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

class EndEffectorCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.command = null;
      this.args = null;
      this.sender = null;
      this.sequence = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = '';
      }
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndEffectorCommand
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _serializer.string(obj.args, buffer, bufferOffset);
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint32(obj.sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndEffectorCommand
    let len;
    let data = new EndEffectorCommand(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += object.args.length;
    length += object.sender.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_core_msgs/EndEffectorCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c003234e90416f2ca02ac7837c42cbb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Command to be sent to an end effector
    uint32 id       # target end effector id
    string command  # operation to perform
    # Well known commands:
    string   CMD_NO_OP           = no_op
    string   CMD_SET             = set
    string   CMD_CONFIGURE       = configure
    string   CMD_REBOOT          = reboot
    string   CMD_RESET           = reset
    string   CMD_CALIBRATE       = calibrate
    string   CMD_CLEAR_CALIBRATION = clear_calibration
    string   CMD_PREPARE_TO_GRIP = prepare_to_grip
    string   CMD_GRIP            = grip
    string   CMD_RELEASE         = release
    string   CMD_GO              = go
    string   CMD_STOP            = stop
    #
    string args     # JSON arguments to the command
    #
    string sender   # optional identifier, returned in state when the command is handled
    uint32 sequence # optional sequence number, return in state when the command is handled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndEffectorCommand(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = ''
    }

    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    return resolved;
    }
};

// Constants for message
EndEffectorCommand.Constants = {
  CMD_NO_OP: 'no_op',
  CMD_SET: 'set',
  CMD_CONFIGURE: 'configure',
  CMD_REBOOT: 'reboot',
  CMD_RESET: 'reset',
  CMD_CALIBRATE: 'calibrate',
  CMD_CLEAR_CALIBRATION: 'clear_calibration',
  CMD_PREPARE_TO_GRIP: 'prepare_to_grip',
  CMD_GRIP: 'grip',
  CMD_RELEASE: 'release',
  CMD_GO: 'go',
  CMD_STOP: 'stop',
}

module.exports = EndEffectorCommand;

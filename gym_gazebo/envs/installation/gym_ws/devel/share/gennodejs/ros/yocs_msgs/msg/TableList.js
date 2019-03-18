// Auto-generated. Do not edit!

// (in-package yocs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Table = require('./Table.js');

//-----------------------------------------------------------

class TableList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tables = null;
    }
    else {
      if (initObj.hasOwnProperty('tables')) {
        this.tables = initObj.tables
      }
      else {
        this.tables = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TableList
    // Serialize message field [tables]
    // Serialize the length for message field [tables]
    bufferOffset = _serializer.uint32(obj.tables.length, buffer, bufferOffset);
    obj.tables.forEach((val) => {
      bufferOffset = Table.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TableList
    let len;
    let data = new TableList(null);
    // Deserialize message field [tables]
    // Deserialize array length for message field [tables]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tables = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tables[i] = Table.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.tables.forEach((val) => {
      length += Table.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yocs_msgs/TableList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88fff7e2df98bd37f03f85cffc55624b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A list of tables
    
    Table[] tables
    
    ================================================================================
    MSG: yocs_msgs/Table
    # Semantic annotation for a table; by now a clone of column but with different semantics
    # In the future we must support also rectangular tables
    #  - Orientation is ignored
    #  - Z provides the lower border of the column (normally 0)
    
    string  name
    float32 radius
    float32 height
    geometry_msgs/PoseWithCovarianceStamped pose
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TableList(null);
    if (msg.tables !== undefined) {
      resolved.tables = new Array(msg.tables.length);
      for (let i = 0; i < resolved.tables.length; ++i) {
        resolved.tables[i] = Table.Resolve(msg.tables[i]);
      }
    }
    else {
      resolved.tables = []
    }

    return resolved;
    }
};

module.exports = TableList;

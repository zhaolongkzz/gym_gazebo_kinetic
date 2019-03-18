// Auto-generated. Do not edit!

// (in-package polled_camera.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetPolledImageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_namespace = null;
      this.timeout = null;
      this.binning_x = null;
      this.binning_y = null;
      this.roi = null;
    }
    else {
      if (initObj.hasOwnProperty('response_namespace')) {
        this.response_namespace = initObj.response_namespace
      }
      else {
        this.response_namespace = '';
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('binning_x')) {
        this.binning_x = initObj.binning_x
      }
      else {
        this.binning_x = 0;
      }
      if (initObj.hasOwnProperty('binning_y')) {
        this.binning_y = initObj.binning_y
      }
      else {
        this.binning_y = 0;
      }
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new sensor_msgs.msg.RegionOfInterest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPolledImageRequest
    // Serialize message field [response_namespace]
    bufferOffset = _serializer.string(obj.response_namespace, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.duration(obj.timeout, buffer, bufferOffset);
    // Serialize message field [binning_x]
    bufferOffset = _serializer.uint32(obj.binning_x, buffer, bufferOffset);
    // Serialize message field [binning_y]
    bufferOffset = _serializer.uint32(obj.binning_y, buffer, bufferOffset);
    // Serialize message field [roi]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.roi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPolledImageRequest
    let len;
    let data = new GetPolledImageRequest(null);
    // Deserialize message field [response_namespace]
    data.response_namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [binning_x]
    data.binning_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [binning_y]
    data.binning_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roi]
    data.roi = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.response_namespace.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a service object
    return 'polled_camera/GetPolledImageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c77ed43e530fd48e9e7a2a93845e154c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string response_namespace
    
    
    
    
    duration timeout
    
    
    uint32 binning_x
    uint32 binning_y
    
    
    sensor_msgs/RegionOfInterest roi
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPolledImageRequest(null);
    if (msg.response_namespace !== undefined) {
      resolved.response_namespace = msg.response_namespace;
    }
    else {
      resolved.response_namespace = ''
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = {secs: 0, nsecs: 0}
    }

    if (msg.binning_x !== undefined) {
      resolved.binning_x = msg.binning_x;
    }
    else {
      resolved.binning_x = 0
    }

    if (msg.binning_y !== undefined) {
      resolved.binning_y = msg.binning_y;
    }
    else {
      resolved.binning_y = 0
    }

    if (msg.roi !== undefined) {
      resolved.roi = sensor_msgs.msg.RegionOfInterest.Resolve(msg.roi)
    }
    else {
      resolved.roi = new sensor_msgs.msg.RegionOfInterest()
    }

    return resolved;
    }
};

class GetPolledImageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPolledImageResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPolledImageResponse
    let len;
    let data = new GetPolledImageResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status_message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'polled_camera/GetPolledImageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbf1f851bc511800e6129ccd5a3542ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    time stamp
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPolledImageResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPolledImageRequest,
  Response: GetPolledImageResponse,
  md5sum() { return '1f3fb0d09d6e1c72d4a7eeb9822d9030'; },
  datatype() { return 'polled_camera/GetPolledImage'; }
};

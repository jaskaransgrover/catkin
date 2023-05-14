// Auto-generated. Do not edit!

// (in-package khepera_communicator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class K4_controls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl_W = null;
      this.ctrl_V = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl_W')) {
        this.ctrl_W = initObj.ctrl_W
      }
      else {
        this.ctrl_W = 0.0;
      }
      if (initObj.hasOwnProperty('ctrl_V')) {
        this.ctrl_V = initObj.ctrl_V
      }
      else {
        this.ctrl_V = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type K4_controls
    // Serialize message field [ctrl_W]
    bufferOffset = _serializer.float32(obj.ctrl_W, buffer, bufferOffset);
    // Serialize message field [ctrl_V]
    bufferOffset = _serializer.float32(obj.ctrl_V, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type K4_controls
    let len;
    let data = new K4_controls(null);
    // Deserialize message field [ctrl_W]
    data.ctrl_W = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ctrl_V]
    data.ctrl_V = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'khepera_communicator/K4_controls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8212eb98a5c89ce2b20829a1dc1970ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ctrl_W
    float32 ctrl_V
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new K4_controls(null);
    if (msg.ctrl_W !== undefined) {
      resolved.ctrl_W = msg.ctrl_W;
    }
    else {
      resolved.ctrl_W = 0.0
    }

    if (msg.ctrl_V !== undefined) {
      resolved.ctrl_V = msg.ctrl_V;
    }
    else {
      resolved.ctrl_V = 0.0
    }

    return resolved;
    }
};

module.exports = K4_controls;

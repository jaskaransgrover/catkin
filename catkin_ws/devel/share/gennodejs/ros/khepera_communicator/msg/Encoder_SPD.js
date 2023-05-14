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

class Encoder_SPD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spd_L = null;
      this.spd_R = null;
    }
    else {
      if (initObj.hasOwnProperty('spd_L')) {
        this.spd_L = initObj.spd_L
      }
      else {
        this.spd_L = 0;
      }
      if (initObj.hasOwnProperty('spd_R')) {
        this.spd_R = initObj.spd_R
      }
      else {
        this.spd_R = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder_SPD
    // Serialize message field [spd_L]
    bufferOffset = _serializer.int64(obj.spd_L, buffer, bufferOffset);
    // Serialize message field [spd_R]
    bufferOffset = _serializer.int64(obj.spd_R, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder_SPD
    let len;
    let data = new Encoder_SPD(null);
    // Deserialize message field [spd_L]
    data.spd_L = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [spd_R]
    data.spd_R = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'khepera_communicator/Encoder_SPD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b3c260c3bd3547108ca8206192d86e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 spd_L
    int64 spd_R
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder_SPD(null);
    if (msg.spd_L !== undefined) {
      resolved.spd_L = msg.spd_L;
    }
    else {
      resolved.spd_L = 0
    }

    if (msg.spd_R !== undefined) {
      resolved.spd_R = msg.spd_R;
    }
    else {
      resolved.spd_R = 0
    }

    return resolved;
    }
};

module.exports = Encoder_SPD;

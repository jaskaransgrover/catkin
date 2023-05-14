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

class Encoder_POS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_L = null;
      this.pos_R = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_L')) {
        this.pos_L = initObj.pos_L
      }
      else {
        this.pos_L = 0;
      }
      if (initObj.hasOwnProperty('pos_R')) {
        this.pos_R = initObj.pos_R
      }
      else {
        this.pos_R = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder_POS
    // Serialize message field [pos_L]
    bufferOffset = _serializer.int64(obj.pos_L, buffer, bufferOffset);
    // Serialize message field [pos_R]
    bufferOffset = _serializer.int64(obj.pos_R, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder_POS
    let len;
    let data = new Encoder_POS(null);
    // Deserialize message field [pos_L]
    data.pos_L = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pos_R]
    data.pos_R = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'khepera_communicator/Encoder_POS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47f33c7ad24d6372d77eef644df6fcf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 pos_L
    int64 pos_R
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder_POS(null);
    if (msg.pos_L !== undefined) {
      resolved.pos_L = msg.pos_L;
    }
    else {
      resolved.pos_L = 0
    }

    if (msg.pos_R !== undefined) {
      resolved.pos_R = msg.pos_R;
    }
    else {
      resolved.pos_R = 0
    }

    return resolved;
    }
};

module.exports = Encoder_POS;

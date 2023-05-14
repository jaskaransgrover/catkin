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

class SensorReadings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.pos_L = null;
      this.pos_R = null;
      this.spd_L = null;
      this.spd_R = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = 0.0;
      }
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
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorReadings
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float32(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float32(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float32(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [gyro_x]
    bufferOffset = _serializer.float32(obj.gyro_x, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.float32(obj.gyro_y, buffer, bufferOffset);
    // Serialize message field [gyro_z]
    bufferOffset = _serializer.float32(obj.gyro_z, buffer, bufferOffset);
    // Serialize message field [pos_L]
    bufferOffset = _serializer.int64(obj.pos_L, buffer, bufferOffset);
    // Serialize message field [pos_R]
    bufferOffset = _serializer.int64(obj.pos_R, buffer, bufferOffset);
    // Serialize message field [spd_L]
    bufferOffset = _serializer.int64(obj.spd_L, buffer, bufferOffset);
    // Serialize message field [spd_R]
    bufferOffset = _serializer.int64(obj.spd_R, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorReadings
    let len;
    let data = new SensorReadings(null);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_x]
    data.gyro_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_z]
    data.gyro_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_L]
    data.pos_L = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pos_R]
    data.pos_R = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [spd_L]
    data.spd_L = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [spd_R]
    data.spd_R = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'khepera_communicator/SensorReadings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0d41b6d37358788208673918228ef9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 acc_x
    float32 acc_y
    float32 acc_z
    float32 gyro_x
    float32 gyro_y
    float32 gyro_z
    int64 pos_L
    int64 pos_R
    int64 spd_L
    int64 spd_R
    float64 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorReadings(null);
    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = 0.0
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = 0.0
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = 0.0
    }

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

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = SensorReadings;

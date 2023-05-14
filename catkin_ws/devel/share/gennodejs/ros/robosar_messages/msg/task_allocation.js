// Auto-generated. Do not edit!

// (in-package robosar_messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class task_allocation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.startx = null;
      this.starty = null;
      this.goalx = null;
      this.goaly = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('startx')) {
        this.startx = initObj.startx
      }
      else {
        this.startx = [];
      }
      if (initObj.hasOwnProperty('starty')) {
        this.starty = initObj.starty
      }
      else {
        this.starty = [];
      }
      if (initObj.hasOwnProperty('goalx')) {
        this.goalx = initObj.goalx
      }
      else {
        this.goalx = [];
      }
      if (initObj.hasOwnProperty('goaly')) {
        this.goaly = initObj.goaly
      }
      else {
        this.goaly = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type task_allocation
    // Serialize message field [id]
    bufferOffset = _arraySerializer.string(obj.id, buffer, bufferOffset, null);
    // Serialize message field [startx]
    bufferOffset = _arraySerializer.float32(obj.startx, buffer, bufferOffset, null);
    // Serialize message field [starty]
    bufferOffset = _arraySerializer.float32(obj.starty, buffer, bufferOffset, null);
    // Serialize message field [goalx]
    bufferOffset = _arraySerializer.float32(obj.goalx, buffer, bufferOffset, null);
    // Serialize message field [goaly]
    bufferOffset = _arraySerializer.float32(obj.goaly, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type task_allocation
    let len;
    let data = new task_allocation(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [startx]
    data.startx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [starty]
    data.starty = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [goalx]
    data.goalx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [goaly]
    data.goaly = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.id.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.startx.length;
    length += 4 * object.starty.length;
    length += 4 * object.goalx.length;
    length += 4 * object.goaly.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robosar_messages/task_allocation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f624a16b66a516b8389674edd586ce7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] id
    float32[] startx
    float32[] starty
    float32[] goalx
    float32[] goaly
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new task_allocation(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.startx !== undefined) {
      resolved.startx = msg.startx;
    }
    else {
      resolved.startx = []
    }

    if (msg.starty !== undefined) {
      resolved.starty = msg.starty;
    }
    else {
      resolved.starty = []
    }

    if (msg.goalx !== undefined) {
      resolved.goalx = msg.goalx;
    }
    else {
      resolved.goalx = []
    }

    if (msg.goaly !== undefined) {
      resolved.goaly = msg.goaly;
    }
    else {
      resolved.goaly = []
    }

    return resolved;
    }
};

module.exports = task_allocation;

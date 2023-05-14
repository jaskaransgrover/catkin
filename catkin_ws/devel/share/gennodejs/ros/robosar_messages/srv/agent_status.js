// Auto-generated. Do not edit!

// (in-package robosar_messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class agent_statusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agent_statusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agent_statusRequest
    let len;
    let data = new agent_statusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robosar_messages/agent_statusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new agent_statusRequest(null);
    return resolved;
    }
};

class agent_statusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agents_active = null;
    }
    else {
      if (initObj.hasOwnProperty('agents_active')) {
        this.agents_active = initObj.agents_active
      }
      else {
        this.agents_active = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agent_statusResponse
    // Serialize message field [agents_active]
    bufferOffset = _arraySerializer.string(obj.agents_active, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agent_statusResponse
    let len;
    let data = new agent_statusResponse(null);
    // Deserialize message field [agents_active]
    data.agents_active = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.agents_active.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robosar_messages/agent_statusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e11fd7ffef74f85ca9b7e06e813c80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] agents_active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new agent_statusResponse(null);
    if (msg.agents_active !== undefined) {
      resolved.agents_active = msg.agents_active;
    }
    else {
      resolved.agents_active = []
    }

    return resolved;
    }
};

module.exports = {
  Request: agent_statusRequest,
  Response: agent_statusResponse,
  md5sum() { return '8e11fd7ffef74f85ca9b7e06e813c80a'; },
  datatype() { return 'robosar_messages/agent_status'; }
};

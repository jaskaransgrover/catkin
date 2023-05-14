// Auto-generated. Do not edit!

// (in-package robosar_messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class taskgen_getwayptsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
      this.threshold = null;
      this.iterations = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0.0;
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type taskgen_getwayptsRequest
    // Serialize message field [map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.map, buffer, bufferOffset);
    // Serialize message field [threshold]
    bufferOffset = _serializer.float64(obj.threshold, buffer, bufferOffset);
    // Serialize message field [iterations]
    bufferOffset = _serializer.int64(obj.iterations, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type taskgen_getwayptsRequest
    let len;
    let data = new taskgen_getwayptsRequest(null);
    // Deserialize message field [map]
    data.map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iterations]
    data.iterations = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.map);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robosar_messages/taskgen_getwayptsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03d18fe5126a914ee71fdd8a78836825';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid map
    float64 threshold
    int64 iterations
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    string frame_id
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    const resolved = new taskgen_getwayptsRequest(null);
    if (msg.map !== undefined) {
      resolved.map = nav_msgs.msg.OccupancyGrid.Resolve(msg.map)
    }
    else {
      resolved.map = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0.0
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    return resolved;
    }
};

class taskgen_getwayptsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_pts = null;
      this.dims = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('num_pts')) {
        this.num_pts = initObj.num_pts
      }
      else {
        this.num_pts = 0;
      }
      if (initObj.hasOwnProperty('dims')) {
        this.dims = initObj.dims
      }
      else {
        this.dims = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type taskgen_getwayptsResponse
    // Serialize message field [num_pts]
    bufferOffset = _serializer.int64(obj.num_pts, buffer, bufferOffset);
    // Serialize message field [dims]
    bufferOffset = _serializer.int64(obj.dims, buffer, bufferOffset);
    // Serialize message field [waypoints]
    bufferOffset = _arraySerializer.int64(obj.waypoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type taskgen_getwayptsResponse
    let len;
    let data = new taskgen_getwayptsResponse(null);
    // Deserialize message field [num_pts]
    data.num_pts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dims]
    data.dims = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    data.waypoints = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.waypoints.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robosar_messages/taskgen_getwayptsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d2a4ce31f01e350a2a9b9497fb038a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num_pts
    int64 dims
    int64[] waypoints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new taskgen_getwayptsResponse(null);
    if (msg.num_pts !== undefined) {
      resolved.num_pts = msg.num_pts;
    }
    else {
      resolved.num_pts = 0
    }

    if (msg.dims !== undefined) {
      resolved.dims = msg.dims;
    }
    else {
      resolved.dims = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = msg.waypoints;
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: taskgen_getwayptsRequest,
  Response: taskgen_getwayptsResponse,
  md5sum() { return '8305d31e6e7c96b352b096cf75748977'; },
  datatype() { return 'robosar_messages/taskgen_getwaypts'; }
};

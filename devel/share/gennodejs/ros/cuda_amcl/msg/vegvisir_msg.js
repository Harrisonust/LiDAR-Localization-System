// Auto-generated. Do not edit!

// (in-package cuda_amcl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class vegvisir_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amcl_pose = null;
      this.odom_cal = null;
    }
    else {
      if (initObj.hasOwnProperty('amcl_pose')) {
        this.amcl_pose = initObj.amcl_pose
      }
      else {
        this.amcl_pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
      if (initObj.hasOwnProperty('odom_cal')) {
        this.odom_cal = initObj.odom_cal
      }
      else {
        this.odom_cal = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vegvisir_msg
    // Serialize message field [amcl_pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.amcl_pose, buffer, bufferOffset);
    // Serialize message field [odom_cal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.odom_cal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vegvisir_msg
    let len;
    let data = new vegvisir_msg(null);
    // Deserialize message field [amcl_pose]
    data.amcl_pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [odom_cal]
    data.odom_cal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.amcl_pose);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cuda_amcl/vegvisir_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3333a8a596f79d0f0cc6ec9e2ca893e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseWithCovarianceStamped amcl_pose
    geometry_msgs/Point odom_cal
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
    const resolved = new vegvisir_msg(null);
    if (msg.amcl_pose !== undefined) {
      resolved.amcl_pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.amcl_pose)
    }
    else {
      resolved.amcl_pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    if (msg.odom_cal !== undefined) {
      resolved.odom_cal = geometry_msgs.msg.Point.Resolve(msg.odom_cal)
    }
    else {
      resolved.odom_cal = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = vegvisir_msg;

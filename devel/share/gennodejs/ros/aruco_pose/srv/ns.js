// Auto-generated. Do not edit!

// (in-package aruco_pose.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class nsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ask_ns = null;
    }
    else {
      if (initObj.hasOwnProperty('ask_ns')) {
        this.ask_ns = initObj.ask_ns
      }
      else {
        this.ask_ns = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nsRequest
    // Serialize message field [ask_ns]
    bufferOffset = _serializer.int32(obj.ask_ns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nsRequest
    let len;
    let data = new nsRequest(null);
    // Deserialize message field [ask_ns]
    data.ask_ns = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_pose/nsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6b1691ab5ec180f4125d5a3869ba886';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ask_ns
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nsRequest(null);
    if (msg.ask_ns !== undefined) {
      resolved.ask_ns = msg.ask_ns;
    }
    else {
      resolved.ask_ns = 0
    }

    return resolved;
    }
};

class nsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ns_result = null;
    }
    else {
      if (initObj.hasOwnProperty('ns_result')) {
        this.ns_result = initObj.ns_result
      }
      else {
        this.ns_result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nsResponse
    // Serialize message field [ns_result]
    bufferOffset = _serializer.int32(obj.ns_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nsResponse
    let len;
    let data = new nsResponse(null);
    // Deserialize message field [ns_result]
    data.ns_result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_pose/nsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2ad2f67474bb9a8e84b2525b4dadf8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ns_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nsResponse(null);
    if (msg.ns_result !== undefined) {
      resolved.ns_result = msg.ns_result;
    }
    else {
      resolved.ns_result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: nsRequest,
  Response: nsResponse,
  md5sum() { return '6db1d56b21aeaaf74af61c1e66674fb6'; },
  datatype() { return 'aruco_pose/ns'; }
};

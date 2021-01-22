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
      this.OAO = null;
    }
    else {
      if (initObj.hasOwnProperty('OAO')) {
        this.OAO = initObj.OAO
      }
      else {
        this.OAO = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nsRequest
    // Serialize message field [OAO]
    bufferOffset = _serializer.int32(obj.OAO, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nsRequest
    let len;
    let data = new nsRequest(null);
    // Deserialize message field [OAO]
    data.OAO = _deserializer.int32(buffer, bufferOffset);
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
    return '4a26ed29ee2d854e1ac3e22595442f5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 OAO
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nsRequest(null);
    if (msg.OAO !== undefined) {
      resolved.OAO = msg.OAO;
    }
    else {
      resolved.OAO = 0
    }

    return resolved;
    }
};

class nsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ns = null;
    }
    else {
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nsResponse
    // Serialize message field [ns]
    bufferOffset = _serializer.int32(obj.ns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nsResponse
    let len;
    let data = new nsResponse(null);
    // Deserialize message field [ns]
    data.ns = _deserializer.int32(buffer, bufferOffset);
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
    return '414ec99616e67a0447cefa81e0ded80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ns
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nsResponse(null);
    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: nsRequest,
  Response: nsResponse,
  md5sum() { return '8776fa0eb36ce3f8ec3b065ea8aaf653'; },
  datatype() { return 'aruco_pose/ns'; }
};

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

class cupRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.OUO = null;
    }
    else {
      if (initObj.hasOwnProperty('OUO')) {
        this.OUO = initObj.OUO
      }
      else {
        this.OUO = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cupRequest
    // Serialize message field [OUO]
    bufferOffset = _serializer.int32(obj.OUO, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cupRequest
    let len;
    let data = new cupRequest(null);
    // Deserialize message field [OUO]
    data.OUO = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_pose/cupRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e03e9f73d1355bf38f3e731f90a1fc9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 OUO
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cupRequest(null);
    if (msg.OUO !== undefined) {
      resolved.OUO = msg.OUO;
    }
    else {
      resolved.OUO = 0
    }

    return resolved;
    }
};

class cupResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.CupResult = null;
    }
    else {
      if (initObj.hasOwnProperty('CupResult')) {
        this.CupResult = initObj.CupResult
      }
      else {
        this.CupResult = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cupResponse
    // Serialize message field [CupResult]
    bufferOffset = _arraySerializer.int32(obj.CupResult, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cupResponse
    let len;
    let data = new cupResponse(null);
    // Deserialize message field [CupResult]
    data.CupResult = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.CupResult.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_pose/cupResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f022abcdee8d409cf204cd68d1527534';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] CupResult
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cupResponse(null);
    if (msg.CupResult !== undefined) {
      resolved.CupResult = msg.CupResult;
    }
    else {
      resolved.CupResult = []
    }

    return resolved;
    }
};

module.exports = {
  Request: cupRequest,
  Response: cupResponse,
  md5sum() { return '82c828fe2774e236745aee3e2d245fe9'; },
  datatype() { return 'aruco_pose/cup'; }
};

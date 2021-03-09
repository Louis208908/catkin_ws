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
      this.ask_cup = null;
    }
    else {
      if (initObj.hasOwnProperty('ask_cup')) {
        this.ask_cup = initObj.ask_cup
      }
      else {
        this.ask_cup = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cupRequest
    // Serialize message field [ask_cup]
    bufferOffset = _serializer.int32(obj.ask_cup, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cupRequest
    let len;
    let data = new cupRequest(null);
    // Deserialize message field [ask_cup]
    data.ask_cup = _deserializer.int32(buffer, bufferOffset);
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
    return '25ae256185f7a2b5556316fe4144f4f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ask_cup
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cupRequest(null);
    if (msg.ask_cup !== undefined) {
      resolved.ask_cup = msg.ask_cup;
    }
    else {
      resolved.ask_cup = 0
    }

    return resolved;
    }
};

class cupResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cup_result = null;
    }
    else {
      if (initObj.hasOwnProperty('cup_result')) {
        this.cup_result = initObj.cup_result
      }
      else {
        this.cup_result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cupResponse
    // Serialize message field [cup_result]
    bufferOffset = _arraySerializer.int32(obj.cup_result, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cupResponse
    let len;
    let data = new cupResponse(null);
    // Deserialize message field [cup_result]
    data.cup_result = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cup_result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aruco_pose/cupResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f032d9fb8f53b20dbf71031171aac863';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] cup_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cupResponse(null);
    if (msg.cup_result !== undefined) {
      resolved.cup_result = msg.cup_result;
    }
    else {
      resolved.cup_result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: cupRequest,
  Response: cupResponse,
  md5sum() { return '1ba64ca04594ee6db0df538fffb0ec78'; },
  datatype() { return 'aruco_pose/cup'; }
};

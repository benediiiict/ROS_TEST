// Auto-generated. Do not edit!

// (in-package ex2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class first_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str1 = null;
      this.str2 = null;
    }
    else {
      if (initObj.hasOwnProperty('str1')) {
        this.str1 = initObj.str1
      }
      else {
        this.str1 = '';
      }
      if (initObj.hasOwnProperty('str2')) {
        this.str2 = initObj.str2
      }
      else {
        this.str2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type first_srvRequest
    // Serialize message field [str1]
    bufferOffset = _serializer.string(obj.str1, buffer, bufferOffset);
    // Serialize message field [str2]
    bufferOffset = _serializer.string(obj.str2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type first_srvRequest
    let len;
    let data = new first_srvRequest(null);
    // Deserialize message field [str1]
    data.str1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [str2]
    data.str2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str1.length;
    length += object.str2.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ex2/first_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34df8d240c5fbb34c73f630b5f4c576b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string str1
    string str2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new first_srvRequest(null);
    if (msg.str1 !== undefined) {
      resolved.str1 = msg.str1;
    }
    else {
      resolved.str1 = ''
    }

    if (msg.str2 !== undefined) {
      resolved.str2 = msg.str2;
    }
    else {
      resolved.str2 = ''
    }

    return resolved;
    }
};

class first_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ans = null;
    }
    else {
      if (initObj.hasOwnProperty('ans')) {
        this.ans = initObj.ans
      }
      else {
        this.ans = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type first_srvResponse
    // Serialize message field [ans]
    bufferOffset = _serializer.string(obj.ans, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type first_srvResponse
    let len;
    let data = new first_srvResponse(null);
    // Deserialize message field [ans]
    data.ans = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ans.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ex2/first_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65c770945c83e7be8dd04ade02be6046';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ans
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new first_srvResponse(null);
    if (msg.ans !== undefined) {
      resolved.ans = msg.ans;
    }
    else {
      resolved.ans = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: first_srvRequest,
  Response: first_srvResponse,
  md5sum() { return '13364833f0478803e63d07b0985a346c'; },
  datatype() { return 'ex2/first_srv'; }
};

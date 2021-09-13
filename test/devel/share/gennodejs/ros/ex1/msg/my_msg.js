// Auto-generated. Do not edit!

// (in-package ex1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class my_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.add = null;
      this.dec = null;
      this.mul = null;
      this.div = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('add')) {
        this.add = initObj.add
      }
      else {
        this.add = 0.0;
      }
      if (initObj.hasOwnProperty('dec')) {
        this.dec = initObj.dec
      }
      else {
        this.dec = 0.0;
      }
      if (initObj.hasOwnProperty('mul')) {
        this.mul = initObj.mul
      }
      else {
        this.mul = 0.0;
      }
      if (initObj.hasOwnProperty('div')) {
        this.div = initObj.div
      }
      else {
        this.div = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_msg
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [add]
    bufferOffset = _serializer.float32(obj.add, buffer, bufferOffset);
    // Serialize message field [dec]
    bufferOffset = _serializer.float32(obj.dec, buffer, bufferOffset);
    // Serialize message field [mul]
    bufferOffset = _serializer.float32(obj.mul, buffer, bufferOffset);
    // Serialize message field [div]
    bufferOffset = _serializer.float32(obj.div, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_msg
    let len;
    let data = new my_msg(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [add]
    data.add = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dec]
    data.dec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mul]
    data.mul = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [div]
    data.div = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ex1/my_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44ff2c22d9a554d1e2d1b68f3b671b07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 add
    float32 dec
    float32 mul
    float32 div
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_msg(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.add !== undefined) {
      resolved.add = msg.add;
    }
    else {
      resolved.add = 0.0
    }

    if (msg.dec !== undefined) {
      resolved.dec = msg.dec;
    }
    else {
      resolved.dec = 0.0
    }

    if (msg.mul !== undefined) {
      resolved.mul = msg.mul;
    }
    else {
      resolved.mul = 0.0
    }

    if (msg.div !== undefined) {
      resolved.div = msg.div;
    }
    else {
      resolved.div = 0.0
    }

    return resolved;
    }
};

module.exports = my_msg;

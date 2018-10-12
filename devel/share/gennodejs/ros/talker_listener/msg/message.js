// Auto-generated. Do not edit!

// (in-package talker_listener.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type message
    // Serialize message field [num]
    bufferOffset = _serializer.int64(obj.num, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type message
    let len;
    let data = new message(null);
    // Deserialize message field [num]
    data.num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'talker_listener/message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0947094fac2afc61bd2294d13ec702ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num
    string text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new message(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = message;

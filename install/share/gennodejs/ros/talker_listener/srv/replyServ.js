// Auto-generated. Do not edit!

// (in-package talker_listener.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class replyServRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numreq = null;
      this.messagereq = null;
    }
    else {
      if (initObj.hasOwnProperty('numreq')) {
        this.numreq = initObj.numreq
      }
      else {
        this.numreq = 0;
      }
      if (initObj.hasOwnProperty('messagereq')) {
        this.messagereq = initObj.messagereq
      }
      else {
        this.messagereq = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type replyServRequest
    // Serialize message field [numreq]
    bufferOffset = _serializer.int64(obj.numreq, buffer, bufferOffset);
    // Serialize message field [messagereq]
    bufferOffset = _serializer.string(obj.messagereq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type replyServRequest
    let len;
    let data = new replyServRequest(null);
    // Deserialize message field [numreq]
    data.numreq = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [messagereq]
    data.messagereq = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.messagereq.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talker_listener/replyServRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '133f9bf15a876a90cd2226ae17d86ca8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 numreq
    string messagereq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new replyServRequest(null);
    if (msg.numreq !== undefined) {
      resolved.numreq = msg.numreq;
    }
    else {
      resolved.numreq = 0
    }

    if (msg.messagereq !== undefined) {
      resolved.messagereq = msg.messagereq;
    }
    else {
      resolved.messagereq = ''
    }

    return resolved;
    }
};

class replyServResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numresp = null;
      this.messageresp = null;
    }
    else {
      if (initObj.hasOwnProperty('numresp')) {
        this.numresp = initObj.numresp
      }
      else {
        this.numresp = 0;
      }
      if (initObj.hasOwnProperty('messageresp')) {
        this.messageresp = initObj.messageresp
      }
      else {
        this.messageresp = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type replyServResponse
    // Serialize message field [numresp]
    bufferOffset = _serializer.int64(obj.numresp, buffer, bufferOffset);
    // Serialize message field [messageresp]
    bufferOffset = _serializer.string(obj.messageresp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type replyServResponse
    let len;
    let data = new replyServResponse(null);
    // Deserialize message field [numresp]
    data.numresp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [messageresp]
    data.messageresp = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.messageresp.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talker_listener/replyServResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '565ae7c77001bb5fe1c48f084ef59f6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 numresp
    string messageresp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new replyServResponse(null);
    if (msg.numresp !== undefined) {
      resolved.numresp = msg.numresp;
    }
    else {
      resolved.numresp = 0
    }

    if (msg.messageresp !== undefined) {
      resolved.messageresp = msg.messageresp;
    }
    else {
      resolved.messageresp = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: replyServRequest,
  Response: replyServResponse,
  md5sum() { return '73bbf8063d124b838da0a702ede341b0'; },
  datatype() { return 'talker_listener/replyServ'; }
};

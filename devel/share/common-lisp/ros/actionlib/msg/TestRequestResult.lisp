; Auto-generated. Do not edit!


(cl:in-package actionlib-msg)


;//! \htmlinclude TestRequestResult.msg.html

(cl:defclass <TestRequestResult> (roslisp-msg-protocol:ros-message)
  ((the_result
    :reader the_result
    :initarg :the_result
    :type cl:integer
    :initform 0)
   (is_simple_server
    :reader is_simple_server
    :initarg :is_simple_server
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TestRequestResult (<TestRequestResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib-msg:<TestRequestResult> is deprecated: use actionlib-msg:TestRequestResult instead.")))

(cl:ensure-generic-function 'the_result-val :lambda-list '(m))
(cl:defmethod the_result-val ((m <TestRequestResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:the_result-val is deprecated.  Use actionlib-msg:the_result instead.")
  (the_result m))

(cl:ensure-generic-function 'is_simple_server-val :lambda-list '(m))
(cl:defmethod is_simple_server-val ((m <TestRequestResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:is_simple_server-val is deprecated.  Use actionlib-msg:is_simple_server instead.")
  (is_simple_server m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestResult>) ostream)
  "Serializes a message object of type '<TestRequestResult>"
  (cl:let* ((signed (cl:slot-value msg 'the_result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_simple_server) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestResult>) istream)
  "Deserializes a message object of type '<TestRequestResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'the_result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_simple_server) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestResult>)))
  "Returns string type for a message object of type '<TestRequestResult>"
  "actionlib/TestRequestResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestResult)))
  "Returns string type for a message object of type 'TestRequestResult"
  "actionlib/TestRequestResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestResult>)))
  "Returns md5sum for a message object of type '<TestRequestResult>"
  "61c2364524499c7c5017e2f3fce7ba06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestResult)))
  "Returns md5sum for a message object of type 'TestRequestResult"
  "61c2364524499c7c5017e2f3fce7ba06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestResult>)))
  "Returns full string definition for message of type '<TestRequestResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 the_result~%bool is_simple_server~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestResult)))
  "Returns full string definition for message of type 'TestRequestResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 the_result~%bool is_simple_server~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestResult>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestResult
    (cl:cons ':the_result (the_result msg))
    (cl:cons ':is_simple_server (is_simple_server msg))
))

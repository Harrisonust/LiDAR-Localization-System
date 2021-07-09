; Auto-generated. Do not edit!


(cl:in-package cuda_amcl-msg)


;//! \htmlinclude vegvisir_msg.msg.html

(cl:defclass <vegvisir_msg> (roslisp-msg-protocol:ros-message)
  ((amcl_pose
    :reader amcl_pose
    :initarg :amcl_pose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped))
   (odom_cal
    :reader odom_cal
    :initarg :odom_cal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass vegvisir_msg (<vegvisir_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vegvisir_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vegvisir_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cuda_amcl-msg:<vegvisir_msg> is deprecated: use cuda_amcl-msg:vegvisir_msg instead.")))

(cl:ensure-generic-function 'amcl_pose-val :lambda-list '(m))
(cl:defmethod amcl_pose-val ((m <vegvisir_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cuda_amcl-msg:amcl_pose-val is deprecated.  Use cuda_amcl-msg:amcl_pose instead.")
  (amcl_pose m))

(cl:ensure-generic-function 'odom_cal-val :lambda-list '(m))
(cl:defmethod odom_cal-val ((m <vegvisir_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cuda_amcl-msg:odom_cal-val is deprecated.  Use cuda_amcl-msg:odom_cal instead.")
  (odom_cal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vegvisir_msg>) ostream)
  "Serializes a message object of type '<vegvisir_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'amcl_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom_cal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vegvisir_msg>) istream)
  "Deserializes a message object of type '<vegvisir_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'amcl_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom_cal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vegvisir_msg>)))
  "Returns string type for a message object of type '<vegvisir_msg>"
  "cuda_amcl/vegvisir_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vegvisir_msg)))
  "Returns string type for a message object of type 'vegvisir_msg"
  "cuda_amcl/vegvisir_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vegvisir_msg>)))
  "Returns md5sum for a message object of type '<vegvisir_msg>"
  "3333a8a596f79d0f0cc6ec9e2ca893e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vegvisir_msg)))
  "Returns md5sum for a message object of type 'vegvisir_msg"
  "3333a8a596f79d0f0cc6ec9e2ca893e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vegvisir_msg>)))
  "Returns full string definition for message of type '<vegvisir_msg>"
  (cl:format cl:nil "geometry_msgs/PoseWithCovarianceStamped amcl_pose~%geometry_msgs/Point odom_cal~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vegvisir_msg)))
  "Returns full string definition for message of type 'vegvisir_msg"
  (cl:format cl:nil "geometry_msgs/PoseWithCovarianceStamped amcl_pose~%geometry_msgs/Point odom_cal~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vegvisir_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'amcl_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom_cal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vegvisir_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'vegvisir_msg
    (cl:cons ':amcl_pose (amcl_pose msg))
    (cl:cons ':odom_cal (odom_cal msg))
))

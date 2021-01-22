# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from aruco_pose/Marker.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import aruco_pose.msg
import geometry_msgs.msg

class Marker(genpy.Message):
  _md5sum = "ac210d89096a042287e44f6279b6b76f"
  _type = "aruco_pose/Marker"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint32 id
float32 length
geometry_msgs/Pose pose
Point2D c1
Point2D c2
Point2D c3
Point2D c4

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: aruco_pose/Point2D
float32 x
float32 y
"""
  __slots__ = ['id','length','pose','c1','c2','c3','c4']
  _slot_types = ['uint32','float32','geometry_msgs/Pose','aruco_pose/Point2D','aruco_pose/Point2D','aruco_pose/Point2D','aruco_pose/Point2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,length,pose,c1,c2,c3,c4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Marker, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.length is None:
        self.length = 0.
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.c1 is None:
        self.c1 = aruco_pose.msg.Point2D()
      if self.c2 is None:
        self.c2 = aruco_pose.msg.Point2D()
      if self.c3 is None:
        self.c3 = aruco_pose.msg.Point2D()
      if self.c4 is None:
        self.c4 = aruco_pose.msg.Point2D()
    else:
      self.id = 0
      self.length = 0.
      self.pose = geometry_msgs.msg.Pose()
      self.c1 = aruco_pose.msg.Point2D()
      self.c2 = aruco_pose.msg.Point2D()
      self.c3 = aruco_pose.msg.Point2D()
      self.c4 = aruco_pose.msg.Point2D()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_If7d8f().pack(_x.id, _x.length, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.c1.x, _x.c1.y, _x.c2.x, _x.c2.y, _x.c3.x, _x.c3.y, _x.c4.x, _x.c4.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.c1 is None:
        self.c1 = aruco_pose.msg.Point2D()
      if self.c2 is None:
        self.c2 = aruco_pose.msg.Point2D()
      if self.c3 is None:
        self.c3 = aruco_pose.msg.Point2D()
      if self.c4 is None:
        self.c4 = aruco_pose.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 96
      (_x.id, _x.length, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.c1.x, _x.c1.y, _x.c2.x, _x.c2.y, _x.c3.x, _x.c3.y, _x.c4.x, _x.c4.y,) = _get_struct_If7d8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_If7d8f().pack(_x.id, _x.length, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.c1.x, _x.c1.y, _x.c2.x, _x.c2.y, _x.c3.x, _x.c3.y, _x.c4.x, _x.c4.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.c1 is None:
        self.c1 = aruco_pose.msg.Point2D()
      if self.c2 is None:
        self.c2 = aruco_pose.msg.Point2D()
      if self.c3 is None:
        self.c3 = aruco_pose.msg.Point2D()
      if self.c4 is None:
        self.c4 = aruco_pose.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 96
      (_x.id, _x.length, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.c1.x, _x.c1.y, _x.c2.x, _x.c2.y, _x.c3.x, _x.c3.y, _x.c4.x, _x.c4.y,) = _get_struct_If7d8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_If7d8f = None
def _get_struct_If7d8f():
    global _struct_If7d8f
    if _struct_If7d8f is None:
        _struct_If7d8f = struct.Struct("<If7d8f")
    return _struct_If7d8f

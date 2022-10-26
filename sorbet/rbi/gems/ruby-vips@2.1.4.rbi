# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ruby-vips` gem.
# Please instead update this file by running `bin/tapioca gem ruby-vips`.

# source://yard/0.9.28/lib/yard.rb#61
::RUBY18 = T.let(T.unsafe(nil), FalseClass)

# source://yard/0.9.28/lib/yard.rb#62
::RUBY19 = T.let(T.unsafe(nil), TrueClass)

# source://ruby-vips//lib/vips.rb#36
module GLib
  extend ::FFI::Library

  def g_free(*_arg0); end
  def g_log_remove_handler(*_arg0); end
  def g_log_set_handler(*_arg0); end
  def g_malloc(*_arg0); end

  class << self
    def g_free(*_arg0); end
    def g_log_remove_handler(*_arg0); end
    def g_log_set_handler(*_arg0); end
    def g_malloc(*_arg0); end

    # Returns the value of attribute logger.
    #
    # source://ruby-vips//lib/vips.rb#38
    def logger; end

    # Sets the attribute logger
    #
    # @param value the value to set the attribute logger to.
    #
    # source://ruby-vips//lib/vips.rb#38
    def logger=(_arg0); end

    # source://ruby-vips//lib/vips.rb#90
    def remove_log_handler; end

    # source://ruby-vips//lib/vips.rb#97
    def set_log_domain(domain); end
  end
end

# map glib levels to Logger::Severity
#
# source://ruby-vips//lib/vips.rb#71
GLib::GLIB_TO_SEVERITY = T.let(T.unsafe(nil), Hash)

# save the FFI::Function that attach will return ... we can use it directly
# as a param for callbacks
#
# source://ruby-vips//lib/vips.rb#51
GLib::G_FREE = T.let(T.unsafe(nil), FFI::Function)

# source://ruby-vips//lib/vips.rb#60
GLib::LOG_FLAG_FATAL = T.let(T.unsafe(nil), Integer)

# log flags
#
# source://ruby-vips//lib/vips.rb#59
GLib::LOG_FLAG_RECURSION = T.let(T.unsafe(nil), Integer)

# module-level, so it's not GCd away
#
# source://ruby-vips//lib/vips.rb#86
GLib::LOG_HANDLER = T.let(T.unsafe(nil), Proc)

# always fatal
#
# source://ruby-vips//lib/vips.rb#64
GLib::LOG_LEVEL_CRITICAL = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#68
GLib::LOG_LEVEL_DEBUG = T.let(T.unsafe(nil), Integer)

# GLib log levels
#
# source://ruby-vips//lib/vips.rb#63
GLib::LOG_LEVEL_ERROR = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#67
GLib::LOG_LEVEL_INFO = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#66
GLib::LOG_LEVEL_MESSAGE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#65
GLib::LOG_LEVEL_WARNING = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#134
module GObject
  extend ::FFI::Library

  def g_object_get_property(*_arg0); end
  def g_object_ref(*_arg0); end
  def g_object_set_property(*_arg0); end
  def g_object_unref(*_arg0); end
  def g_param_spec_get_blurb(*_arg0); end
  def g_signal_connect_data(*_arg0); end
  def g_type_from_name(*_arg0); end
  def g_type_fundamental(*_arg0); end
  def g_type_init(*_arg0); end
  def g_type_name(*_arg0); end
  def g_value_get_boolean(*_arg0); end
  def g_value_get_double(*_arg0); end
  def g_value_get_enum(*_arg0); end
  def g_value_get_flags(*_arg0); end
  def g_value_get_int(*_arg0); end
  def g_value_get_object(*_arg0); end
  def g_value_get_string(*_arg0); end
  def g_value_get_uint64(*_arg0); end
  def g_value_init(*_arg0); end
  def g_value_set_boolean(*_arg0); end
  def g_value_set_double(*_arg0); end
  def g_value_set_enum(*_arg0); end
  def g_value_set_flags(*_arg0); end
  def g_value_set_int(*_arg0); end
  def g_value_set_object(*_arg0); end
  def g_value_set_string(*_arg0); end
  def g_value_set_uint64(*_arg0); end
  def g_value_unset(*_arg0); end

  class << self
    def g_object_get_property(*_arg0); end
    def g_object_ref(*_arg0); end
    def g_object_set_property(*_arg0); end
    def g_object_unref(*_arg0); end
    def g_param_spec_get_blurb(*_arg0); end
    def g_signal_connect_data(*_arg0); end
    def g_type_from_name(*_arg0); end
    def g_type_fundamental(*_arg0); end
    def g_type_init(*_arg0); end
    def g_type_name(*_arg0); end
    def g_value_get_boolean(*_arg0); end
    def g_value_get_double(*_arg0); end
    def g_value_get_enum(*_arg0); end
    def g_value_get_flags(*_arg0); end
    def g_value_get_int(*_arg0); end
    def g_value_get_object(*_arg0); end
    def g_value_get_string(*_arg0); end
    def g_value_get_uint64(*_arg0); end
    def g_value_init(*_arg0); end
    def g_value_set_boolean(*_arg0); end
    def g_value_set_double(*_arg0); end
    def g_value_set_enum(*_arg0); end
    def g_value_set_flags(*_arg0); end
    def g_value_set_int(*_arg0); end
    def g_value_set_object(*_arg0); end
    def g_value_set_string(*_arg0); end
    def g_value_set_uint64(*_arg0); end
    def g_value_unset(*_arg0); end
  end
end

# look up some common gtypes
#
# source://ruby-vips//lib/vips.rb#155
GObject::GBOOL_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#158
GObject::GDOUBLE_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#159
GObject::GENUM_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#160
GObject::GFLAGS_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#156
GObject::GINT_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#162
GObject::GOBJECT_TYPE = T.let(T.unsafe(nil), Integer)

# we have a number of things we need to inherit in different ways:
#
# - we want to be able to subclass GObject in Ruby in a simple way
# - the layouts of the nested structs need to inherit
# - we need to be able to cast between structs which share a base struct
#   without creating new wrappers or messing up refcounting
# - we need automatic gobject refcounting
#
# the solution is to split the class into four areas which we treat
# differently:
#
# - we have a "wrapper" Ruby class to allow easy subclassing ... this has a
#   @struct member which holds the actual pointer
# - we use "forwardable" to forward the various ffi methods on to the
#   @struct member ... we arrange things so that subclasses do not need to
#   do the forwarding themselves
# - we have two versions of the struct: a plain one which we can use for
#   casting that will not change the refcounts
# - and a managed one with an unref which we just use for .new
# - we separate the struct layout into a separate module to avoid repeating
#   ourselves
#
# source://ruby-vips//lib/vips/gobject.rb#33
class GObject::GObject
  extend ::Forwardable
  extend ::SingleForwardable

  # don't allow ptr == nil, we never want to allocate a GObject struct
  # ourselves, we just want to wrap GLib-allocated GObjects
  #
  # here we use ManagedStruct, not Struct, since this is the ref that will
  # need the unref
  #
  # @return [GObject] a new instance of GObject
  #
  # source://ruby-vips//lib/vips/gobject.rb#75
  def initialize(ptr); end

  # source://forwardable/1.3.2/forwardable.rb#229
  def [](*args, **_arg1, &block); end

  # access to the managed struct for this class
  #
  # source://ruby-vips//lib/vips/gobject.rb#100
  def ffi_managed_struct; end

  # access to the casting struct for this class
  #
  # source://ruby-vips//lib/vips/gobject.rb#85
  def ffi_struct; end

  # get the pointer we were built from ... #to_ptr gets the pointer after we
  # have wrapped it up with an auto unref
  #
  # source://ruby-vips//lib/vips/gobject.rb#91
  def ptr; end

  # Returns the value of attribute references.
  #
  # source://ruby-vips//lib/vips/gobject.rb#40
  def references; end

  # source://forwardable/1.3.2/forwardable.rb#229
  def to_ptr(*args, **_arg1, &block); end

  class << self
    # source://ruby-vips//lib/vips/gobject.rb#105
    def ffi_managed_struct; end

    # source://ruby-vips//lib/vips/gobject.rb#94
    def ffi_struct; end

    # source://forwardable/1.3.2/forwardable.rb#229
    def ptr(*args, **_arg1, &block); end
  end
end

# the layout of the GObject struct
#
# source://ruby-vips//lib/vips/gobject.rb#43
module GObject::GObject::GObjectLayout
  class << self
    # @private
    #
    # source://ruby-vips//lib/vips/gobject.rb#44
    def included(base); end
  end
end

# the struct with unref ... manage object lifetime with this
#
# source://ruby-vips//lib/vips/gobject.rb#54
class GObject::GObject::ManagedStruct < ::FFI::ManagedStruct
  include ::GObject::GObject::GObjectLayout

  class << self
    # source://ruby-vips//lib/vips/gobject.rb#57
    def release(ptr); end
  end
end

# the plain struct ... cast with this
#
# source://ruby-vips//lib/vips/gobject.rb#66
class GObject::GObject::Struct < ::FFI::Struct
  include ::GObject::GObject::GObjectLayout
end

# source://ruby-vips//lib/vips/gobject.rb#112
class GObject::GParamSpec < ::FFI::Struct; end

# source://ruby-vips//lib/vips/gobject.rb#120
class GObject::GParamSpecPtr < ::FFI::Struct; end

# source://ruby-vips//lib/vips.rb#161
GObject::GSTR_TYPE = T.let(T.unsafe(nil), Integer)

# source://ruby-vips//lib/vips.rb#157
GObject::GUINT64_TYPE = T.let(T.unsafe(nil), Integer)

# Represent a GValue. Example use:
#
# ```ruby
# gvalue = GValue::alloc
# gvalue.init GObject::GDOUBLE_TYPE
# gvalue.set 3.1415
# value = gvalue.get
# # optional -- drop any ref the gvalue had
# gvalue.unset
# ```
#
# Lifetime is managed automatically. It doesn't know about all GType values,
# but it does know the ones that libvips uses.
#
# source://ruby-vips//lib/vips/gvalue.rb#23
class GObject::GValue < ::FFI::ManagedStruct
  # Get the value of a GValue. The value is converted to a Ruby type in
  # the obvious way.
  #
  # @return [Any] the value held by the GValue
  #
  # source://ruby-vips//lib/vips/gvalue.rb#171
  def get; end

  # Set the type of thing a gvalue can hold.
  #
  # @param gtype [GType] the type of thing this GValue can hold.
  #
  # source://ruby-vips//lib/vips/gvalue.rb#79
  def init(gtype); end

  # Set the value of a GValue. The value is converted to the type of the
  # GValue, if possible.
  #
  # @param value [Any] The value to set
  #
  # source://ruby-vips//lib/vips/gvalue.rb#87
  def set(value); end

  # Clear the thing held by a GValue.
  #
  # This happens automatically when a GValue is GCed, but this method can be
  # handy if you need to drop a reference explicitly for some reason.
  #
  # source://ruby-vips//lib/vips/gvalue.rb#253
  def unset; end

  class << self
    # Allocate memory for a GValue and return a class wrapper. Memory will
    # be freed automatically when it goes out of scope. The GValue is inited
    # to 0, use {GValue.init} to set a type.
    #
    # @return [GValue] a new gvalue set to 0
    #
    # source://ruby-vips//lib/vips/gvalue.rb#63
    def alloc; end

    # convert an enum value (str/symb/int) into an int ready for libvips
    #
    # source://ruby-vips//lib/vips/gvalue.rb#28
    def from_nick(gtype, value); end

    # source://ruby-vips//lib/vips/gvalue.rb#53
    def release(ptr); end

    # convert an int enum back into a symbol
    #
    # source://ruby-vips//lib/vips/gvalue.rb#44
    def to_nick(gtype, enum_value); end
  end
end

class Object < ::BasicObject
  include ::Kernel

  private

  # source://ruby-vips//lib/vips.rb#26
  def library_name(name, abi_number); end
end

# This module provides a binding for the [libvips image processing
# library](https://libvips.github.io/libvips/).
#
# # Example
#
# ```ruby
# require 'vips'
#
# if ARGV.length < 2
#     raise "usage: #{$PROGRAM_NAME}: input-file output-file"
# end
#
# im = Vips::Image.new_from_file ARGV[0], access: :sequential
#
# im *= [1, 2, 1]
#
# mask = Vips::Image.new_from_array [
#         [-1, -1, -1],
#         [-1, 16, -1],
#         [-1, -1, -1]
#        ], 8
# im = im.conv mask, precision: :integer
#
# im.write_to_file ARGV[1]
# ```
#
# This example loads a file, boosts the green channel (I'm not sure why),
# sharpens the image, and saves it back to disc again.
#
# Reading this example line by line, we have:
#
# ```ruby
# im = Vips::Image.new_from_file ARGV[0], access: :sequential
# ```
#
# {Image.new_from_file} can load any image file supported by vips. In this
# example, we will be accessing pixels top-to-bottom as we sweep through the
# image reading and writing, so `:sequential` access mode is best for us. The
# default mode is `:random`: this allows for full random access to image pixels,
# but is slower and needs more memory. See {Access}
# for full details
# on the various modes available.
#
# You can also load formatted images from memory buffers, create images that
# wrap C-style memory arrays, or make images from constants. Use {Source}
# and {Image.new_from_source} to load images from any data source, for
# example URIs.
#
# The next line:
#
# ```ruby
# im *= [1, 2, 1]
# ```
#
# Multiplying the image by an array constant uses one array element for each
# image band. This line assumes that the input image has three bands and will
# double the middle band. For RGB images, that's doubling green.
#
# Next we have:
#
# ```ruby
# mask = Vips::Image.new_from_array [
#         [-1, -1, -1],
#         [-1, 16, -1],
#         [-1, -1, -1]
#        ], 8
# im = im.conv mask, precision: :integer
# ```
#
# {Image.new_from_array} creates an image from an array constant. The 8 at
# the end sets the scale: the amount to divide the image by after
# integer convolution.
#
# See the libvips API docs for `vips_conv()` (the operation
# invoked by {Image#conv}) for details on the convolution operator. By default,
# it computes with a float mask, but `:integer` is fine for this case, and is
# much faster.
#
# Finally:
#
# ```ruby
# im.write_to_file ARGV[1]
# ```
#
# {Image#write_to_file} writes an image back to the filesystem. It can
# write any format supported by vips: the file type is set from the filename
# suffix. You can also write formatted images to memory buffers, or dump
# image data to a raw memory array.
#
# Use {Target} and {Image#write_to_target} to write formatted images to
# any data sink, for example URIs.
#
# # How it works
#
# The binding uses [ruby-ffi](https://github.com/ffi/ffi) to open the libvips
# shared library. When you call a method on the image class, it uses libvips
# introspection system (based on GObject) to search the
# library for an operation of that name, transforms the arguments to a form
# libvips can digest, and runs the operation.
#
# This means ruby-vips always presents the API implemented by the libvips shared
# library. It should update itself as new features are added.
#
# # Automatic wrapping
#
# `ruby-vips` adds a {Image.method_missing} handler to {Image} and uses
# it to look up vips operations. For example, the libvips operation `add`, which
# appears in C as `vips_add()`, appears in Ruby as {Image#add}.
#
# The operation's list of required arguments is searched and the first input
# image is set to the value of `self`. Operations which do not take an input
# image, such as {Image.black}, appear as class methods. The remainder of
# the arguments you supply in the function call are used to set the other
# required input arguments. Any trailing keyword arguments are used to set
# options on the operation.
#
# The result is the required output
# argument if there is only one result, or an array of values if the operation
# produces several results. If the operation has optional output objects, they
# are returned as a final hash.
#
# For example, {Image#min}, the vips operation that searches an image for
# the minimum value, has a large number of optional arguments. You can use it to
# find the minimum value like this:
#
# ```ruby
# min_value = image.min
# ```
#
# You can ask it to return the position of the minimum with `:x` and `:y`.
#
# ```ruby
# min_value, opts = min x: true, y: true
# x_pos = opts['x']
# y_pos = opts['y']
# ```
#
# Now `x_pos` and `y_pos` will have the coordinates of the minimum value.
# There's actually a convenience method for this, {Image#minpos}.
#
# You can also ask for the top *n* minimum, for example:
#
# ```ruby
# min_value, opts = min size: 10, x_array: true, y_array: true
# x_pos = opts['x_array']
# y_pos = opts['y_array']
# ```
#
# Now `x_pos` and `y_pos` will be 10-element arrays.
#
# Because operations are member functions and return the result image, you can
# chain them. For example, you can write:
#
# ```ruby
# result_image = image.real.cos
# ```
#
# to calculate the cosine of the real part of a complex image.
# There are also a full set
# of arithmetic operator overloads, see below.
#
# libvips types are also automatically wrapped. The override looks at the type
# of argument required by the operation and converts the value you supply,
# when it can. For example, {Image#linear} takes a `VipsArrayDouble` as
# an argument
# for the set of constants to use for multiplication. You can supply this
# value as an integer, a float, or some kind of compound object and it
# will be converted for you. You can write:
#
# ```ruby
# result_image = image.linear 1, 3
# result_image = image.linear 12.4, 13.9
# result_image = image.linear [1, 2, 3], [4, 5, 6]
# result_image = image.linear 1, [4, 5, 6]
# ```
#
# And so on. A set of overloads are defined for {Image#linear}, see below.
#
# It does a couple of more ambitious conversions. It will automatically convert
# to and from the various vips types, like `VipsBlob` and `VipsArrayImage`. For
# example, you can read the ICC profile out of an image like this:
#
# ```ruby
# profile = im.get_value "icc-profile-data"
# ```
#
# and profile will be a byte array.
#
# If an operation takes several input images, you can use a constant for all but
# one of them and the wrapper will expand the constant to an image for you. For
# example, {Image#ifthenelse} uses a condition image to pick pixels
# between a then and an else image:
#
# ```ruby
# result_image = condition_image.ifthenelse then_image, else_image
# ```
#
# You can use a constant instead of either the then or the else parts and it
# will be expanded to an image for you. If you use a constant for both then and
# else, it will be expanded to match the condition image. For example:
#
# ```ruby
# result_image = condition_image.ifthenelse [0, 255, 0], [255, 0, 0]
# ```
#
# Will make an image where true pixels are green and false pixels are red.
#
# This is useful for {Image#bandjoin}, the thing to join two or more
# images up bandwise. You can write:
#
# ```ruby
# rgba = rgb.bandjoin 255
# ```
#
# to append a constant 255 band to an image, perhaps to add an alpha channel. Of
# course you can also write:
#
# ```ruby
# result_image = image1.bandjoin image2
# result_image = image1.bandjoin [image2, image3]
# result_image = Vips::Image.bandjoin [image1, image2, image3]
# result_image = image1.bandjoin [image2, 255]
# ```
#
# and so on.
#
# # Logging
#
# Libvips uses g_log() to log warning, debug, info and (some) error messages.
#
# https://developer.gnome.org/glib/stable/glib-Message-Logging.html
#
# You can disable warnings by defining the `VIPS_WARNING` environment variable.
# You can enable info output by defining `VIPS_INFO`.
#
# # Exceptions
#
# The wrapper spots errors from vips operations and raises the {Vips::Error}
# exception. You can catch it in the usual way.
#
# # Automatic YARD documentation
#
# The bulk of these API docs are generated automatically by {Yard#generate}.
# It examines libvips and writes a summary of each operation and the arguments
# and options that that operation expects.
#
# Use the [C API # docs](https://libvips.github.io/libvips/API/current)
# for more detail.
#
# # Enums
#
# The libvips enums, such as `VipsBandFormat` appear in ruby-vips as Symbols
# like `:uchar`. They are documented as a set of classes for convenience, see
# {Vips::BandFormat}, for example.
#
# # Draw operations
#
# There are two ways of calling the libvips draw operations, like
# {Image#draw_circle} and {Image#draw_line}.
#
# First, you can use them like functions. For example:
#
# ```ruby
# y = x.draw_line 255, 0, 0, x.width, x.height
# ```
#
# This will make a new image, `y`, which is a copy of `x` but with a line
# drawn across it. `x` is unchanged.
#
# This is simple, but will be slow if you want to draw many lines, since
# ruby-vips will make a copy of the whole image each time.
#
# You can use {Image#mutate} to make a {MutableImage}. This is an image which
# is unshared and is only available inside the {Image#mutate} block. Within
# this block, you can use `!` versions of the draw operations to modify images
# and avoid the copy. For example:
#
# ```ruby
# image = image.mutate do |mutable|
#   (0 ... 1).step(0.01) do |i|
#     mutable.draw_line! 255, mutable.width * i, 0, 0, mutable.height * (1 - i)
#   end
# end
# ```
#
# Now each {Image#draw_line} will directly modify the mutable image, saving
# the copy. This is much faster and needs much less memory.
#
# # Metadata read
#
# Use {Image#get_fields} to get a list of the metadata fields that an image
# supports. ICC profiles, for example, are in a field called
# `icc-profile-data`. Use `vipsheader -a something.jpg` at the command-line
# to see all the fields on an image.
#
# Use {Image#get_typeof} to get the type of a field. Types are integers, with
# 0 meaning "no such field". Constants like {GObject::GINT_TYPE} are useful for
# testing field types.
#
# You can read image metadata using {Image#get}. The field value is converted
# to a Ruby value in the obvious way.
#
# # Metadata write
#
# You can also set and remove image metadata fields. Images are immutable, so
# you must make any changes inside a {Image#mutate} block. For example:
#
# ```ruby
# image = image.mutate do |mutable|
#   image.get_fields.each do |field|
#     mutable.remove! field unless field == "icc-profile-data"
#   end
# end
# ```
#
# To remove all metadata except the icc profile.
#
# You can use {MutableImage#set!} to change the value of an existing field,
# and {MutableImage#set_type!} to create a new field with a specified type.
#
# # Progress
#
# You can attach signal handlers to images to watch computation progress. For
# example:
#
# ```ruby
# image = Vips::Image.black 1, 100000
# image.set_progress true
#
# def progress_to_s(name, progress)
#   puts "#{name}:"
#   puts "    run = #{progress[:run]}"
#   puts "    eta = #{progress[:eta]}"
#   puts "    tpels = #{progress[:tpels]}"
#   puts "    npels = #{progress[:npels]}"
#   puts "    percent = #{progress[:percent]}"
# end
#
# image.signal_connect :preeval do |progress|
#   progress_to_s("preeval", progress)
# end
#
# image.signal_connect :eval do |progress|
#   progress_to_s("eval", progress)
#   image.set_kill(true) if progress[:percent] > 50
# end
#
# image.signal_connect :posteval do |progress|
#   progress_to_s("posteval", progress)
# end
#
# image.avg
# ```
#
# The `:eval` signal will fire for every tile that is processed. You can stop
# progress with {Image#set_kill} and processing will end with an exception.
#
# User streams
#
# You can make your own input and output stream objects with {SourceCustom} and
# {TargetCustom}. For example:
#
# ```ruby
# file = File.open "some/file", "rb"
# source = Vips::SourceCustom.new
# source.on_read { |length| file.read length }
# image = Vips::Image.new_from_source source, "", access: "sequential"
# ```
#
# # Overloads
#
# The wrapper defines the usual set of arithmetic, boolean and relational
# overloads on image. You can mix images, constants and lists of constants
# (almost) freely. For example, you can write:
#
# ```ruby
# result_image = ((image * [1, 2, 3]).abs < 128) | 4
# ```
#
# # Expansions
#
# Some vips operators take an enum to select an action, for example
# {Image#math} can be used to calculate sine of every pixel like this:
#
# ```ruby
# result_image = image.math :sin
# ```
#
# This is annoying, so the wrapper expands all these enums into separate members
# named after the enum. So you can write:
#
# ```ruby
# result_image = image.sin
# ```
#
# # Convenience functions
#
# The wrapper defines a few extra useful utility functions:
# {Image#get_value}, {Image#set_value}, {Image#bandsplit},
# {Image#maxpos}, {Image#minpos},
# {Image#median}.
#
# source://ruby-vips//lib/vips.rb#570
module Vips
  extend ::FFI::Library
end

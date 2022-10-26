# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ffi-compiler` gem.
# Please instead update this file by running `bin/tapioca gem ffi-compiler`.

# source://ffi-compiler//lib/ffi-compiler/loader.rb#5
module FFI
  class << self
    # source://ffi/1.15.5/lib/ffi/types.rb#45
    def add_typedef(old, add); end

    # source://ffi/1.15.5/lib/ffi/errno.rb#34
    def errno; end

    # source://ffi/1.15.5/lib/ffi/errno.rb#40
    def errno=(error); end

    # @raise [TypeError]
    #
    # source://ffi/1.15.5/lib/ffi/types.rb#56
    def find_type(name, type_map = T.unsafe(nil)); end

    # source://ffi/1.15.5/lib/ffi/library.rb#44
    def map_library_name(lib); end

    # source://ffi/1.15.5/lib/ffi/types.rb#176
    def type_size(type); end

    # source://ffi/1.15.5/lib/ffi/types.rb#40
    def typedef(old, add); end
  end
end

class FFI::ArrayType < ::FFI::Type
  def initialize(_arg0, _arg1); end

  def elem_type; end
  def length; end
end

class FFI::Buffer < ::FFI::AbstractMemory
  def initialize(*_arg0); end

  def +(_arg0); end
  def inspect; end
  def length; end
  def order(*_arg0); end
  def slice(_arg0, _arg1); end

  private

  def initialize_copy(_arg0); end

  class << self
    def alloc_in(*_arg0); end
    def alloc_inout(*_arg0); end
    def alloc_out(*_arg0); end
    def new_in(*_arg0); end
    def new_inout(*_arg0); end
    def new_out(*_arg0); end
  end
end

# source://ffi/1.15.5/lib/ffi/library.rb#32
FFI::CURRENT_PROCESS = T.let(T.unsafe(nil), Object)

FFI::CallbackInfo = FFI::FunctionType

# source://ffi-compiler//lib/ffi-compiler/platform.rb#1
module FFI::Compiler; end

# source://ffi-compiler//lib/ffi-compiler/loader.rb#7
module FFI::Compiler::Loader
  class << self
    # source://ffi-compiler//lib/ffi-compiler/loader.rb#24
    def caller_path(line = T.unsafe(nil)); end

    # @raise [LoadError]
    #
    # source://ffi-compiler//lib/ffi-compiler/loader.rb#8
    def find(name, start_path = T.unsafe(nil)); end
  end
end

# source://ffi-compiler//lib/ffi-compiler/platform.rb#2
class FFI::Compiler::Platform
  # source://ffi-compiler//lib/ffi-compiler/platform.rb#13
  def arch; end

  # @return [Boolean]
  #
  # source://ffi-compiler//lib/ffi-compiler/platform.rb#25
  def mac?; end

  # source://ffi-compiler//lib/ffi-compiler/platform.rb#9
  def map_library_name(name); end

  # source://ffi-compiler//lib/ffi-compiler/platform.rb#21
  def name; end

  # source://ffi-compiler//lib/ffi-compiler/platform.rb#17
  def os; end

  class << self
    # source://ffi-compiler//lib/ffi-compiler/platform.rb#5
    def system; end
  end
end

# source://ffi-compiler//lib/ffi-compiler/platform.rb#3
FFI::Compiler::Platform::LIBSUFFIX = T.let(T.unsafe(nil), String)

class FFI::DynamicLibrary
  def initialize(_arg0, _arg1); end

  def find_function(_arg0); end
  def find_symbol(_arg0); end
  def find_variable(_arg0); end
  def last_error; end
  def name; end

  class << self
    def last_error; end
    def open(_arg0, _arg1); end
  end
end

FFI::DynamicLibrary::RTLD_ALL_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_BINDING_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_DEEPBIND = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_FIRST = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_GLOBAL = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LAZY = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LOCAL = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LOCATION_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_MEMBER = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NODELETE = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NOLOAD = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NOW = T.let(T.unsafe(nil), Integer)

class FFI::DynamicLibrary::Symbol < ::FFI::Pointer
  def inspect; end

  private

  def initialize_copy(_arg0); end
end

class FFI::Function < ::FFI::Pointer
  # @return [Function] a new instance of Function
  def initialize(*_arg0); end

  def attach(_arg0, _arg1); end
  def autorelease; end
  def autorelease=(_arg0); end
  def autorelease?; end
  def call(*_arg0); end
  def free; end

  private

  def initialize_copy(_arg0); end
end

FFI::FunctionInfo = FFI::FunctionType

class FFI::FunctionType < ::FFI::Type
  def initialize(*_arg0); end

  def param_types; end
  def result_type; end
end

module FFI::LastError
  private

  def error; end
  def error=(_arg0); end

  class << self
    def error; end
    def error=(_arg0); end
  end
end

class FFI::MemoryPointer < ::FFI::Pointer
  def initialize(*_arg0); end

  class << self
    def from_string(_arg0); end
  end
end

FFI::NativeLibrary = FFI::DynamicLibrary
module FFI::NativeType; end
FFI::NativeType::BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)
class FFI::NullPointerError < ::RuntimeError; end
FFI::SizeTypes = T.let(T.unsafe(nil), Hash)

class FFI::StructByValue < ::FFI::Type
  # @return [StructByValue] a new instance of StructByValue
  def initialize(_arg0); end

  def layout; end
  def struct_class; end
end

FFI::TYPE_BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type
  # @return [Type] a new instance of Type
  def initialize(_arg0); end

  def alignment; end
  def inspect; end
  def size; end
end

FFI::Type::Array = FFI::ArrayType
FFI::Type::BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type::Builtin < ::FFI::Type
  def inspect; end
end

FFI::Type::CHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::DOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::Function = FFI::FunctionType
FFI::Type::INT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type::Mapped < ::FFI::Type
  def initialize(_arg0); end

  def from_native(*_arg0); end
  def native_type; end
  def to_native(*_arg0); end
  def type; end
end

FFI::Type::POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SCHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SINT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SLONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SLONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SSHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::Struct = FFI::StructByValue
FFI::Type::UCHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::ULONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::USHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TypeDefs = T.let(T.unsafe(nil), Hash)

# source://ffi/1.15.5/lib/ffi/library.rb#32
FFI::USE_THIS_PROCESS_AS_LIBRARY = T.let(T.unsafe(nil), Object)

# source://ffi/1.15.5/lib/ffi/version.rb#2
FFI::VERSION = T.let(T.unsafe(nil), String)

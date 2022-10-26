# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `jwt` gem.
# Please instead update this file by running `bin/tapioca gem jwt`.

# JSON Web Token implementation
#
# Should be up to date with the latest spec:
# https://tools.ietf.org/html/rfc7519
#
# source://jwt//lib/jwt/version.rb#4
module JWT
  extend ::JWT::Configuration

  private

  # source://jwt//lib/jwt.rb#28
  def decode(jwt, key = T.unsafe(nil), verify = T.unsafe(nil), options = T.unsafe(nil), &keyfinder); end

  # source://jwt//lib/jwt.rb#21
  def encode(payload, key, algorithm = T.unsafe(nil), header_fields = T.unsafe(nil)); end

  class << self
    # source://jwt//lib/jwt.rb#28
    def decode(jwt, key = T.unsafe(nil), verify = T.unsafe(nil), options = T.unsafe(nil), &keyfinder); end

    # source://jwt//lib/jwt.rb#21
    def encode(payload, key, algorithm = T.unsafe(nil), header_fields = T.unsafe(nil)); end

    # source://jwt//lib/jwt/version.rb#5
    def gem_version; end

    # @return [Boolean]
    #
    # source://jwt//lib/jwt/version.rb#24
    def openssl_3?; end
  end
end

# Signature logic for JWT
#
# source://jwt//lib/jwt/algos/hmac.rb#4
module JWT::Algos
  extend ::JWT::Algos

  # source://jwt//lib/jwt/algos.rb#27
  def find(algorithm); end

  private

  # source://jwt//lib/jwt/algos.rb#33
  def indexed; end
end

# source://jwt//lib/jwt/algos.rb#17
JWT::Algos::ALGOS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/ecdsa.rb#5
module JWT::Algos::Ecdsa
  private

  # source://jwt//lib/jwt/algos/ecdsa.rb#57
  def curve_by_name(name); end

  # source://jwt//lib/jwt/algos/ecdsa.rb#33
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/ecdsa.rb#45
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/ecdsa.rb#57
    def curve_by_name(name); end

    # source://jwt//lib/jwt/algos/ecdsa.rb#33
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/ecdsa.rb#45
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/ecdsa.rb#8
JWT::Algos::Ecdsa::NAMED_CURVES = T.let(T.unsafe(nil), Hash)

# source://jwt//lib/jwt/algos/ecdsa.rb#31
JWT::Algos::Ecdsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/eddsa.rb#5
module JWT::Algos::Eddsa
  private

  # source://jwt//lib/jwt/algos/eddsa.rb#10
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/eddsa.rb#22
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/eddsa.rb#10
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/eddsa.rb#22
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/eddsa.rb#8
JWT::Algos::Eddsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/hmac.rb#5
module JWT::Algos::Hmac
  private

  # source://jwt//lib/jwt/algos/hmac.rb#10
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/hmac.rb#21
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/hmac.rb#10
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/hmac.rb#21
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/hmac.rb#8
JWT::Algos::Hmac::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/none.rb#5
module JWT::Algos::None
  private

  # source://jwt//lib/jwt/algos/none.rb#10
  def sign(*_arg0); end

  # source://jwt//lib/jwt/algos/none.rb#12
  def verify(*_arg0); end

  class << self
    # source://jwt//lib/jwt/algos/none.rb#10
    def sign(*_arg0); end

    # source://jwt//lib/jwt/algos/none.rb#12
    def verify(*_arg0); end
  end
end

# source://jwt//lib/jwt/algos/none.rb#8
JWT::Algos::None::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/ps.rb#5
module JWT::Algos::Ps
  private

  # source://jwt//lib/jwt/algos/ps.rb#32
  def require_openssl!; end

  # source://jwt//lib/jwt/algos/ps.rb#12
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/ps.rb#26
  def verify(to_verify); end

  class << self
    # source://jwt//lib/jwt/algos/ps.rb#32
    def require_openssl!; end

    # @raise [EncodeError]
    #
    # source://jwt//lib/jwt/algos/ps.rb#12
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/ps.rb#26
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/ps.rb#10
JWT::Algos::Ps::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/rsa.rb#5
module JWT::Algos::Rsa
  private

  # source://jwt//lib/jwt/algos/rsa.rb#10
  def sign(to_sign); end

  # source://jwt//lib/jwt/algos/rsa.rb#17
  def verify(to_verify); end

  class << self
    # @raise [EncodeError]
    #
    # source://jwt//lib/jwt/algos/rsa.rb#10
    def sign(to_sign); end

    # source://jwt//lib/jwt/algos/rsa.rb#17
    def verify(to_verify); end
  end
end

# source://jwt//lib/jwt/algos/rsa.rb#8
JWT::Algos::Rsa::SUPPORTED = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/algos/unsupported.rb#5
module JWT::Algos::Unsupported
  private

  # source://jwt//lib/jwt/algos/unsupported.rb#10
  def sign(*_arg0); end

  # source://jwt//lib/jwt/algos/unsupported.rb#14
  def verify(*_arg0); end

  class << self
    # @raise [NotImplementedError]
    #
    # source://jwt//lib/jwt/algos/unsupported.rb#10
    def sign(*_arg0); end

    # @raise [JWT::VerificationError]
    #
    # source://jwt//lib/jwt/algos/unsupported.rb#14
    def verify(*_arg0); end
  end
end

# source://jwt//lib/jwt/algos/unsupported.rb#8
JWT::Algos::Unsupported::SUPPORTED = T.let(T.unsafe(nil), Array)

# Base64 helpers
#
# source://jwt//lib/jwt/base64.rb#7
class JWT::Base64
  class << self
    # source://jwt//lib/jwt/base64.rb#13
    def url_decode(str); end

    # source://jwt//lib/jwt/base64.rb#9
    def url_encode(str); end
  end
end

# source://jwt//lib/jwt/claims_validator.rb#6
class JWT::ClaimsValidator
  # @return [ClaimsValidator] a new instance of ClaimsValidator
  #
  # source://jwt//lib/jwt/claims_validator.rb#13
  def initialize(payload); end

  # source://jwt//lib/jwt/claims_validator.rb#17
  def validate!; end

  private

  # @raise [InvalidPayload]
  #
  # source://jwt//lib/jwt/claims_validator.rb#31
  def validate_is_numeric(claim); end

  # source://jwt//lib/jwt/claims_validator.rb#25
  def validate_numeric_claims; end
end

# source://jwt//lib/jwt/claims_validator.rb#7
JWT::ClaimsValidator::NUMERIC_CLAIMS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/configuration/decode_configuration.rb#4
module JWT::Configuration
  # source://jwt//lib/jwt/configuration.rb#11
  def configuration; end

  # @yield [configuration]
  #
  # source://jwt//lib/jwt/configuration.rb#7
  def configure; end
end

# source://jwt//lib/jwt/configuration/container.rb#8
class JWT::Configuration::Container
  # @return [Container] a new instance of Container
  #
  # source://jwt//lib/jwt/configuration/container.rb#11
  def initialize; end

  # Returns the value of attribute decode.
  #
  # source://jwt//lib/jwt/configuration/container.rb#9
  def decode; end

  # Sets the attribute decode
  #
  # @param value the value to set the attribute decode to.
  #
  # source://jwt//lib/jwt/configuration/container.rb#9
  def decode=(_arg0); end

  # Returns the value of attribute jwk.
  #
  # source://jwt//lib/jwt/configuration/container.rb#9
  def jwk; end

  # Sets the attribute jwk
  #
  # @param value the value to set the attribute jwk to.
  #
  # source://jwt//lib/jwt/configuration/container.rb#9
  def jwk=(_arg0); end

  # source://jwt//lib/jwt/configuration/container.rb#15
  def reset!; end
end

# source://jwt//lib/jwt/configuration/decode_configuration.rb#5
class JWT::Configuration::DecodeConfiguration
  # @return [DecodeConfiguration] a new instance of DecodeConfiguration
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#17
  def initialize; end

  # Returns the value of attribute algorithms.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def algorithms; end

  # Sets the attribute algorithms
  #
  # @param value the value to set the attribute algorithms to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def algorithms=(_arg0); end

  # Returns the value of attribute leeway.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def leeway; end

  # Sets the attribute leeway
  #
  # @param value the value to set the attribute leeway to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def leeway=(_arg0); end

  # Returns the value of attribute required_claims.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def required_claims; end

  # Sets the attribute required_claims
  #
  # @param value the value to set the attribute required_claims to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def required_claims=(_arg0); end

  # source://jwt//lib/jwt/configuration/decode_configuration.rb#30
  def to_h; end

  # Returns the value of attribute verify_aud.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_aud; end

  # Sets the attribute verify_aud
  #
  # @param value the value to set the attribute verify_aud to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_aud=(_arg0); end

  # Returns the value of attribute verify_expiration.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_expiration; end

  # Sets the attribute verify_expiration
  #
  # @param value the value to set the attribute verify_expiration to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_expiration=(_arg0); end

  # Returns the value of attribute verify_iat.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_iat; end

  # Sets the attribute verify_iat
  #
  # @param value the value to set the attribute verify_iat to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_iat=(_arg0); end

  # Returns the value of attribute verify_iss.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_iss; end

  # Sets the attribute verify_iss
  #
  # @param value the value to set the attribute verify_iss to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_iss=(_arg0); end

  # Returns the value of attribute verify_jti.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_jti; end

  # Sets the attribute verify_jti
  #
  # @param value the value to set the attribute verify_jti to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_jti=(_arg0); end

  # Returns the value of attribute verify_not_before.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_not_before; end

  # Sets the attribute verify_not_before
  #
  # @param value the value to set the attribute verify_not_before to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_not_before=(_arg0); end

  # Returns the value of attribute verify_sub.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_sub; end

  # Sets the attribute verify_sub
  #
  # @param value the value to set the attribute verify_sub to.
  #
  # source://jwt//lib/jwt/configuration/decode_configuration.rb#6
  def verify_sub=(_arg0); end
end

# source://jwt//lib/jwt/configuration/jwk_configuration.rb#8
class JWT::Configuration::JwkConfiguration
  # @return [JwkConfiguration] a new instance of JwkConfiguration
  #
  # source://jwt//lib/jwt/configuration/jwk_configuration.rb#9
  def initialize; end

  # Returns the value of attribute kid_generator.
  #
  # source://jwt//lib/jwt/configuration/jwk_configuration.rb#24
  def kid_generator; end

  # Sets the attribute kid_generator
  #
  # @param value the value to set the attribute kid_generator to.
  #
  # source://jwt//lib/jwt/configuration/jwk_configuration.rb#24
  def kid_generator=(_arg0); end

  # source://jwt//lib/jwt/configuration/jwk_configuration.rb#13
  def kid_generator_type=(value); end
end

# Decoding logic for JWT
#
# source://jwt//lib/jwt/decode.rb#11
class JWT::Decode
  # @raise [JWT::DecodeError]
  # @return [Decode] a new instance of Decode
  #
  # source://jwt//lib/jwt/decode.rb#12
  def initialize(jwt, key, verify, options, &keyfinder); end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#24
  def decode_segments; end

  private

  # source://jwt//lib/jwt/decode.rb#123
  def algorithm; end

  # source://jwt//lib/jwt/decode.rb#74
  def allowed_algorithms; end

  # source://jwt//lib/jwt/decode.rb#119
  def decode_crypto; end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#90
  def find_key(&keyfinder); end

  # source://jwt//lib/jwt/decode.rb#127
  def header; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/decode.rb#115
  def none_algorithm?; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/decode.rb#70
  def options_includes_algo_in_header?; end

  # source://jwt//lib/jwt/decode.rb#139
  def parse_and_decode(segment); end

  # source://jwt//lib/jwt/decode.rb#131
  def payload; end

  # source://jwt//lib/jwt/decode.rb#111
  def segment_length; end

  # source://jwt//lib/jwt/decode.rb#58
  def set_key; end

  # source://jwt//lib/jwt/decode.rb#135
  def signing_input; end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#103
  def validate_segment_count!; end

  # @raise [JWT::IncorrectAlgorithm]
  #
  # source://jwt//lib/jwt/decode.rb#52
  def verify_algo; end

  # source://jwt//lib/jwt/decode.rb#98
  def verify_claims; end

  # @raise [JWT::DecodeError]
  #
  # source://jwt//lib/jwt/decode.rb#40
  def verify_signature; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/decode.rb#66
  def verify_signature_for?(key); end
end

# source://jwt//lib/jwt/error.rb#5
class JWT::DecodeError < ::StandardError; end

# Encoding logic for JWT
#
# source://jwt//lib/jwt/encode.rb#9
class JWT::Encode
  # @return [Encode] a new instance of Encode
  #
  # source://jwt//lib/jwt/encode.rb#13
  def initialize(options); end

  # source://jwt//lib/jwt/encode.rb#20
  def segments; end

  private

  # source://jwt//lib/jwt/encode.rb#65
  def combine(*parts); end

  # source://jwt//lib/jwt/encode.rb#61
  def encode(data); end

  # source://jwt//lib/jwt/encode.rb#42
  def encode_header; end

  # source://jwt//lib/jwt/encode.rb#47
  def encode_payload; end

  # source://jwt//lib/jwt/encode.rb#55
  def encode_signature; end

  # source://jwt//lib/jwt/encode.rb#26
  def encoded_header; end

  # source://jwt//lib/jwt/encode.rb#38
  def encoded_header_and_payload; end

  # source://jwt//lib/jwt/encode.rb#30
  def encoded_payload; end

  # source://jwt//lib/jwt/encode.rb#34
  def encoded_signature; end
end

# source://jwt//lib/jwt/encode.rb#11
JWT::Encode::ALG_KEY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/encode.rb#10
JWT::Encode::ALG_NONE = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/error.rb#4
class JWT::EncodeError < ::StandardError; end

# source://jwt//lib/jwt/error.rb#9
class JWT::ExpiredSignature < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#11
class JWT::ImmatureSignature < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#10
class JWT::IncorrectAlgorithm < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#15
class JWT::InvalidAudError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#14
class JWT::InvalidIatError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#12
class JWT::InvalidIssuerError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#17
class JWT::InvalidJtiError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#18
class JWT::InvalidPayload < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#16
class JWT::InvalidSubError < ::JWT::DecodeError; end

# JSON wrapper
#
# source://jwt//lib/jwt/json.rb#7
class JWT::JSON
  class << self
    # source://jwt//lib/jwt/json.rb#9
    def generate(data); end

    # source://jwt//lib/jwt/json.rb#13
    def parse(data); end
  end
end

# source://jwt//lib/jwt/jwk/kid_as_key_digest.rb#4
module JWT::JWK
  class << self
    # source://jwt//lib/jwt/jwk.rb#23
    def classes; end

    # source://jwt//lib/jwt/jwk.rb#17
    def create_from(keypair, kid = T.unsafe(nil)); end

    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk.rb#8
    def import(jwk_data); end

    # source://jwt//lib/jwt/jwk.rb#17
    def new(keypair, kid = T.unsafe(nil)); end

    private

    # source://jwt//lib/jwt/jwk.rb#36
    def generate_mappings; end

    # source://jwt//lib/jwt/jwk.rb#32
    def mappings; end
  end
end

# source://jwt//lib/jwt/jwk/ec.rb#7
class JWT::JWK::EC < ::JWT::JWK::KeyBase
  extend ::Forwardable

  # @raise [ArgumentError]
  # @return [EC] a new instance of EC
  #
  # source://jwt//lib/jwt/jwk/ec.rb#17
  def initialize(keypair, options = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/ec.rb#39
  def export(options = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/ec.rb#47
  def key_digest; end

  # Returns the value of attribute keypair.
  #
  # source://jwt//lib/jwt/jwk/ec.rb#15
  def keypair; end

  # source://jwt//lib/jwt/jwk/ec.rb#29
  def members; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/ec.rb#25
  def private?; end

  # source://forwardable/1.3.2/forwardable.rb#229
  def public_key(*args, **_arg1, &block); end

  private

  # source://jwt//lib/jwt/jwk/ec.rb#56
  def append_private_parts(the_hash); end

  # source://jwt//lib/jwt/jwk/ec.rb#84
  def encode_octets(octets); end

  # source://jwt//lib/jwt/jwk/ec.rb#88
  def encode_open_ssl_bn(key_part); end

  # source://jwt//lib/jwt/jwk/ec.rb#63
  def keypair_components(ec_keypair); end

  class << self
    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk/ec.rb#93
    def import(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#103
    def to_openssl_curve(crv); end

    private

    # source://jwt//lib/jwt/jwk/ec.rb#189
    def decode_octets(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#193
    def decode_open_ssl_bn(jwk_data); end

    # source://jwt//lib/jwt/jwk/ec.rb#161
    def ec_pkey(jwk_crv, jwk_x, jwk_y, jwk_d); end

    # source://jwt//lib/jwt/jwk/ec.rb#118
    def jwk_attrs(jwk_data, attrs); end
  end
end

# source://jwt//lib/jwt/jwk/ec.rb#13
JWT::JWK::EC::BINARY = T.let(T.unsafe(nil), Integer)

# source://jwt//lib/jwt/jwk/ec.rb#11
JWT::JWK::EC::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/ec.rb#12
JWT::JWK::EC::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/hmac.rb#5
class JWT::JWK::HMAC < ::JWT::JWK::KeyBase
  # @raise [ArgumentError]
  # @return [HMAC] a new instance of HMAC
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#11
  def initialize(signing_key, options = T.unsafe(nil)); end

  # See https://tools.ietf.org/html/rfc7517#appendix-A.3
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#27
  def export(options = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/hmac.rb#49
  def key_digest; end

  # Returns the value of attribute signing_key.
  # for backwards compatibility
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#9
  def keypair; end

  # source://jwt//lib/jwt/jwk/hmac.rb#40
  def members; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#18
  def private?; end

  # source://jwt//lib/jwt/jwk/hmac.rb#22
  def public_key; end

  # Returns the value of attribute signing_key.
  #
  # source://jwt//lib/jwt/jwk/hmac.rb#9
  def signing_key; end

  class << self
    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk/hmac.rb#56
    def import(jwk_data); end
  end
end

# source://jwt//lib/jwt/jwk/hmac.rb#6
JWT::JWK::HMAC::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/hmac.rb#7
JWT::JWK::HMAC::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/key_base.rb#5
class JWT::JWK::KeyBase
  # @return [KeyBase] a new instance of KeyBase
  #
  # source://jwt//lib/jwt/jwk/key_base.rb#11
  def initialize(options); end

  # source://jwt//lib/jwt/jwk/key_base.rb#22
  def kid; end

  private

  # source://jwt//lib/jwt/jwk/key_base.rb#30
  def generate_kid; end

  # Returns the value of attribute kid_generator.
  #
  # source://jwt//lib/jwt/jwk/key_base.rb#28
  def kid_generator; end

  class << self
    # @private
    #
    # source://jwt//lib/jwt/jwk/key_base.rb#6
    def inherited(klass); end
  end
end

# source://jwt//lib/jwt/jwk/key_finder.rb#5
class JWT::JWK::KeyFinder
  # @return [KeyFinder] a new instance of KeyFinder
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#6
  def initialize(options); end

  # @raise [::JWT::DecodeError]
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#12
  def key_for(kid); end

  private

  # source://jwt//lib/jwt/jwk/key_finder.rb#53
  def find_key(kid); end

  # source://jwt//lib/jwt/jwk/key_finder.rb#38
  def jwks; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#49
  def jwks_keys; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#45
  def load_keys(opts = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/key_finder.rb#57
  def reloadable?; end

  # source://jwt//lib/jwt/jwk/key_finder.rb#25
  def resolve_key(kid); end
end

# source://jwt//lib/jwt/jwk/kid_as_key_digest.rb#5
class JWT::JWK::KidAsKeyDigest
  # @return [KidAsKeyDigest] a new instance of KidAsKeyDigest
  #
  # source://jwt//lib/jwt/jwk/kid_as_key_digest.rb#6
  def initialize(jwk); end

  # source://jwt//lib/jwt/jwk/kid_as_key_digest.rb#10
  def generate; end
end

# source://jwt//lib/jwt/jwk/rsa.rb#5
class JWT::JWK::RSA < ::JWT::JWK::KeyBase
  # @raise [ArgumentError]
  # @return [RSA] a new instance of RSA
  #
  # source://jwt//lib/jwt/jwk/rsa.rb#13
  def initialize(keypair, options = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/rsa.rb#29
  def export(options = T.unsafe(nil)); end

  # source://jwt//lib/jwt/jwk/rsa.rb#45
  def key_digest; end

  # Returns the value of attribute keypair.
  #
  # source://jwt//lib/jwt/jwk/rsa.rb#11
  def keypair; end

  # source://jwt//lib/jwt/jwk/rsa.rb#37
  def members; end

  # @return [Boolean]
  #
  # source://jwt//lib/jwt/jwk/rsa.rb#21
  def private?; end

  # source://jwt//lib/jwt/jwk/rsa.rb#25
  def public_key; end

  private

  # source://jwt//lib/jwt/jwk/rsa.rb#53
  def append_private_parts(the_hash); end

  # source://jwt//lib/jwt/jwk/rsa.rb#64
  def encode_open_ssl_bn(key_part); end

  class << self
    # source://jwt//lib/jwt/jwk/rsa.rb#69
    def import(jwk_data); end

    private

    # source://jwt//lib/jwt/jwk/rsa.rb#108
    def create_rsa_key(rsa_parameters); end

    # source://jwt//lib/jwt/jwk/rsa.rb#130
    def decode_open_ssl_bn(jwk_data); end

    # source://jwt//lib/jwt/jwk/rsa.rb#78
    def jwk_attributes(jwk_data, *attributes); end

    # @raise [JWT::JWKError]
    #
    # source://jwt//lib/jwt/jwk/rsa.rb#86
    def rsa_pkey(rsa_parameters); end
  end
end

# source://jwt//lib/jwt/jwk/rsa.rb#6
JWT::JWK::RSA::BINARY = T.let(T.unsafe(nil), Integer)

# source://jwt//lib/jwt/jwk/rsa.rb#7
JWT::JWK::RSA::KTY = T.let(T.unsafe(nil), String)

# source://jwt//lib/jwt/jwk/rsa.rb#8
JWT::JWK::RSA::KTYS = T.let(T.unsafe(nil), Array)

# source://jwt//lib/jwt/jwk/rsa.rb#9
JWT::JWK::RSA::RSA_KEY_ELEMENTS = T.let(T.unsafe(nil), Array)

# https://tools.ietf.org/html/rfc7638
#
# source://jwt//lib/jwt/jwk/thumbprint.rb#6
class JWT::JWK::Thumbprint
  # @return [Thumbprint] a new instance of Thumbprint
  #
  # source://jwt//lib/jwt/jwk/thumbprint.rb#9
  def initialize(jwk); end

  # source://jwt//lib/jwt/jwk/thumbprint.rb#13
  def generate; end

  # Returns the value of attribute jwk.
  #
  # source://jwt//lib/jwt/jwk/thumbprint.rb#7
  def jwk; end

  # source://jwt//lib/jwt/jwk/thumbprint.rb#13
  def to_s; end
end

# source://jwt//lib/jwt/error.rb#21
class JWT::JWKError < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#19
class JWT::MissingRequiredClaim < ::JWT::DecodeError; end

# source://jwt//lib/jwt/error.rb#6
class JWT::RequiredDependencyError < ::StandardError; end

# Collection of security methods
#
# @see: https://github.com/rails/rails/blob/master/activesupport/lib/active_support/security_utils.rb
#
# source://jwt//lib/jwt/security_utils.rb#7
module JWT::SecurityUtils
  private

  # source://jwt//lib/jwt/security_utils.rb#31
  def asn1_to_raw(signature, public_key); end

  # source://jwt//lib/jwt/security_utils.rb#36
  def raw_to_asn1(signature, private_key); end

  # source://jwt//lib/jwt/security_utils.rb#43
  def rbnacl_fixup(algorithm, key); end

  # source://jwt//lib/jwt/security_utils.rb#10
  def secure_compare(left, right); end

  # source://jwt//lib/jwt/security_utils.rb#25
  def verify_ps(algorithm, public_key, signing_input, signature); end

  # source://jwt//lib/jwt/security_utils.rb#21
  def verify_rsa(algorithm, public_key, signing_input, signature); end

  class << self
    # source://jwt//lib/jwt/security_utils.rb#31
    def asn1_to_raw(signature, public_key); end

    # source://jwt//lib/jwt/security_utils.rb#36
    def raw_to_asn1(signature, private_key); end

    # source://jwt//lib/jwt/security_utils.rb#43
    def rbnacl_fixup(algorithm, key); end

    # source://jwt//lib/jwt/security_utils.rb#10
    def secure_compare(left, right); end

    # source://jwt//lib/jwt/security_utils.rb#25
    def verify_ps(algorithm, public_key, signing_input, signature); end

    # source://jwt//lib/jwt/security_utils.rb#21
    def verify_rsa(algorithm, public_key, signing_input, signature); end
  end
end

# Signature logic for JWT
#
# source://jwt//lib/jwt/signature.rb#15
module JWT::Signature
  private

  # source://jwt//lib/jwt/signature.rb#21
  def sign(algorithm, msg, key); end

  # source://jwt//lib/jwt/signature.rb#26
  def verify(algorithm, key, signing_input, signature); end

  class << self
    # source://jwt//lib/jwt/signature.rb#21
    def sign(algorithm, msg, key); end

    # source://jwt//lib/jwt/signature.rb#26
    def verify(algorithm, key, signing_input, signature); end
  end
end

# source://jwt//lib/jwt/signature.rb#18
class JWT::Signature::ToSign < ::Struct
  # Returns the value of attribute algorithm
  #
  # @return [Object] the current value of algorithm
  def algorithm; end

  # Sets the attribute algorithm
  #
  # @param value [Object] the value to set the attribute algorithm to.
  # @return [Object] the newly set value
  def algorithm=(_); end

  # Returns the value of attribute key
  #
  # @return [Object] the current value of key
  def key; end

  # Sets the attribute key
  #
  # @param value [Object] the value to set the attribute key to.
  # @return [Object] the newly set value
  def key=(_); end

  # Returns the value of attribute msg
  #
  # @return [Object] the current value of msg
  def msg; end

  # Sets the attribute msg
  #
  # @param value [Object] the value to set the attribute msg to.
  # @return [Object] the newly set value
  def msg=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://jwt//lib/jwt/signature.rb#19
class JWT::Signature::ToVerify < ::Struct
  # Returns the value of attribute algorithm
  #
  # @return [Object] the current value of algorithm
  def algorithm; end

  # Sets the attribute algorithm
  #
  # @param value [Object] the value to set the attribute algorithm to.
  # @return [Object] the newly set value
  def algorithm=(_); end

  # Returns the value of attribute public_key
  #
  # @return [Object] the current value of public_key
  def public_key; end

  # Sets the attribute public_key
  #
  # @param value [Object] the value to set the attribute public_key to.
  # @return [Object] the newly set value
  def public_key=(_); end

  # Returns the value of attribute signature
  #
  # @return [Object] the current value of signature
  def signature; end

  # Sets the attribute signature
  #
  # @param value [Object] the value to set the attribute signature to.
  # @return [Object] the newly set value
  def signature=(_); end

  # Returns the value of attribute signing_input
  #
  # @return [Object] the current value of signing_input
  def signing_input; end

  # Sets the attribute signing_input
  #
  # @param value [Object] the value to set the attribute signing_input to.
  # @return [Object] the newly set value
  def signing_input=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://jwt//lib/jwt/error.rb#13
class JWT::UnsupportedEcdsaCurve < ::JWT::IncorrectAlgorithm; end

# Moments version builder module
#
# source://jwt//lib/jwt/version.rb#10
module JWT::VERSION; end

# major version
#
# source://jwt//lib/jwt/version.rb#12
JWT::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

# minor version
#
# source://jwt//lib/jwt/version.rb#14
JWT::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

# alpha, beta, etc. tag
#
# source://jwt//lib/jwt/version.rb#18
JWT::VERSION::PRE = T.let(T.unsafe(nil), T.untyped)

# Build version string
#
# source://jwt//lib/jwt/version.rb#21
JWT::VERSION::STRING = T.let(T.unsafe(nil), String)

# tiny version
#
# source://jwt//lib/jwt/version.rb#16
JWT::VERSION::TINY = T.let(T.unsafe(nil), Integer)

# source://jwt//lib/jwt/error.rb#8
class JWT::VerificationError < ::JWT::DecodeError; end

# JWT verify methods
#
# source://jwt//lib/jwt/verify.rb#7
class JWT::Verify
  # @return [Verify] a new instance of Verify
  #
  # source://jwt//lib/jwt/verify.rb#28
  def initialize(payload, options); end

  # @raise [JWT::InvalidAudError]
  #
  # source://jwt//lib/jwt/verify.rb#33
  def verify_aud; end

  # @raise [JWT::ExpiredSignature]
  #
  # source://jwt//lib/jwt/verify.rb#40
  def verify_expiration; end

  # @raise [JWT::InvalidIatError]
  #
  # source://jwt//lib/jwt/verify.rb#45
  def verify_iat; end

  # source://jwt//lib/jwt/verify.rb#52
  def verify_iss; end

  # source://jwt//lib/jwt/verify.rb#67
  def verify_jti; end

  # @raise [JWT::ImmatureSignature]
  #
  # source://jwt//lib/jwt/verify.rb#79
  def verify_not_before; end

  # source://jwt//lib/jwt/verify.rb#91
  def verify_required_claims; end

  # @raise [JWT::InvalidSubError]
  #
  # source://jwt//lib/jwt/verify.rb#84
  def verify_sub; end

  private

  # source://jwt//lib/jwt/verify.rb#105
  def exp_leeway; end

  # source://jwt//lib/jwt/verify.rb#101
  def global_leeway; end

  # source://jwt//lib/jwt/verify.rb#109
  def nbf_leeway; end

  class << self
    # source://jwt//lib/jwt/verify.rb#14
    def verify_aud(payload, options); end

    # source://jwt//lib/jwt/verify.rb#19
    def verify_claims(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_expiration(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_iat(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_iss(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_jti(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_not_before(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_required_claims(payload, options); end

    # source://jwt//lib/jwt/verify.rb#14
    def verify_sub(payload, options); end
  end
end

# source://jwt//lib/jwt/verify.rb#8
JWT::Verify::DEFAULTS = T.let(T.unsafe(nil), Hash)

# If the x5c header certificate chain can be validated by trusted root
# certificates, and none of the certificates are revoked, returns the public
# key from the first certificate.
# See https://tools.ietf.org/html/rfc7515#section-4.1.6
#
# source://jwt//lib/jwt/x5c_key_finder.rb#11
class JWT::X5cKeyFinder
  # @raise [ArgumentError]
  # @return [X5cKeyFinder] a new instance of X5cKeyFinder
  #
  # source://jwt//lib/jwt/x5c_key_finder.rb#12
  def initialize(root_certificates, crls = T.unsafe(nil)); end

  # source://jwt//lib/jwt/x5c_key_finder.rb#18
  def from(x5c_header_or_certificates); end

  private

  # source://jwt//lib/jwt/x5c_key_finder.rb#36
  def build_store(root_certificates, crls); end

  # source://jwt//lib/jwt/x5c_key_finder.rb#45
  def parse_certificates(x5c_header_or_certificates); end
end

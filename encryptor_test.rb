require 'test/unit'
require_relative 'encryptor'

class EncryptorTest < Test::Unit::TestCase
  def test_encrypt_with_rotation_4
    e = Encryptor.new
    assert_equal e.encrypt("hello", 4), "lipps"
  end

  def test_encrypt_with_rotation_8
    e = Encryptor.new
    assert_equal e.encrypt("hello", 8), "pmttw"
  end

  def test_decrypt_encrypted_text
    e = Encryptor.new
    input = e.encrypt("hello")
    assert_equal e.decrypt(input), "hello"
  end
end
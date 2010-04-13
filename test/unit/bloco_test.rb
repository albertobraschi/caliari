require 'test_helper'

class BlocoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Bloco.new.valid?
  end
end

require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Produto.new.valid?
  end
end

require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    def setup
        @fraccion1 = Fraccion.new(2,4)
        @fraccion2 = Fraccion.new(3,5)
        @fraccion3 = Fraccion.new(-4,2)
    end
        
    def test_simple
       assert_equal("(2,4)", @fraccion1.to_s)
       assert_equal("(22,20)",(@fraccion1 + @fraccion2).to_s)
       assert_equal("(6,20)",(@fraccion1 * @fraccion2).to_s)
       assert_equal("(4,2)", (@fraccion3.absoluto).to_s)
       assert_equal("(10,4)", (@fraccion1 - @fraccion3).to_s)
        
    end
    
    
end
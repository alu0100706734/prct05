class Fraccion
    attr_reader :num, :denom
    def initialize (num, denom)
         @num = num
         @denom = denom
         raise TypeError, "El denominador no puede ser cero" if denom.eql? 0

    end

    def gcd(num, denom)
        n1, n2 = num.abs, denom.abs
        gcd = 1
        k = 1
        while (k <= n1 and k <= n2)
        if (n1 % k == 0 and n2 % k == 0)
            gcd = k
        end
        k += 1
        end
        return gcd
    end
    
    def mcm(a, b)
        aux = gcd(a,b)
        (a/aux)*b
    end
    
    def to_s
        "(#{@num},#{@denom})"
    end
    
    def +(other)
       m = mcm(@denom, other.denom)
       na = (m/@denom) * @num
       nb = (m/other.denom) * other.num
       return Fraccion.new(na + nb, m)
    end
    
    def -(other)
       m = mcm(@denom, other.denom)
       na = m/@denom * @num
       nb = m/other.denom * other.num
       return Fraccion.new(na - nb, m)
    end
    
    def *(other)
        na = @num * other.num
        nb = @denom * other.denom
        return Fraccion.new(na,nb)
    end
    
    def /(other)
       na = @num * other.denom
       nb = @denom * other.num
       return Fraccion.new(na,nb)
    end
    
    def absoluto
        return Fraccion.new(@num.abs, @denom.abs)
    end
    
end
       
       
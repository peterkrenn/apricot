class Object
  def apricot_inspect
    inspect
  end
end

class Array
  # Adapted from Array#inspect. This version prints no commas and calls
  # #apricot_inspect on its elements. e.g. [1 2 3]
  def apricot_inspect
    return "[]" if @total == 0

    result = "["

    return "[...]" if Thread.detect_recursion self do
      each { |o| result << o.apricot_inspect << " " }
    end

    Rubinius::Type.infect(result, self)
    result.shorten!(1)
    result << "]"
  end
end

class Hash
  # Adapted from Hash#inspect. Outputs Apricot hash syntax, e.g. {:a 1, :b 2}
  def apricot_inspect
    str = '{'
    return '{...}' if Thread.detect_recursion self do
      each_item do |item|
        str << item.key.apricot_inspect
        str << ' '
        str << item.value.apricot_inspect
        str << ', '
      end
    end
    str.shorten!(2)
    str << '}'
  end
end

class Rational
  def apricot_inspect
    to_s
  end
end
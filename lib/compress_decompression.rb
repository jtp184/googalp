module CompressDecompression
  def self.call(input)
    brak = []
    nums = []
    lets = []
    result = ""

    input.chars.each do |char|
      case char
      when /\d+/
        nums << char.to_i
        debugcase('number', brak, nums, lets, result)
      when '['
        brak << char
        debugcase('left bracket', brak, nums, lets, result)
      when ']'
        brak.pop
        result << (lets.join * nums.pop)
        lets.clear
        debugcase('right bracket', brak, nums, lets, result)
      when /[a-z]/
        if brak.empty?
          result << char
        else
          lets << char
        end
        debugcase('letter', brak, nums, lets, result)
      end
    end

    return result
  end

  # protected

  def self.debugcase(c, b, n, l, r)
   # STDERR.puts("Case: #{c}")
   # STDERR.puts([b, n, l, r].inspect)
 end
end
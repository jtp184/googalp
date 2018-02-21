module CompressDecompression
  def self.call(input)
    brak = []
    nums = []
    lets = []
    result = ""

    input.scan(/\d+|\[|\]|[a-z]/).each do |char|
      slug = [brak, nums, lets, result]
      case char
      when /\d+/
        nums << char.to_i
        log('number', slug)
      when '['
        brak << char
        log('left bracket', slug)
      when ']'
        brak.pop
        result << (lets.join * nums.pop)
        lets.clear
        log('right bracket', slug)
      when /[a-z]/
        if brak.empty?
          result << char
        else
          lets << char
        end
        log('letter', slug)
      end
    end

    return result
  end

  # protected

  def self.log(*incoming)
   # STDERR.puts incoming.inspect
 end
end
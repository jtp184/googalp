require 'compress_decompression'
$test_cases = {
  'a' => 'a',
  '1[a]' => 'a',
  '1[abc]' => 'abc',
  '3[abc]' => 'abcabcabc',
  '10[abc]' => "abcabcabcabcabcabcabcabcabcabc",
  '3[abc]4[ab]c' => 'abcabcabcababababc',
  '2[3[a]b]' => 'aaabaaab',
}

describe CompressDecompression do
  describe ".call" do
    it "Accepts string input" do
      expect { CompressDecompression.("5[a]") }.not_to raise_error
    end

    it "Returns string output" do
      expect { String(CompressDecompression.("3[abc]")) }.not_to raise_error
    end

    # Test cases
    $test_cases.each do |ins, outs|
      context "given \"#{ins}\"" do
        it "returns \"#{outs}\"" do
          expect(CompressDecompression.(ins)).to eql(outs)
        end
      end
    end
  end
end
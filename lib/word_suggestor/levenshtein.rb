class WordSuggestor::Levenshtein
  def initialize(input_word, compare_word, options={})
    @s = input_word
    @t = compare_word




    len_t = @t.length
    len_s = @s.length

    @s_range = (0..len_s-1)
    @t_range = (0..len_t-1)
    @v0_range = (0..len_t)


    # initialize v0 (the previous row of distances)
    # this row is A[0][i]: edit distance for an empty s
    # the distance is just the number of characters to delete from t
    @v0 = Array.new(len_t+1){|index| index}
    # vs =(0..len_s0).to_a #what is faster?
    @v1 = Array.new(len_t+1, 0)
  end

  def distance
    @s_range.each do |i|
      # calculate v1 (current row distances) from the previous row v0
      # first element of v1 is A[i+1][0]
      #   edit distance is delete (i+1) chars from s to match empty t
      @v1[0] = i + 1

      # use formula to fill in the rest of the row
      @t_range.each do |j|
        cost = (@s[i] == @t[j]) ? 0 : 1
        a = @v1[j] + 1 # a deletion
        b = @v0[j+1] + 1 # an insertion
        c = @v0[j] + cost # a substitution
        @v1[j + 1] = [a,b,c].min
      end

      # copy v1 (current row) to v0 (previous row) for next interation
      @v0_range.each do |j|
        @v0[j] = @v1[j]
      end  
    end
    @v1[@t.length]
  end

end
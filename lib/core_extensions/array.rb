class Array
  def levenshtein_suggestions(input, options={})
    global_min_distance = options[:treshold] || WordSuggestor::DEFAULT_TRESHOLD
    suggestion_tuples = []
    
    self.each do |s|
      next unless s.is_a?(String)
      d = s.levenshtein_distance input
      tuple = WordSuggestor::Tuple.new(d, s)
      suggestion_tuples << tuple
      global_min_distance = d if d < global_min_distance
    end

    suggestion_tuples.map do |tuple|
      tuple.word if tuple.distance <= global_min_distance
    end.compact
  end
end
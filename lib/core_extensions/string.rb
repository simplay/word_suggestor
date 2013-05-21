class String
  def levenshtein_distance(other, options={})
    raise ArgumentError unless other.is_a?(String)
    WordSuggestor::Levenshtein.new(self, other, options).distance
  end
end
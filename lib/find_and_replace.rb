class String
  def find_and_replace(a,b)
    self.gsub(/#{a}/i,b)
  end
end

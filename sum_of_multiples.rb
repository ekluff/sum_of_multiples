class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    arr =* 1..limit-1

    arr.keep_if do |num|
      multiples.map { |mult| num % mult == 0 }.any?
    end.inject(:+) || 0
  end

  def multiples
    @multiples
  end
end

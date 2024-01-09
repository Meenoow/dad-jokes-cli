class Joke
  attr_accessor :body, :punchline

  def initialize(body, punchline)
    @body = body
    @punchline = punchline
  end

  def to_s
    "#{body} ... #{@punchline}"
  end
end

# Takes block, runs it any number of times, and measures average time taken to yield block
def measure(n=1, &block)
  elapsed_time = []

  n.times do
    current_time = Time.now
    yield
    elapsed_time.push(Time.now - current_time)
  end

  elapsed_time.inject{ |sum, el| sum + el }.to_f / n
end
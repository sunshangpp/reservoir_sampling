require 'reservoir_sampling/input_generator'

module ReservoirSampling
  def self.sample(input_file, reservoir_size)
    # check input file
    if !File.exist? input_file
      abort "input file #{input_file} does not exist!"
    end

    reservoir = Array.new(reservoir_size)
    index = 0

    File.open(input_file, 'r').each_line do |line|
      if index < reservoir_size
        reservoir[index] = line.strip
      else
        rand = Random.rand(index + 1)
        if rand < reservoir_size
          reservoir[rand] = line.strip
        end
      end
      index += 1
    end

    return reservoir
  end
end
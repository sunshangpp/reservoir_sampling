module ReservoirSampling
  class InputGenerator
    def self.file_gen(file_name, size)
      File.open(file_name, 'w') do |file|
        (1..size).each do |x|
          file.write(x.to_s + "\n")
        end
      end
    end
  end
end


require 'test/unit'
require 'reservoir_sampling'

class ReservoirSamplingTest < Test::Unit::TestCase
  def test_small_sample
    ReservoirSampling::InputGenerator::file_gen('tmp_input', 5)
    reservoir = ReservoirSampling::sample('tmp_input', 5)
    assert_equal ['1','2','3','4','5'], reservoir
    File.delete 'tmp_input'
  end

  def test_sample_size
    ReservoirSampling::InputGenerator::file_gen('tmp_input', 100)
    reservoir = ReservoirSampling::sample('tmp_input', 5)
    assert_equal reservoir.length, 5
    File.delete 'tmp_input'
  end
end
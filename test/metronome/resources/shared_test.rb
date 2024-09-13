# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::SharedTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end
end

# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::NamedSchedulesTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_retrieve_required_params
    response = @metronome.customers.named_schedules.retrieve(
      {customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1", schedule_name: "my-schedule"}
    )
    assert_kind_of(Metronome::Models::NamedScheduleRetrieveResponse, response)
  end

  def test_update_required_params
    response = @metronome.customers.named_schedules.update(
      {
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        schedule_name: "my-schedule",
        starting_at: "2022-02-01T00:00:00Z",
        value: {"my_key" => "my_value"}
      }
    )
    assert_nil(response)
  end
end

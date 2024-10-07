# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::PlansTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_list
    response = @metronome.plans.list
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_get_details
    response = @metronome.plans.get_details("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::Models::PlanGetDetailsResponse, response)
  end

  def test_list_charges
    response = @metronome.plans.list_charges("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_list_customers
    response = @metronome.plans.list_customers("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::CursorPage, response)
  end
end

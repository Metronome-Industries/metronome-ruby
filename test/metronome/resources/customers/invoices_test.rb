# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::InvoicesTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve_required_params
    response = @metronome.customers.invoices.retrieve(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
    )

    assert_pattern do
      response => Metronome::Models::Customers::InvoiceRetrieveResponse
    end
  end

  def test_list_required_params
    response = @metronome.customers.invoices.list(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end
  end

  def test_add_charge_required_params
    response = @metronome.customers.invoices.add_charge(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      charge_id: "5ae4b726-1ebe-439c-9190-9831760ba195",
      customer_plan_id: "a23b3cf4-47fb-4c3f-bb3d-9e64f7704015",
      description: "One time charge",
      invoice_start_timestamp: "2024-01-01T00:00:00Z",
      price: 250,
      quantity: 1
    )

    assert_pattern do
      response => Metronome::Models::Customers::InvoiceAddChargeResponse
    end
  end

  def test_list_breakdowns_required_params
    response = @metronome.customers.invoices.list_breakdowns(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ending_before: "2019-12-27T18:11:19.117Z",
      starting_on: "2019-12-27T18:11:19.117Z"
    )

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end
  end
end

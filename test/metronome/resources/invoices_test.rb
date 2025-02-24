# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::InvoicesTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_regenerate_required_params
    response = @metronome.invoices.regenerate(id: "6a37bb88-8538-48c5-b37b-a41c836328bd")

    assert_pattern do
      response => Metronome::Models::InvoiceRegenerateResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::InvoiceRegenerateResponse::Data | nil
      }
    end
  end

  def test_void_required_params
    response = @metronome.invoices.void(id: "6a37bb88-8538-48c5-b37b-a41c836328bd")

    assert_pattern do
      response => Metronome::Models::InvoiceVoidResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::InvoiceVoidResponse::Data | nil
      }
    end
  end
end

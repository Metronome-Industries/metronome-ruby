# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::InvoicesTest < MetronomeSDK::Test::ResourceTest
  def test_regenerate_required_params
    response = @metronome.v1.invoices.regenerate(id: "6a37bb88-8538-48c5-b37b-a41c836328bd")

    assert_pattern do
      response => MetronomeSDK::Models::V1::InvoiceRegenerateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data | nil
      }
    end
  end

  def test_void_required_params
    response = @metronome.v1.invoices.void(id: "6a37bb88-8538-48c5-b37b-a41c836328bd")

    assert_pattern do
      response => MetronomeSDK::Models::V1::InvoiceVoidResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data | nil
      }
    end
  end
end

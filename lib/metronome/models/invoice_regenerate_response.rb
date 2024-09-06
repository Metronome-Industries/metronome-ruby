# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::InvoiceRegenerateResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceRegenerateResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   The new invoice id
        #   @return [String]
        required :id, String
      end
    end
  end
end

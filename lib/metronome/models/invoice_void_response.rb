# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::InvoiceVoidResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceVoidResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end

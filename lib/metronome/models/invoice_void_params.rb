# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidParams < Metronome::BaseModel
      # @!attribute [rw] id
      #   The invoice id to void
      #   @return [String]
      required :id, String
    end
  end
end

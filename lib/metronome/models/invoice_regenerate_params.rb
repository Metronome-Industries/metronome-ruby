# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateParams < Metronome::BaseModel
      # @!attribute id
      #   The invoice id to regenerate
      #
      #   @return [String]
      required :id, String
    end
  end
end

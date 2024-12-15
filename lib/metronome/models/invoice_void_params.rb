# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidParams < Metronome::BaseModel
      # @!attribute id
      #   The invoice id to void
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String] The invoice id to void
      #   #
      #   def initialize(id:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

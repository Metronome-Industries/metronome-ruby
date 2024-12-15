# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateParams < Metronome::BaseModel
      # @!attribute id
      #   The invoice id to regenerate
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String] The invoice id to regenerate
      #   #
      #   def initialize(id:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

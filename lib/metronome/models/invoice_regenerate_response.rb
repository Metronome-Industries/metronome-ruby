# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::InvoiceRegenerateResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceRegenerateResponse::Data }

      # @!parse
      #   # @param data [Metronome::Models::InvoiceRegenerateResponse::Data, nil]
      #   #
      #   def initialize(data: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute id
        #   The new invoice id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String] The new invoice id
        #   #
        #   def initialize(id:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

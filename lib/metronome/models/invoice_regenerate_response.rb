# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateResponse < Metronome::BaseModel
      # @!attribute [r] data
      #
      #   @return [Metronome::Models::InvoiceRegenerateResponse::Data, nil]
      optional :data, -> { Metronome::Models::InvoiceRegenerateResponse::Data }

      # @!parse
      #   # @return [Metronome::Models::InvoiceRegenerateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Metronome::Models::InvoiceRegenerateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute id
        #   The new invoice id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

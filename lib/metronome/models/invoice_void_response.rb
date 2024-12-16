# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::InvoiceVoidResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceVoidResponse::Data }

      # @!parse
      #   # @param data [Metronome::Models::InvoiceVoidResponse::Data, nil]
      #   #
      #   def initialize(data: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

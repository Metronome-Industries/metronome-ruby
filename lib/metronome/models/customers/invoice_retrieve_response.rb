# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Customers::Invoice]
        required :data, -> { Metronome::Models::Customers::Invoice }

        # @!parse
        #   # @param data [Metronome::Models::Customers::Invoice]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

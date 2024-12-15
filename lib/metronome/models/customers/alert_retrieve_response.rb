# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Customers::CustomerAlert]
        required :data, -> { Metronome::Models::Customers::CustomerAlert }

        # @!parse
        #   # @param data [Object]
        #   #
        #   def initialize(data:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

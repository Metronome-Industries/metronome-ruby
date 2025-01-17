# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # alert_retrieve_response => {
      #   data: Metronome::Models::Customers::CustomerAlert
      # }
      # ```
      class AlertRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Customers::CustomerAlert]
        required :data, -> { Metronome::Models::Customers::CustomerAlert }

        # @!parse
        #   # @param data [Metronome::Models::Customers::CustomerAlert]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

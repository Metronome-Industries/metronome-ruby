# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # customer_retrieve_response => {
    #   data: Metronome::Models::CustomerDetail
    # }
    # ```
    class CustomerRetrieveResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::CustomerDetail]
      required :data, -> { Metronome::Models::CustomerDetail }

      # @!parse
      #   # @param data [Metronome::Models::CustomerDetail]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

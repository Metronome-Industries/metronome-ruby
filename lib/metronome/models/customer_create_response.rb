# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # customer_create_response => {
    #   data: Metronome::Models::Customer
    # }
    # ```
    class CustomerCreateResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::Customer]
      required :data, -> { Metronome::Models::Customer }

      # @!parse
      #   # @param data [Metronome::Models::Customer]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

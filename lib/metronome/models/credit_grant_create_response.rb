# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # credit_grant_create_response => {
    #   data: Metronome::Models::ID
    # }
    # ```
    class CreditGrantCreateResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::ID]
      required :data, -> { Metronome::Models::ID }

      # @!parse
      #   # @param data [Metronome::Models::ID]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

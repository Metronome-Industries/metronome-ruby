# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::CustomerDetail]
      required :data, -> { Metronome::Models::CustomerDetail }

      # @!parse
      #   # @param data [Object]
      #   #
      #   def initialize(data:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

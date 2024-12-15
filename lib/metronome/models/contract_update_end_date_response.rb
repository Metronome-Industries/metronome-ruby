# frozen_string_literal: true

module Metronome
  module Models
    class ContractUpdateEndDateResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::ID]
      required :data, -> { Metronome::Models::ID }

      # @!parse
      #   # @param data [Object]
      #   #
      #   def initialize(data:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

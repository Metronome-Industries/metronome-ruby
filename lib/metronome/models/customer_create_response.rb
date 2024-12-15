# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::Customer]
      required :data, -> { Metronome::Models::Customer }

      # @!parse
      #   # @param data [Object]
      #   #
      #   def initialize(data:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

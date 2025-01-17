# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # customer_archive_response => {
    #   data: Metronome::Models::ID
    # }
    # ```
    class CustomerArchiveResponse < Metronome::BaseModel
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

# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      #
      # ```ruby
      # commit_create_response => {
      #   data: Metronome::Models::ID
      # }
      # ```
      class CommitCreateResponse < Metronome::BaseModel
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
end

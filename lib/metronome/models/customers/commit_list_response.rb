# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitListResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Array<Metronome::Models::Commit>]
        required :data, Metronome::ArrayOf[-> { Metronome::Models::Commit }]

        # @!attribute next_page
        #
        #   @return [String]
        required :next_page, String

        # @!parse
        #   # @param data [Array<Metronome::Models::Commit>]
        #   # @param next_page [String]
        #   #
        #   def initialize(data:, next_page:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

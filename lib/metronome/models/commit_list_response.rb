# frozen_string_literal: true

module Metronome
  module Models
    class CommitListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Commit>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end

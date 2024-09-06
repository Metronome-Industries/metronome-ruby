# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Commit|Metronome::Models::Credit>]
      required :data, Metronome::ArrayOf.new(Metronome::Unknown)

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end

# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      required :data, Metronome::ArrayOf[Metronome::Unknown]

      # @!attribute next_page
      #
      #   @return [String]
      required :next_page, String

      # @!parse
      #   # @param data [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

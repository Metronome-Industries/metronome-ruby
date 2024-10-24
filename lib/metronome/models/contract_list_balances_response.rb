# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      required :data, Metronome::ArrayOf.new(Metronome::Unknown)

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      # @!parse
      #   # Create a new instance of ContractListBalancesResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String] :next_page
      #   def initialize(data = {}) = super
    end
  end
end

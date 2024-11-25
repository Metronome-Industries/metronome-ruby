# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Customers::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice })

      # @!parse
      #   # Create a new instance of ContractCreateHistoricalInvoicesResponse from a Hash of
      #   #   raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   def initialize(data = {}) = super
    end
  end
end

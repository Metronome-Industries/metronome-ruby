# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Invoice })

      # @!parse
      #   # Create a new instance of ContractScheduleProServicesInvoiceResponse from a Hash
      #   #   of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   def initialize(data = {}) = super
    end
  end
end

# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      # @!attribute data
      #   @return [Array<Metronome::Models::Customers::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice })

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

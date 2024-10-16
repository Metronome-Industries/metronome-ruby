# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Invoice })

      # Create a new instance of ContractScheduleProServicesInvoiceResponse from a Hash
      #   of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Array<Object>]
      def initialize(data = {})
        super
      end
    end
  end
end

# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::InvoiceVoidResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceVoidResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(id: nil)
        # @param id [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of InvoiceVoidResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end

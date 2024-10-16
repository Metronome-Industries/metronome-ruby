# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::InvoiceRegenerateResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceRegenerateResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   The new invoice id
        #   @return [String]
        required :id, String

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(id: nil)
        # @param id [String] The new invoice id
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of InvoiceRegenerateResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end

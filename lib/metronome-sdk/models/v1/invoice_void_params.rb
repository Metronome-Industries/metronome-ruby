# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class InvoiceVoidParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute id
        #   The invoice id to void
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(id:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end

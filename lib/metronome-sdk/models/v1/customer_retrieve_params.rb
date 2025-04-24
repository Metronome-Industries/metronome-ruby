# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!parse
        #   # @param customer_id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end

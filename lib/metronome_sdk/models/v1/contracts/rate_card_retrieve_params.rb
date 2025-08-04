# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#retrieve
        class RateCardRetrieveParams < MetronomeSDK::Models::ID
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

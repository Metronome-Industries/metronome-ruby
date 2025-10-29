# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Settings
        # @see MetronomeSDK::Resources::V1::Settings::BillingProviders#list
        class BillingProviderListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute next_page
          #   The cursor to the next page of results
          #
          #   @return [String, nil]
          optional :next_page, String, nil?: true

          # @!method initialize(next_page: nil, request_options: {})
          #   @param next_page [String, nil] The cursor to the next page of results
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

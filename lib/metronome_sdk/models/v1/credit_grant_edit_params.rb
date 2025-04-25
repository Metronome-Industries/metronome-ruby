# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#edit
      class CreditGrantEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   the ID of the credit grant
        #
        #   @return [String]
        required :id, String

        # @!attribute credit_grant_type
        #   the updated credit grant type
        #
        #   @return [String, nil]
        optional :credit_grant_type, String

        # @!attribute expires_at
        #   the updated expiration date for the credit grant
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute name
        #   the updated name for the credit grant
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {})
        #   @param id [String] the ID of the credit grant
        #
        #   @param credit_grant_type [String] the updated credit grant type
        #
        #   @param expires_at [Time] the updated expiration date for the credit grant
        #
        #   @param name [String] the updated name for the credit grant
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

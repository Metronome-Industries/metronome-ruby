# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CreditGrantEditParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute id
        #   the ID of the credit grant
        #
        #   @return [String]
        required :id, String

        # @!attribute [r] credit_grant_type
        #   the updated credit grant type
        #
        #   @return [String, nil]
        optional :credit_grant_type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :credit_grant_type

        # @!attribute [r] expires_at
        #   the updated expiration date for the credit grant
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :expires_at

        # @!attribute [r] name
        #   the updated name for the credit grant
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!parse
        #   # @param id [String]
        #   # @param credit_grant_type [String]
        #   # @param expires_at [Time]
        #   # @param name [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end

# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list
      class PlanListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, description:, name:, custom_fields: nil)
        #   @param id [String]
        #   @param description [String]
        #   @param name [String]
        #   @param custom_fields [Hash{Symbol=>String}]
      end
    end
  end
end

# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanListResponse < MetronomeSDK::BaseModel
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

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!parse
        #   # @param id [String]
        #   # @param description [String]
        #   # @param name [String]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   #
        #   def initialize(id:, description:, name:, custom_fields: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end

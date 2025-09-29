# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Notifications#archive
    class NotificationArchiveParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      # @!attribute id
      #   The ID of the offset lifecycle event notification configuration to archive.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::NotificationArchiveParams} for more details.
      #
      #   @param id [String] The ID of the offset lifecycle event notification configuration to archive.
      #
      #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

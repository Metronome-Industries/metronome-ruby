# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Notifications#list_offset
      class NotificationListOffsetParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute archive_filter
        #   Filter options for the notification configurations. If not provided, defaults to
        #   NOT_ARCHIVED.
        #
        #   @return [Symbol, MetronomeSDK::Models::V2::NotificationListOffsetParams::ArchiveFilter, nil]
        optional :archive_filter, enum: -> { MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter }

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Float, nil]
        optional :limit, Float

        # @!method initialize(archive_filter: nil, cursor: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::NotificationListOffsetParams} for more details.
        #
        #   @param archive_filter [Symbol, MetronomeSDK::Models::V2::NotificationListOffsetParams::ArchiveFilter] Filter options for the notification configurations. If not provided, defaults to
        #
        #   @param cursor [String]
        #
        #   @param limit [Float]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Filter options for the notification configurations. If not provided, defaults to
        # NOT_ARCHIVED.
        module ArchiveFilter
          extend MetronomeSDK::Internal::Type::Enum

          ARCHIVED = :ARCHIVED
          NOT_ARCHIVED = :NOT_ARCHIVED
          ALL = :ALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

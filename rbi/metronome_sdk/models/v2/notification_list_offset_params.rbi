# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationListOffsetParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::NotificationListOffsetParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Filter options for the notification configurations. If not provided, defaults to
        # NOT_ARCHIVED.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::OrSymbol
            )
          )
        end
        attr_reader :archive_filter

        sig do
          params(
            archive_filter:
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::OrSymbol
          ).void
        end
        attr_writer :archive_filter

        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Float)) }
        attr_reader :limit

        sig { params(limit: Float).void }
        attr_writer :limit

        sig do
          params(
            archive_filter:
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::OrSymbol,
            cursor: String,
            limit: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter options for the notification configurations. If not provided, defaults to
          # NOT_ARCHIVED.
          archive_filter: nil,
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archive_filter:
                MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::OrSymbol,
              cursor: String,
              limit: Float,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter options for the notification configurations. If not provided, defaults to
        # NOT_ARCHIVED.
        module ArchiveFilter
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARCHIVED =
            T.let(
              :ARCHIVED,
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::TaggedSymbol
            )
          NOT_ARCHIVED =
            T.let(
              :NOT_ARCHIVED,
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

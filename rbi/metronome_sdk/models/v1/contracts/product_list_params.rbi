# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Contracts::ProductListParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Max number of results that should be returned
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Cursor that indicates where the next page of results should start.
          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          # Filter options for the product list
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::OrSymbol
              )
            )
          end
          attr_reader :archive_filter

          sig do
            params(
              archive_filter:
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::OrSymbol
            ).void
          end
          attr_writer :archive_filter

          sig do
            params(
              limit: Integer,
              next_page: String,
              archive_filter:
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Max number of results that should be returned
            limit: nil,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Filter options for the product list
            archive_filter: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                limit: Integer,
                next_page: String,
                archive_filter:
                  MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Filter options for the product list
          module ArchiveFilter
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ARCHIVED =
              T.let(
                :ARCHIVED,
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::TaggedSymbol
              )
            NOT_ARCHIVED =
              T.let(
                :NOT_ARCHIVED,
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter::TaggedSymbol
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
end

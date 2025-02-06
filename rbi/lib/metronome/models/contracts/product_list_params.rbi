# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductListParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { returns(T.nilable(Symbol)) }
        attr_reader :archive_filter

        sig { params(archive_filter: Symbol).void }
        attr_writer :archive_filter

        sig do
          params(
            limit: Integer,
            next_page: String,
            archive_filter: Symbol,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              limit: Integer,
              next_page: String,
              archive_filter: Symbol,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ArchiveFilter < Metronome::Enum
          abstract!

          ARCHIVED = :ARCHIVED
          NOT_ARCHIVED = :NOT_ARCHIVED
          ALL = :ALL

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end

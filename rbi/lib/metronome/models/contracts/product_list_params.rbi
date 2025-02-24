# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductListParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def archive_filter
        end

        sig { params(_: Symbol).returns(Symbol) }
        def archive_filter=(_)
        end

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

# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetIngestAliasesParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T::Array[String]) }
        def ingest_aliases
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ingest_aliases=(_)
        end

        sig do
          params(
            customer_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(customer_id:, ingest_aliases:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                customer_id: String,
                ingest_aliases: T::Array[String],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end

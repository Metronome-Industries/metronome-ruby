# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(T.nilable(T::Array[String])) }
        def customer_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def customer_ids=(_)
        end

        sig { returns(T.nilable(String)) }
        def ingest_alias
        end

        sig { params(_: String).returns(String) }
        def ingest_alias=(_)
        end

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

        sig { returns(T.nilable(T::Boolean)) }
        def only_archived
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def only_archived=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def salesforce_account_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def salesforce_account_ids=(_)
        end

        sig do
          params(
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          customer_ids: nil,
          ingest_alias: nil,
          limit: nil,
          next_page: nil,
          only_archived: nil,
          salesforce_account_ids: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                customer_ids: T::Array[String],
                ingest_alias: String,
                limit: Integer,
                next_page: String,
                only_archived: T::Boolean,
                salesforce_account_ids: T::Array[String],
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

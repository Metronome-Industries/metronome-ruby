# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerListParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Filter the customer list by customer_id. Up to 100 ids can be provided.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :customer_ids

        sig { params(customer_ids: T::Array[String]).void }
        attr_writer :customer_ids

        # Filter the customer list by ingest_alias
        sig { returns(T.nilable(String)) }
        attr_reader :ingest_alias

        sig { params(ingest_alias: String).void }
        attr_writer :ingest_alias

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

        # Filter the customer list to only return archived customers. By default, only
        # active customers are returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :only_archived

        sig { params(only_archived: T::Boolean).void }
        attr_writer :only_archived

        # Filter the customer list by salesforce_account_id. Up to 100 ids can be
        # provided.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :salesforce_account_ids

        sig { params(salesforce_account_ids: T::Array[String]).void }
        attr_writer :salesforce_account_ids

        sig do
          params(
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter the customer list by customer_id. Up to 100 ids can be provided.
          customer_ids: nil,
          # Filter the customer list by ingest_alias
          ingest_alias: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Filter the customer list to only return archived customers. By default, only
          # active customers are returned.
          only_archived: nil,
          # Filter the customer list by salesforce_account_id. Up to 100 ids can be
          # provided.
          salesforce_account_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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

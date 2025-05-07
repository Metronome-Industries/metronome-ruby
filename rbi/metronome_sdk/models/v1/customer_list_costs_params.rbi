# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListCostsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :customer_id

        # RFC 3339 timestamp (exclusive)
        sig { returns(Time) }
        attr_accessor :ending_before

        # RFC 3339 timestamp (inclusive)
        sig { returns(Time) }
        attr_accessor :starting_on

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

        sig do
          params(
            customer_id: String,
            ending_before: Time,
            starting_on: Time,
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # RFC 3339 timestamp (exclusive)
          ending_before:,
          # RFC 3339 timestamp (inclusive)
          starting_on:,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              ending_before: Time,
              starting_on: Time,
              limit: Integer,
              next_page: String,
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

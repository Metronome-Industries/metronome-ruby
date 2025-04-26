# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AuditLogListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

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

        # Optional parameter that can be used to filter which audit logs are returned. If
        # you specify resource_id, you must also specify resource_type.
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        # Optional parameter that can be used to filter which audit logs are returned. If
        # you specify resource_type, you must also specify resource_id.
        sig { returns(T.nilable(String)) }
        attr_reader :resource_type

        sig { params(resource_type: String).void }
        attr_writer :resource_type

        # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        sig { returns(T.nilable(MetronomeSDK::Models::V1::AuditLogListParams::Sort::OrSymbol)) }
        attr_reader :sort

        sig { params(sort: MetronomeSDK::Models::V1::AuditLogListParams::Sort::OrSymbol).void }
        attr_writer :sort

        # RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
        # 'next_page'.
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_on

        sig { params(starting_on: Time).void }
        attr_writer :starting_on

        sig do
          params(
            ending_before: Time,
            limit: Integer,
            next_page: String,
            resource_id: String,
            resource_type: String,
            sort: MetronomeSDK::Models::V1::AuditLogListParams::Sort::OrSymbol,
            starting_on: Time,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
          ending_before: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Optional parameter that can be used to filter which audit logs are returned. If
          # you specify resource_id, you must also specify resource_type.
          resource_id: nil,
          # Optional parameter that can be used to filter which audit logs are returned. If
          # you specify resource_type, you must also specify resource_id.
          resource_type: nil,
          # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
          sort: nil,
          # RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
          # 'next_page'.
          starting_on: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                ending_before: Time,
                limit: Integer,
                next_page: String,
                resource_id: String,
                resource_type: String,
                sort: MetronomeSDK::Models::V1::AuditLogListParams::Sort::OrSymbol,
                starting_on: Time,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        module Sort
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::AuditLogListParams::Sort) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE_ASC = T.let(:date_asc, MetronomeSDK::Models::V1::AuditLogListParams::Sort::TaggedSymbol)
          DATE_DESC = T.let(:date_desc, MetronomeSDK::Models::V1::AuditLogListParams::Sort::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::AuditLogListParams::Sort::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end

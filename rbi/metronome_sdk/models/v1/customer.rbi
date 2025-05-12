# typed: strong

module MetronomeSDK
  module Models
    module V1
      class Customer < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MetronomeSDK::V1::Customer, MetronomeSDK::Internal::AnyHash)
          end

        # the Metronome ID of the customer
        sig { returns(String) }
        attr_accessor :id

        # (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
        # alias) that can be used in usage events
        sig { returns(String) }
        attr_accessor :external_id

        # aliases for this customer that can be used instead of the Metronome customer ID
        # in usage events
        sig { returns(T::Array[String]) }
        attr_accessor :ingest_aliases

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig do
          params(
            id: String,
            external_id: String,
            ingest_aliases: T::Array[String],
            name: String,
            custom_fields: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # the Metronome ID of the customer
          id:,
          # (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
          # alias) that can be used in usage events
          external_id:,
          # aliases for this customer that can be used instead of the Metronome customer ID
          # in usage events
          ingest_aliases:,
          name:,
          custom_fields: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              external_id: String,
              ingest_aliases: T::Array[String],
              name: String,
              custom_fields: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

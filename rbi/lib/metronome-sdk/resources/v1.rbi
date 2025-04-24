# typed: strong

module MetronomeSDK
  module Resources
    class V1
      sig { returns(MetronomeSDK::Resources::V1::Alerts) }
      def alerts
      end

      sig { returns(MetronomeSDK::Resources::V1::Plans) }
      def plans
      end

      sig { returns(MetronomeSDK::Resources::V1::CreditGrants) }
      def credit_grants
      end

      sig { returns(MetronomeSDK::Resources::V1::PricingUnits) }
      def pricing_units
      end

      sig { returns(MetronomeSDK::Resources::V1::Customers) }
      def customers
      end

      sig { returns(MetronomeSDK::Resources::V1::Dashboards) }
      def dashboards
      end

      sig { returns(MetronomeSDK::Resources::V1::Usage) }
      def usage
      end

      sig { returns(MetronomeSDK::Resources::V1::AuditLogs) }
      def audit_logs
      end

      sig { returns(MetronomeSDK::Resources::V1::CustomFields) }
      def custom_fields
      end

      sig { returns(MetronomeSDK::Resources::V1::BillableMetrics) }
      def billable_metrics
      end

      sig { returns(MetronomeSDK::Resources::V1::Services) }
      def services
      end

      sig { returns(MetronomeSDK::Resources::V1::Invoices) }
      def invoices
      end

      sig { returns(MetronomeSDK::Resources::V1::Contracts) }
      def contracts
      end

      sig { params(client: MetronomeSDK::Client).void }
      def initialize(client:)
      end
    end
  end
end

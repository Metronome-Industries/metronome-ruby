# typed: strong

module Metronome
  class Client < Metronome::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def bearer_token
    end

    sig { returns(Metronome::Resources::Alerts) }
    def alerts
    end

    sig { returns(Metronome::Resources::Plans) }
    def plans
    end

    sig { returns(Metronome::Resources::CreditGrants) }
    def credit_grants
    end

    sig { returns(Metronome::Resources::PricingUnits) }
    def pricing_units
    end

    sig { returns(Metronome::Resources::Customers) }
    def customers
    end

    sig { returns(Metronome::Resources::Dashboards) }
    def dashboards
    end

    sig { returns(Metronome::Resources::Usage) }
    def usage
    end

    sig { returns(Metronome::Resources::AuditLogs) }
    def audit_logs
    end

    sig { returns(Metronome::Resources::CustomFields) }
    def custom_fields
    end

    sig { returns(Metronome::Resources::BillableMetrics) }
    def billable_metrics
    end

    sig { returns(Metronome::Resources::Services) }
    def services
    end

    sig { returns(Metronome::Resources::Invoices) }
    def invoices
    end

    sig { returns(Metronome::Resources::Contracts) }
    def contracts
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        base_url: T.nilable(String),
        bearer_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .void
    end
    def initialize(
      base_url: nil,
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end

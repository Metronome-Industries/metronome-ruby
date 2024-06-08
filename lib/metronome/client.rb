# frozen_string_literal: true

module Metronome
  class Client < BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client options.
    attr_reader :bearer_token

    # @return [Metronome::Resources::Alerts]
    attr_reader :alerts

    # @return [Metronome::Resources::Plans]
    attr_reader :plans

    # @return [Metronome::Resources::CreditGrants]
    attr_reader :credit_grants

    # @return [Metronome::Resources::Customers]
    attr_reader :customers

    # @return [Metronome::Resources::Dashboards]
    attr_reader :dashboards

    # @return [Metronome::Resources::Usage]
    attr_reader :usage

    # @return [Metronome::Resources::AuditLogs]
    attr_reader :audit_logs

    # @return [Metronome::Resources::CustomFields]
    attr_reader :custom_fields

    # @return [Metronome::Resources::BillableMetrics]
    attr_reader :billable_metrics

    # @return [Metronome::Resources::Services]
    attr_reader :services

    # @!visibility private
    def auth_headers
      {"Authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    def initialize(base_url: nil, bearer_token: nil, max_retries: nil)
      base_url ||= "https://api.metronome.com/v1"

      max_retries ||= DEFAULT_MAX_RETRIES

      @bearer_token = [bearer_token, ENV["METRONOME_BEARER_TOKEN"]].find { |v| !v.nil? }
      if @bearer_token.nil?
        raise ArgumentError, "bearer_token is required"
      end

      super(base_url: base_url, max_retries: max_retries)

      @alerts = Metronome::Resources::Alerts.new(client: self)
      @plans = Metronome::Resources::Plans.new(client: self)
      @credit_grants = Metronome::Resources::CreditGrants.new(client: self)
      @customers = Metronome::Resources::Customers.new(client: self)
      @dashboards = Metronome::Resources::Dashboards.new(client: self)
      @usage = Metronome::Resources::Usage.new(client: self)
      @audit_logs = Metronome::Resources::AuditLogs.new(client: self)
      @custom_fields = Metronome::Resources::CustomFields.new(client: self)
      @billable_metrics = Metronome::Resources::BillableMetrics.new(client: self)
      @services = Metronome::Resources::Services.new(client: self)
    end

    # @!visibility private
    def make_status_error(message:, body:, response:)
      case response.code.to_i
      when 400
        Metronome::HTTP::BadRequestError.new(message: message, response: response, body: body)
      when 401
        Metronome::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      when 403
        Metronome::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      when 404
        Metronome::HTTP::NotFoundError.new(message: message, response: response, body: body)
      when 409
        Metronome::HTTP::ConflictError.new(message: message, response: response, body: body)
      when 422
        Metronome::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      when 429
        Metronome::HTTP::RateLimitError.new(message: message, response: response, body: body)
      when 500..599
        Metronome::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        Metronome::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end

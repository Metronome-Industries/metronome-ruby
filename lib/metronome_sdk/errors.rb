# frozen_string_literal: true

module MetronomeSDK
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < MetronomeSDK::Errors::Error
    end

    class APIError < MetronomeSDK::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < MetronomeSDK::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < MetronomeSDK::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < MetronomeSDK::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [self]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          MetronomeSDK::Errors::BadRequestError.new(**kwargs)
        in 401
          MetronomeSDK::Errors::AuthenticationError.new(**kwargs)
        in 403
          MetronomeSDK::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          MetronomeSDK::Errors::NotFoundError.new(**kwargs)
        in 409
          MetronomeSDK::Errors::ConflictError.new(**kwargs)
        in 422
          MetronomeSDK::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          MetronomeSDK::Errors::RateLimitError.new(**kwargs)
        in (500..)
          MetronomeSDK::Errors::InternalServerError.new(**kwargs)
        else
          MetronomeSDK::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < MetronomeSDK::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end

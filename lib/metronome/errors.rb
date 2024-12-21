# frozen_string_literal: true

module Metronome
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Metronome::Error
  end

  class APIError < Metronome::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Metronome::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

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

  class APITimeoutError < Metronome::APIConnectionError
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

  class APIStatusError < Metronome::APIError
    # @private
    #
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [Object]
    # @param response [Object]
    #
    # @return [Metronome::APIStatusError]
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        Metronome::BadRequestError.new(**kwargs)
      in 401
        Metronome::AuthenticationError.new(**kwargs)
      in 403
        Metronome::PermissionDeniedError.new(**kwargs)
      in 404
        Metronome::NotFoundError.new(**kwargs)
      in 409
        Metronome::ConflictError.new(**kwargs)
      in 422
        Metronome::UnprocessableEntityError.new(**kwargs)
      in 429
        Metronome::RateLimitError.new(**kwargs)
      in (500..)
        Metronome::InternalServerError.new(**kwargs)
      else
        Metronome::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

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

  class BadRequestError < Metronome::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Metronome::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Metronome::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Metronome::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Metronome::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Metronome::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Metronome::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Metronome::APIStatusError
    HTTP_STATUS = (500..)
  end
end

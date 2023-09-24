module Chococino
  class ChococinoError < ::StandardError
    attr_reader :message, :error_code, :http_status, :field, :multiple
  end

  class InternalServerError < ChococinoError
    def initialize
      @message = "Ada gangguan pada sistem."
      @error_code = 10_000
      @http_status = 500
    end
  end

  class SubmitDataError < ChococinoError
    def initialize
      @message = "Submit data gagal."
      @error_code = 10_110
      @http_status = 400
    end
  end

  class NotFoundError < ChococinoError
    def initialize
      @message = "Data tidak ditemukan."
      @error_code = 10_110
      @http_status = 400
    end
  end
end
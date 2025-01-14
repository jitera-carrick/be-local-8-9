# typed: true
# 4
class BaseService
  def initialize(*_args); end

  def logger
    @logger ||= Rails.logger
  end
end
module Madmin
  class ApplicationController < Madmin::BaseController
    http_basic_authenticate_with name: ENV.fetch("MADMIN_USER", "admin"),
                                 password: ENV.fetch("MADMIN_PASSWORD", "password")
  end
end

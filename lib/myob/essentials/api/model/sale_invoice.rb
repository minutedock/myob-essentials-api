module Myob
  module Essentials
    module Api
      module Model
        class SaleInvoice < Base
          def model_route
            'businesses/:business_uid/sale/invoices'
          end

          def next_reference
            perform_request("#{resource_url}/nextReference")["reference"]
          end
        end
      end
    end
  end
end

Iamport.configure do |config|
    # Admin 체험버전 api_key, api_secret
    config.api_key = "imp_apikey"
    config.api_secret = "ekKoeW8RyKuT0zgaZsUtXXTLQ4AhPFW3ZGseDA6bkA5lamv9OqDMnxyeB9wqOsuO9W3Mx9YSJ4dTqJ3f"
end

class PaymentController < ApplicationController
    def show
        #
        # Do something...
        #

        result = Iamport.payment(params[:id])

        #
        # Do something...
        #

        render json: result
    end

    def create
        #
        # Do something...
        #

        body = {
            imp_uid: params[:imp_uid],
            merchant_uid: params[:merchant_uid],
        }
        result = Iamport.cancel(body)

        #
        # Do something...
        #

        render json: result
    end

    private

    def payment_params
        params.require(:payment).permit(:imp_uid, :merchant_uid)
    end
end
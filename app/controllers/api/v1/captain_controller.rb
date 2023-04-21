module Api
    module V1

        class CaptainController <Api::V1::ApplicationController



            def show
                @captain = Captain.find(params[:id])
            end

            def index
             @captain = Captain.all
            render json: @captain
            end

    # def get

    # end

        end
    end
end

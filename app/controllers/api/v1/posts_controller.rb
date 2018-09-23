module Api
    module V1

        class PostsController < ApplicationController
            before_action :authenticate_user
        end
    end
end

class QueryLogsController < ApplicationController

    def index
        session_id = request.session_options[:id]
        user_id = session_id
        @query_logs = QueryLog.includes(:user_id).all
         render json: @query_logs
    end

    def create
        session_id = request.session_options[:id]
        @query_log = QueryLog.new(search_term: params[:search_term], user_id: session_id, searched_at: Time.current)
        if @query_log.save 
          redirect_to articles_path
        else
            redirect_to articles_path
            render json: @query_log.errors, status: :unprocessable_entity
        end
      end

      private
      def query_log_params
        params.require(:query_log).permit(:search_term, :user_id, :searched_at)
      end
end

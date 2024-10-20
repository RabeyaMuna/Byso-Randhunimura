class BaseQuery

    include Assigner

    attr_accessor :current_user, :page, :per_page, :sort, :params

    def initialize(current_user:, params: {})
       @current_user = current_user
       @params = assign_attributes(params)
    end
end
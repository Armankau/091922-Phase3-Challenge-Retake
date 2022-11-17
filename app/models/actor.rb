class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        # self.roles.sum {|role| role.salary}
        self.roles.sum(:salary)
        #good
    end

    def blockbusters
        self.movies.filter {|movie| movie.box_office_earnings > 50_000_000}
        #good
    end

    def self.most_successful
        Role.all.max_by {|role| role.salary}.actor
    end
end
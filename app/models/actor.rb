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
        total = self.roles.sum {|role| role.salary}
        total.sort.last
    end
end
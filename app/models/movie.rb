class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        self.roles.create(salary: salary, character_name: character_name, actor: actor)
        #good
    end

    def all_credits
        self.roles.map {|role| "#{role.character_name}: Played by #{role.actor.name}"}
        # self.roles.map {|role| role.credit}
        #good
    end

    def fire_actor(actor)
        fired = self.roles.filter {|role| role.actor == actor}
        fired.destroy_all
    end
end
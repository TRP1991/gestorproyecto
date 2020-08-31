class Project < ApplicationRecord

    validates :name, presence: true
    validates :description, presence: true
    validates :state, presence: true

    scope :filter_state, ->(type_state) { where("state=?", type_state)} 

    before_save :default_state

    def default_state
        self.state = "Propuesta"
    end
end

class Pizza < ApplicationRecord
    validates :name, presence: true

    def toppings_list
        toppings.present? ? toppings.split(', ') : []
    end

    def toppings_list=(values)
        self.toppings = values.reject(&:blank?).join(', ')
    end
end

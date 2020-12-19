class Wine < ApplicationRecord
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains
    has_many :oenologist_wines
    has_many :oenologists, through: :oenologist_wines

    def strain_percentage
        @strain_percentage = []
        self.wine_strains.each do |wstrain| 
            @strain_percentage.push("#{wstrain.strain.name} " + "(#{wstrain.percentage} %)") 
        end
        @strain_percentage.sort.join(', ')
    end 
end

class Log < ApplicationRecord
    #validates_presence_of :only title and description. date and hours untill service can be left out
    validates_presence_of :title, description: true

end

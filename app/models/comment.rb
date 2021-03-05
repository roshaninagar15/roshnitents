class Comment < ApplicationRecord
def time
    created_at.strftime("%d/%m/%y at %l:%M %p")
end	
end

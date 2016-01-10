class Post < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x", thumb: "100x" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
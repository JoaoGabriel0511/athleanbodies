class Video < ApplicationRecord
    validates_presence_of :url
    validates_presence_of :name
    validates :url, format: {with: /^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/, :multiline => true}
    validates_presence_of :description
end

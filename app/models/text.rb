class Text < ApplicationRecord
    enum section: {about_main_text: 0, about_main_text_title: 1, home_title: 2,
         home_subtitle: 3, testimonial_client_1: 4, testimonial_client_2: 5,
         testimonial_client_3: 6, testimonial_content_1: 7, testimonial_content_2: 8,
         testimonial_content_3: 9}
end

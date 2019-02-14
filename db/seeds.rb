# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.delete_all
Text.delete_all

Admin.create(email: "admin@admin.com", password: "admin123", password_confirmation: "admin123")
Text.create(section: :about_main_text, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pharetra volutpat sapien sed imperdiet. Quisque non bibendum tortor, vel blandit purus. Praesent sit amet porttitor felis, eu tincidunt risus. Nullam aliquam erat a lorem lobortis sodales. Nullam rutrum arcu nisi, accumsan faucibus lectus congue vel. Maecenas blandit quis quam sed elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ornare neque vel nunc hendrerit, eu molestie ipsum ultrices. Proin blandit magna a scelerisque sodales.")
Text.create(section: :about_main_text_title, content: "Lorem ipsum")
Text.create(section: :home_title, content: "Lorem ipsum")
Text.create(section: :home_subtitle, content: "Lorem ipsum")
Text.create(section: :testimonial_client_1, content: "James")
Text.create(section: :testimonial_content_1, content: "Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.")
Text.create(section: :testimonial_client_2, content: "Jolyne")
Text.create(section: :testimonial_content_2, content: "Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.")
Text.create(section: :testimonial_client_3, content: "Jasmyn")
Text.create(section: :testimonial_content_3, content: "Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.")
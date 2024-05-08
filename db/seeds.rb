# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
usuarios = [
    {
    email: "paola@example.com",
    password: "contraseña",
    password_confirmation: "contraseña"
    },
    {
    email: "jose@example.com",
    password: "contraseña2",
    password_confirmation: "contraseña2"
    },
    {
        email: "maria@example.com",
        password: "contraseña3",
        password_confirmation: "contraseña3"
        }
]
usuarios.each do |usuario|
    Usuario.create(usuario)
end 

paciente = {
    first_name: "Susana",
    last_name: "Lopez",
    email:"susana@example.com",
    address:"Colonia Reforma numero #200 Oaxaca",
    age: "20",
    genre: "M"
}
Patient.create(paciente)

namespace :cria_admin do
    desc "Gera o acesso do master"
    task import: :environment do
        Admin.create!(
            email: "admin@admin.com",
            nome: "admin",
            password: "123456",
            password_confirmation:  "123456"
        )
    end
end

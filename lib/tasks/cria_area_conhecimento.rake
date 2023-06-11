namespace :cria_area_conhecimento do
    desc "Gera o acesso do master"
    task import: :environment do
        AreaConhecimento.create!(
            descricao: "Idiomas",
            ativo: true
        )
        AreaConhecimento.create!(
            descricao: "Desenvolvimento",
            ativo: true
        )
        AreaConhecimento.create!(
            descricao: "Tecnologia da Informação",
            ativo: true
        )
    end
end

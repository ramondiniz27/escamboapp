require 'faker'
namespace :dev do

desc "Setup Development"
  task setup: :environment do

  images_path = Rails.root.join('public','system')
    puts "Executando o SETUP para desenvolvimento..."
    puts %x(rake db:drop)
    puts "Apagando imagens de public #{%x(rm -rf #{images_path})}"
    puts %x(rake db:create)
    puts %x(rake db:migrate)
    puts %x(rake db:seed)
    puts %x(rake dev:generate_admins)
    puts %x(rake dev:generate_members)
    puts %x(rake dev:generate_ads)
    puts %x(rake dev:generate_comments)

    puts "SETUP completado com sucesso!..."
  end

#################################################################
  desc "Cria Administradores Fake"
    task generate_admins: :environment do
      puts "Cadastrando ADMINISTRADORES..."
      10.times do
        Admin.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          password: "123456",
          password_confirmation: "123456",
          role: [0,1,0,1,0].sample
        )
      end
      puts "ADMINISTRADORES cadastrados com sucesso!"
    end
###############################################################
    desc "Cria Membros Fake"
    task generate_members: :environment do
      puts "Cadastrando MEMBROS..."
      100.times do
        Member.create!(
          email: Faker::Internet.email,
          password: "123456",
          password_confirmation: "123456",
        )
      end
      puts "MEMBROS cadastrados com sucesso!"
    end
##############################################################
    desc "Cria Anuncios Fake"
    task generate_ads: :environment do
      puts"Criando Anuncios..."

      5.times do
        Ad.create!(
          title: Faker::Lorem.sentence([2,3,4,5].sample),
          description_md: markdown_fake,
          description_short: Faker::Lorem.sentence([2,3].sample),
          member: Member.first,
          category: Category.all.sample,
          price: "#{Random.rand(500)},#{Random.rand(99)}",
          finish_date: Date.today + Random.rand(90),
          picture: File.new(Rails.root.join('public','image-for-ads', "#{Random.rand(9)}.jpg"), 'r')
        )
      end

        100.times do
          Ad.create!(
            title: Faker::Lorem.sentence([2,3,4,5].sample),
            description:markdown_fake,
            member:Member.all.sample,
            description_md:markdown_fake,
            description_short:Faker::Lorem.sentence([2,3].sample),
            category: Category.all.sample,
            price: "#{Random.rand(500)},#{Random.rand(100)}",
            finish_date: Date.today +  Random.rand(100),
            picture: File.new(Rails.root.join('public','image-for-ads',"#{Random.rand(9)}.jpg"),'r')
            )
        end
      puts "Anuncios Cadastrados!"
      end
  def markdown_fake
    %x(ruby -e "require 'doctor_ipsum';puts DoctorIpsum::Markdown.entry")
  end
  ###############################################################
  desc "Cria Comentários Fake"
  task generate_comments: :environment do
    puts "Cadastrando COMENTÁRIOS..."

    Ad.all.each do |ad|
      (Random.rand(3)).times do
        Comment.create!(
          body: Faker::Lorem.paragraph([1,2,3].sample),
          member: Member.all.sample,
          ad: ad
        )
      end
    end

    puts "COMENTÁRIOS cadastrados com sucesso!"
  end
end
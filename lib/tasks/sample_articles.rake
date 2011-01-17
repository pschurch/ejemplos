require 'faker'
namespace :db do
  task :articles => :environment do
    para_articles
  end
end

def para_articles
  Article.create!(:name => "Algunos van primero", :published_at => "2010-10-05", :hidden => false)
  Article.create!(:name => "Esto es muy antiguo", :published_at => "2010-02-22", :hidden => false)
  Article.create!(:name => "No me puedes ver", :published_at => "2010-05-05", :hidden => true)
  Article.create!(:name => "Para el futuro", :published_at => "2010-10-08", :hidden => false)
end


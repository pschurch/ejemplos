require 'faker'
namespace :db do
  task :comments => :environment do
    para_comments
  end
end

def para_comments
  Comment.create!(:article_id => 1, :author => "Polita", :desc => "Primer comentario para el primer articulo", :published_at => "2010-12-27", :hidden => false)
  Comment.create!(:article_id => 2, :author => "Pepito Perez", :desc => "Otro comentario", :published_at => "2010-12-27", :hidden => false)
end


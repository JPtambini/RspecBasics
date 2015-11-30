require 'rspec'
require './article'
RSpec.configure do |rspec|
	rspec.color = true
end

describe Article do

# let(:article){ Article.new(title: "yo momma", body: "i like it", author: "jp") }
before do
	@options = {title: "yo momma", body: "i like it", author: "jp"}
	@article = Article.new(@options)
end
it "#title_not_empty"  do
	expect(@article.title).to eq("yo momma")
end
it "#body_not_empty" do
	expect(@article.body).to eq("i like it")
end
it "#authors_start_with_q_false" do
	expect(@article.authors_name_starts_with_q?).to eq(false)
end
it "#title_as_html" do
	expect(@article.title_as_html).to eq("<h1>yo momma</h1>")
end
it "#body_as_html" do
	expect(@article.body_as_html).to eq("<p>i like it</p>")
end
it "#author_as_html" do
	expect(@article.author_as_html).to eq("<b>jp</b>")
end
	
end


require 'rails_helper'

RSpec.describe Book, type: :model do
  context "nameとauthor_idが記載されている場合" do
    let(:author) { Author.create(name: "タケミチ") }
    let(:book) { Book.create(name: "沼", author: author) }
    it "正常に保存されること" do
      expect(book).to be_valid
    end
  end

  context "nameが記載されていない場合" do
    let(:author) { Author.create(name: "タケミチ") }
    let(:book) { Book.create(author: author) }
    it "正常に保存されないこと" do
      expect(book).to be_invalid 
    end
  end
end

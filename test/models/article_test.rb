require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
  end

  test "should not save entity article" do
    article = Article.new
    assert_not article.save
  end

  test "should create article with content and save" do
    assert_difference 'Article.count', 1 do
      article = Article.new
      article.name = "Test"
      article.content = "Test Content"
      article.save
    end
  end

  test "should delete article" do
    article = Article.new
    article.name = "Test"
    article.content = "Test Content"
    article.save
    assert_difference 'Article.count', -1 do
      Article.first.delete
    end
  end  

  test "should change article name" do
    article = Article.new
    article.name = "Test"
    article.content = "Test Content"
    article.save
    assert_equal article.name, "Test"
    article.name = "foo"
    article.save
    assert_equal article.name, "foo"
  end

  test "should set article name correctly" do
    article = Article.new
    article.name = ""
    article.content = "Test"
    assert_not article.save
  end

  test "should set article content correctly" do
    article = Article.new
    article.name = "Test"
    article.content = ""
    assert_not article.save
  end

end

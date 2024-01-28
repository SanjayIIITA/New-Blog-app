require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  # test "draft? return truth for draft blog post" do
  #  # assert is going to return true if not true then raise exception
  #   assert BlogPost.new(published_at: nil).draft?
  # end

  # test "draft? return false for published blog post" do
  #   refute BlogPost.new(published_at: 1.year.ago).draft?
  # end

  # test "draft? return false for scheduled blog post" do
  #   refute BlogPost.new(published_at: 1.year.from_now).draft?
  # end

  # test "published? return truth for published blog post" do
  #   assert BlogPost.new(published_at: 1.year.ago).published?
  # end

  # test "published? return false for draft blog post" do
  #   refute BlogPost.new(published_at: nil).published?
  # end

  # test "published? return false for scheduled blog post" do
  #   refute BlogPost.new(published_at: 1.year.from_now).published?
  # end

  # test "scheduled? return truth for scheduled blog post" do
  #   assert BlogPost.new(published_at: 1.year.from_now).scheduled?
  # end

  # test "scheduled? return false for published blog post" do
  #   refute BlogPost.new(published_at: 1.year.ago).scheduled?
  # end

  # test "scheduled? return false for draft blog post" do
  #   refute BlogPost.new(published_at: nil).scheduled?
  #end

  test "draft? return truth for draft blog post" do
    assert blog_posts(:draft).draft?
  end
 
  test "draft? return false for published blog post" do
    refute blog_posts(:published).draft?
  end
 
  test "draft? return false for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
  end
 
  test "published? return truth for published blog post" do
    assert blog_posts(:published).published?
  end
 
  test "published? return false for draft blog post" do
    refute blog_posts(:draft).published?
  end
 
  test "published? return false for scheduled blog post" do
   refute blog_posts(:scheduled).published?
  end
 
  test "scheduled? return truth for scheduled blog post" do
   assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled? return false for published blog post" do
   refute blog_posts(:published).scheduled?
  end

  test "scheduled? return false for draft blog post" do
   refute blog_posts(:draft).scheduled?
  end
end

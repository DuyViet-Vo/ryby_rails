require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: { post: { ghichu: @post.ghichu, hoTen269: @post.hoTen269, lop269: @post.lop269, maSV269: @post.maSV269, maSach269: @post.maSach269, ngayMuon: @post.ngayMuon, ngayTra: @post.ngayTra, soBM: @post.soBM, tenSach269: @post.tenSach269, tenTacGiac: @post.tenTacGiac, tuSach269: @post.tuSach269 } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { ghichu: @post.ghichu, hoTen269: @post.hoTen269, lop269: @post.lop269, maSV269: @post.maSV269, maSach269: @post.maSach269, ngayMuon: @post.ngayMuon, ngayTra: @post.ngayTra, soBM: @post.soBM, tenSach269: @post.tenSach269, tenTacGiac: @post.tenTacGiac, tuSach269: @post.tuSach269 } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference("Post.count", -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end

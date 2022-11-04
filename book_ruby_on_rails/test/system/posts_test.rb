require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit posts_url
    click_on "New post"

    fill_in "Ghichu", with: @post.ghichu
    fill_in "Hoten269", with: @post.hoTen269
    fill_in "Lop269", with: @post.lop269
    fill_in "Masv269", with: @post.maSV269
    fill_in "Masach269", with: @post.maSach269
    fill_in "Ngaymuon", with: @post.ngayMuon
    fill_in "Ngaytra", with: @post.ngayTra
    fill_in "Sobm", with: @post.soBM
    fill_in "Tensach269", with: @post.tenSach269
    fill_in "Tentacgiac", with: @post.tenTacGiac
    fill_in "Tusach269", with: @post.tuSach269
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Edit this post", match: :first

    fill_in "Ghichu", with: @post.ghichu
    fill_in "Hoten269", with: @post.hoTen269
    fill_in "Lop269", with: @post.lop269
    fill_in "Masv269", with: @post.maSV269
    fill_in "Masach269", with: @post.maSach269
    fill_in "Ngaymuon", with: @post.ngayMuon
    fill_in "Ngaytra", with: @post.ngayTra
    fill_in "Sobm", with: @post.soBM
    fill_in "Tensach269", with: @post.tenSach269
    fill_in "Tentacgiac", with: @post.tenTacGiac
    fill_in "Tusach269", with: @post.tuSach269
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end

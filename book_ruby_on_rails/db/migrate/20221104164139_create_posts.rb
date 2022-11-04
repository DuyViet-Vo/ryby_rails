class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :maSV269
      t.string :hoTen269
      t.string :lop269
      t.string :maSach269
      t.string :tenSach269
      t.string :tenTacGiac
      t.string :tuSach269
      t.string :soBM
      t.date :ngayMuon
      t.date :ngayTra
      t.text :ghichu

      t.timestamps
    end
  end
end

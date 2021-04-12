require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
  
    it 'nicknameが空では登録できないこと' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
  
    it 'emailが空では登録できないこと' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
  
    it 'passwordが空では登録できないこと' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'encrypted_passwordが空では登録できないこと' do
      @user.encrypted_password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Encrypted password can't be blank")
    end

    it 'first_nameが空では登録できないこと' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    
    it 'last_nameが空では登録できないこと' do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it 'first_name_kanaが空では登録できないこと' do
      @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank")
    end

    it 'last_name_kanaが空では登録できないこと' do
      @user.last_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana can't be blank")
    end

    it 'birthdayが空では登録できないこと' do
      @user.birthday = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end

    it 'passwordが5文字以下であれば登録できないこと' do
      @user.password = '12345'
      @user.encrypted_password = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'passwordとencrypted_passwordが不一致では登録できないこと' do
      @user.password = '123456'
      @user.encrypted_password = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Encrypted password is invalid")
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end
    
    it "emailに@がないと登録できない" do
      @user.email = 'test.co.jp'
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
      

    it 'passwordは半角英数字混合でないと登録できない' do
      @user.password = 'aaaaaaa'
      @user.encrypted_password = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid", "Encrypted password is invalid")
    end
    
    it 'first_nameとlast_nameは、全角（漢字・ひらがな・カタカナ）入力でないと登録できない' do
      @user.first_name = "kana"
      @user.last_name = "kana"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name is invalid", "First name is invalid")
    end

    it 'ユーザー本名のフリガナは、全角（カタカナ）入力でないと登録できない' do
      @user.first_name_kana = "kana"
      @user.last_name_kana = "kana"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name kana is invalid", "First name kana is invalid")
    end
  end
end

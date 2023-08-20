namespace :del_guest_user do
  desc 'ゲストを削除する'
  task del_guest_user: :environment do
    User.set_guest.find_each{ |user| user.destroy }
  end
end
# rake del_guest_user:del_guest_user                 # ゲストユーザーを削除する
# 继承的一个类后面加上了版本号,因为ralis升级过后作出的一些改变会有影响
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name

      t.timestamps
      # 自动创建两个参数
      # create_time
      # update_time
    end
  end
end

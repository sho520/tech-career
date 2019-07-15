class CreateIndustries < ActiveRecord::Migration[5.2]
  def change
    create_table :industries do |t|

      t.timestamps
      t.string :SIer
      t.string :communication__carrire
      t.string :internet__web__service__ASP
      t.string :web_marketing__internet_advertisement
      t.string :mobile__application_service
      t.string :IT_consulting
      t.string :software__package_vendor
      t.string :other_IT__web__telecommunication__internet
      t.string :IoT__M2M__robot
      t.string :AR__VR__MR

    end
  end
end

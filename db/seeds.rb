# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



StudentJobState.create(name: "キープ")
StudentJobState.create(name: "応募中")
StudentJobState.create(name: "CAオススメ")
StudentJobState.create(name: "選考中")
StudentJobState.create(name: "内定済")
StudentJobState.create(name: "選考落ち")
StudentJobState.create(name: "辞退")

JobState.create(name: "募集中")
JobState.create(name: "募集終了")

EmployeeType.create(name: "正社員")
EmployeeType.create(name: "契約社員/嘱託社員")
EmployeeType.create(name: "パートタイマー")
EmployeeType.create(name: "アルバイト")

NumberOfEmployee.create(number: "30名未満")
NumberOfEmployee.create(number: "30名以上〜50名未満")
NumberOfEmployee.create(number: "50名以上〜100名未満")
NumberOfEmployee.create(number: "100名以上〜300名未満")
NumberOfEmployee.create(number: "300名以上〜500名未満")
NumberOfEmployee.create(number: "500名以上〜1000名未満")
NumberOfEmployee.create(number: "1000名以上〜")

Location.create(prefecture: "北海道")
Location.create(prefecture: "東北地方")
Location.create(prefecture: "東京都")
Location.create(prefecture: "神奈川県")
Location.create(prefecture: "千葉県")
Location.create(prefecture: "埼玉県")
Location.create(prefecture: "茨城県")
Location.create(prefecture: "栃木県")
Location.create(prefecture: "群馬県")
Location.create(prefecture: "中部地方")
Location.create(prefecture: "近畿地方")
Location.create(prefecture: "中国地方")
Location.create(prefecture: "四国地方")
Location.create(prefecture: "九州地方")
Location.create(prefecture: "沖縄県")
Location.create(prefecture: "海外")

Industry.create(name:"システムインテグレータ・\n ソフトハウス")
Industry.create(name:"通信キャリア・データセンター・ISP")
Industry.create(name:"インターネット/Webサービス・ASP")
Industry.create(name:"Webマーケティング・ネット広告")
Industry.create(name:"モバイル/アプリサービス")
Industry.create(name:"ITコンサルティング")
Industry.create(name:"ソフトウェア/パッケージベンダ")
Industry.create(name:"その他IT/Web・通信・インターネット系")
Industry.create(name:"IoT・M2M・ロボット")
Industry.create(name:"AR/VR/MR")

Job.create(
  name: "株式会社Div1",
  industry_id:1,
  capital:1000000,
  sales:1000000,
  number_of_employee_id:1,
  establish_date: "2012-03-22",
  market_information: "一部上場",
  market_system: "自己資本",
  url: "https://di-v.co.jp/",
  location_id:3,
  business: "プログラミング教室",
  company_feature: "風通し良い、若い",
  position: "メンター",
  employee_type_id:1,
  job_description: "基礎カリキュラムのメンター、および教室の運営",
  required_work_experience: "社会人経験2年以上、プログラミングの知識",
  working_hours: "06:00 - 23:00",
  break_time: "6分",
  about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
  recruitment_period: "通年",
  number_of_recruitment_people:30,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均100時間以下）",
  salary_type: "年俸制",
  basic_salary:1000000,
  promotion: "有",
  bonus: "1",
  min_annual_income:15000000,
  max_annual_income:15000000,
  add_info_income: "特になし",
  example_annual_income: "30歳 2000万",
  trial_period: "有 6ヶ月",
  add_info_trial_period: "6か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
  age: "不問",
  reason_for_age_restriction: "長期勤続によるキャリアの形成を図る観点から、若年者等を期間の定めのない労働契約の対象として募集・採用する場合",
  number_of_interviews:4,
  educational_background: "不問",
  required_qualification: "フレームワークを利用したWebアプリケーション開発経験",
  ideal_candidate: "モチベーションが高く、向上心がある方",
  contents_of_test: "例）1次面接：人事面接  2次面接：部門面接  3次面接：鈴木さん面接  4次面接：役員面接   ※5回実施するケースがございます",
  commute_allowance: "無",
  overtime_pay: "有",
  other_allowance: "有",
  # various_insurance: "各種社会保険加入 (健康保険、介護保険、厚生年金、雇用保険、労災保険等)",
  # various_allowance: "通勤費全額支給",
  # holiday_vacation: "完全週休2日制（土・日）、年末年始休暇、慶弔休暇、有給休暇、祝日、介護休暇、その他休暇、リフレッシュ休暇、出産・育児休暇",
  yearly_holiday: "3日",
  work_transfer: "有",
  working_place_1: "ロサンゼルス",
  working_place_2: "ラスベガス",
  working_place_3: "ニューヨーク",
  working_place_4: "ロンドン",
  remark: "特に無し",
  job_state_id:1, 
  )

  Job.create(
    name: "株式会社Div2",
    industry_id:2,
    capital:2000000,
    sales:2000000,
    number_of_employee_id:2,
    establish_date: "2012-03-22",
    market_information: "未上場",
    market_system: "自己資本",
    url: "https://di-v.co.jp/",
    location_id:4,
    business: "プログラミング教室",
    company_feature: "風通し良い、若い",
    position: "ライフコーチ",
    employee_type_id:2,
    job_description: "受講生のライフコーチ、および教室の運営",
    required_work_experience: "社会人経験4年以上、プログラミングの知識",
    working_hours: "06:00 - 23:00",
    break_time: "10分",
    about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
    recruitment_period: "通年",
    number_of_recruitment_people:10,
    employment_period: "期間の定めのない雇用契約",
    add_info_working_time: "残業時間（月平均100時間以下）",
    salary_type: "月給制",
    basic_salary:1000000,
    promotion: "有",
    bonus: "2",
    min_annual_income:18000000,
    max_annual_income:18000000,
    add_info_income: "特になし",
    example_annual_income: "30歳 2000万",
    trial_period: "有 6ヶ月",
    add_info_trial_period: "6か月間は有期の雇用とする。",
    discretionary_labor_system: "有",
    fixed_overtime_pay: "有",
    add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
    age: "不問",
    reason_for_age_restriction: "長期勤続によるキャリアの形成を図る観点から、若年者等を期間の定めのない労働契約の対象として募集・採用する場合",
    number_of_interviews:3,
    educational_background: "不問",
    required_qualification: "フレームワークを利用したWebアプリケーション開発経験",
    ideal_candidate: "モチベーションが高く、向上心がある方",
    contents_of_test: "例）1次面接：人事面接  2次面接：部門面接  3次面接：役員面接   ※4回実施するケースがございます",
    commute_allowance: "無",
    overtime_pay: "有",
    other_allowance: "有",
    # various_insurance: "各種社会保険加入 (健康保険、介護保険、厚生年金、雇用保険、労災保険等)",
    # various_allowance: "通勤費全額支給",
    # holiday_vacation: "完全週休2日制（土・日）、年末年始休暇、慶弔休暇、有給休暇、祝日、介護休暇、その他休暇、リフレッシュ休暇、出産・育児休暇",
    yearly_holiday: "3日",
    work_transfer: "有",
    working_place_1: "ロサンゼルス",
    working_place_2: "ラスベガス",
    working_place_3: "ニューヨーク",
    working_place_4: "ロンドン",
    remark: "特に無し",
    job_state_id:1,
    )

    Job.create(
      name: "株式会社Div3",
      industry_id:3,
      capital:1000000,
      sales:1000000,
      number_of_employee_id:3,
      establish_date: "2012-03-22",
      market_information: "一部上場",
      market_system: "自己資本",
      url: "https://di-v.co.jp/",
      location_id:3,
      business: "プログラミング教室",
      company_feature: "風通し良い、若い",
      position: "キャリアアドバイザー",
      employee_type_id:3,
      job_description: "プログラミング初学者のキャリアドバイス、および教室の運営",
      required_work_experience: "社会人経験7年以上、プログラミングの知識不問",
      working_hours: "06:00 - 23:00",
      break_time: "90分",
      about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
      recruitment_period: "通年",
      number_of_recruitment_people:30,
      employment_period: "期間の定めのない雇用契約",
      add_info_working_time: "残業時間（月平均100時間以下）",
      salary_type: "年俸制",
      basic_salary:1100000,
      promotion: "有",
      bonus: "1",
      min_annual_income:20000000,
      max_annual_income:20000000,
      add_info_income: "特になし",
      example_annual_income: "30歳 2000万",
      trial_period: "有 6ヶ月",
      add_info_trial_period: "6か月間は有期の雇用とする。",
      discretionary_labor_system: "有",
      fixed_overtime_pay: "有",
      add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
      age: "不問",
      reason_for_age_restriction: "長期勤続によるキャリアの形成を図る観点から、若年者等を期間の定めのない労働契約の対象として募集・採用する場合",
      number_of_interviews:4,
      educational_background: "不問",
      required_qualification: "フレームワークを利用したWebアプリケーション開発経験",
      ideal_candidate: "モチベーションが高く、向上心がある方",
      contents_of_test: "例）1次面接：人事面接  2次面接：部門面接  3次面接：鈴木さん面接  4次面接：役員面接   ※5回実施するケースがございます",
      commute_allowance: "無",
      overtime_pay: "有",
      other_allowance: "有",
      # various_insurance: "各種社会保険加入 (健康保険、介護保険、厚生年金、雇用保険、労災保険等)",
      # various_allowance: "通勤費全額支給",
      # holiday_vacation: "完全週休2日制（土・日）、年末年始休暇、慶弔休暇、有給休暇、祝日、介護休暇、その他休暇、リフレッシュ休暇、出産・育児休暇",
      yearly_holiday: "3日",
      work_transfer: "有",
      working_place_1: "ロサンゼルス",
      working_place_2: "ラスベガス",
      working_place_3: "ニューヨーク",
      working_place_4: "ロンドン",
      remark: "特に無し",
      job_state_id:2, 
      )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


StudentJobState.create(name: "CAオススメ")
StudentJobState.create(name: "キープ")
StudentJobState.create(name: "応募中")
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
  capital:1000,
  sales:100,
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
  break_time: "6",
  about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
  recruitment_period: "通年",
  number_of_recruitment_people:30,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均100時間以下）",
  salary_type: "年俸制",
  basic_salary:10,
  promotion: "有",
  bonus: "1",
  min_annual_income:150,
  max_annual_income:160,
  add_info_income: "特になし",
  example_annual_income: "30歳 2000万",
  trial_period: "有 6ヶ月",
  add_info_trial_period: "6か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
  min_age: "",
  max_age: "",
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
  name: "株式会社google2",
  industry_id:2,
  capital:2000,
  sales:2000,
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
  break_time: "10",
  about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
  recruitment_period: "通年",
  number_of_recruitment_people:10,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均100時間以下）",
  salary_type: "月給制",
  basic_salary:100,
  promotion: "有",
  bonus: "2",
  min_annual_income:1800,
  max_annual_income:1900,
  add_info_income: "特になし",
  example_annual_income: "30歳 2000万",
  trial_period: "有 6ヶ月",
  add_info_trial_period: "6か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
  min_age: "22",
  max_age: "",
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
  name: "amazon株式会社3",
  industry_id:3,
  capital:1000,
  sales:1000,
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
  break_time: "90",
  about_overtime: "有(月100時間想定固定、超過分は別途追加支給)",
  recruitment_period: "通年",
  number_of_recruitment_people:30,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均100時間以下）",
  salary_type: "年俸制",
  basic_salary:110,
  promotion: "有",
  bonus: "1",
  min_annual_income:2000,
  max_annual_income:2400,
  add_info_income: "特になし",
  example_annual_income: "30歳 2000万",
  trial_period: "有 6ヶ月",
  add_info_trial_period: "6か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月100時間相当の固定残業代を給与に含み支給。※超過分支給有",
  min_age: "",
  max_age: "60",
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

Job.create(
  name: "株式会社zozoタウン4",
  industry_id:4,
  capital:4000,
  sales:4000,
  number_of_employee_id:4,
  establish_date: "2014-03-22",
  market_information: "一部上場",
  market_system: "自己資本",
  url: "https://di-v.co.jp/",
  location_id:3,
  business: "プログラミング教室",
  company_feature: "風通し悪い、平均年齢高め",
  position: "参謀役",
  employee_type_id:4,
  job_description: "経営者へのアドバイスと闇金営業との戦い",
  required_work_experience: "社会人経験20年以上、プログラミングの知識不問、金融業に詳しいと歓迎",
  working_hours: "09:00 - 18:00",
  break_time: "45",
  about_overtime: "無",
  recruitment_period: "今年中",
  number_of_recruitment_people:1,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均10時間以下）",
  salary_type: "月給制",
  basic_salary:11,
  promotion: "無",
  bonus: "3",
  min_annual_income:300,
  max_annual_income:350,
  add_info_income: "特になし",
  example_annual_income: "30歳 5000万",
  trial_period: "有 1ヶ月",
  add_info_trial_period: "1か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月10時間相当の固定残業代を給与に含み支給。※超過分支給有",
  min_age: "30",
  max_age: "50",
  reason_for_age_restriction: "長期勤続によるキャリアの形成を図る観点から、若年者等を期間の定めのない労働契約の対象として募集・採用する場合",
  number_of_interviews:2,
  educational_background: "不問",
  required_qualification: "フレームワークを利用したWebアプリケーション開発経験",
  ideal_candidate: "モチベーションが高く、向上心がある方",
  contents_of_test: "例）1次面接：人事面接  2次面接：：役員面接   ※3回実施するケースがございます",
  commute_allowance: "無",
  overtime_pay: "有",
  other_allowance: "有",
  # various_insurance: "各種社会保険加入 (健康保険、介護保険、厚生年金、雇用保険、労災保険等)",
  # various_allowance: "通勤費全額支給",
  # holiday_vacation: "完全週休2日制（土・日）、年末年始休暇、慶弔休暇、有給休暇、祝日、介護休暇、その他休暇、リフレッシュ休暇、出産・育児休暇",
  yearly_holiday: "120日",
  work_transfer: "有",
  working_place_1: "名古屋",
  working_place_2: "オーストラリア",
  working_place_3: "",
  working_place_4: "",
  remark: "特に無し",
  job_state_id:1, 
)

Job.create(
  name: "株式会社tech-camp5",
  industry_id:5,
  capital:5000,
  sales:5000,
  number_of_employee_id:5,
  establish_date: "2015-03-22",
  market_information: "未上場",
  market_system: "自己資本",
  url: "https://di-v.co.jp/",
  location_id:5,
  business: "プログラミング教室",
  company_feature: "風通し悪い、平均年齢高め",
  position: "参謀役",
  employee_type_id:4,
  job_description: "経営者へのアドバイスと闇金営業との戦い",
  required_work_experience: "社会人経験2年以上、プログラミングの知識不問、金融業に詳しいと歓迎",
  working_hours: "09:00 - 18:00",
  break_time: "45",
  about_overtime: "無",
  recruitment_period: "今年中",
  number_of_recruitment_people:1,
  employment_period: "期間の定めのない雇用契約",
  add_info_working_time: "残業時間（月平均10時間以下）",
  salary_type: "月給制",
  basic_salary:111,
  promotion: "無",
  bonus: "3",
  min_annual_income:3000,
  max_annual_income:3500,
  add_info_income: "特になし",
  example_annual_income: "30歳 5000万",
  trial_period: "有 1ヶ月",
  add_info_trial_period: "1か月間は有期の雇用とする。",
  discretionary_labor_system: "有",
  fixed_overtime_pay: "有",
  add_info_fixed_overtime_pay: "月10時間相当の固定残業代を給与に含み支給。※超過分支給有",
  min_age: "25",
  max_age: "",
  reason_for_age_restriction: "長期勤続によるキャリアの形成を図る観点から、若年者等を期間の定めのない労働契約の対象として募集・採用する場合",
  number_of_interviews:1,
  educational_background: "高卒",
  required_qualification: "excel、word、powerpointなどの基本的なソフトの利用経験",
  ideal_candidate: "計算能力、コミュニケーション能力が高く、人を騙すことに長けている人",
  contents_of_test: "例）1次面接：役員面接   ※2回実施するケースがございます",
  commute_allowance: "無",
  overtime_pay: "有",
  other_allowance: "有",
  # various_insurance: "各種社会保険加入 (健康保険、介護保険、厚生年金、雇用保険、労災保険等)",
  # various_allowance: "通勤費全額支給",
  # holiday_vacation: "完全週休2日制（土・日）、年末年始休暇、慶弔休暇、有給休暇、祝日、介護休暇、その他休暇、リフレッシュ休暇、出産・育児休暇",
  yearly_holiday: "125日",
  work_transfer: "無",
  working_place_1: "神戸",
  working_place_2: "オーストリア",
  working_place_3: "",
  working_place_4: "",
  remark: "特に無し",
  job_state_id:1, 
)

Advisor.create(
  email: "notyet@notyet",
  password:"123456",
  name:"（未登録）",
)
Advisor.create(
  email: "hangai@hangai",
  password:"123456",
  name:"hangai",
)
Advisor.create(
  email: "suzuki@suzuki",
  password:"123456",
  name:"suzuki",
)
Advisor.create(
  email: "abe@abe",
  password:"123456",
  name:"abe",
)

Student.create(
  email: "sho@sho",
  password: "1234567890",
  name: "sho",
  address: "東京都",
  birth_year:1992,
  birth_month:11,
  birth_day:11,
  age:27,
  period:52,
  team:"e",
  image:"",
  advisor_id:2,
)
Student.create(
  email: "tsuru@tsuru",
  password: "1234567890",
  name: "tsuru",
  address: "東京都",
  birth_year:1993,
  birth_month:11,
  birth_day:25,
  age:25,
  period:52,
  team:"e",
  image:"",
  advisor_id:2,
)
Student.create(
  email: "shimpei@shimpei",
  password: "1234567890",
  name: "shimpei",
  address: "兵庫県",
  birth_year:1987,
  birth_month:11,
  birth_day:11,
  age:31,
  period:52,
  team:"e",
  image:"",
  advisor_id:3,
)
Student.create(
  email: "usui@usui",
  password: "1234567890",
  name: "usui",
  address: "群馬県",
  birth_year:1995,
  birth_month:1,
  birth_day:19,
  age:22,
  period:53,
  team:"a",
  image:"",
  advisor_id:3,
)
Student.create(
  email: "goto@goto",
  password: "1234567890",
  name: "goto",
  address: "千葉県",
  birth_year:1991,
  birth_month:11,
  birth_day:11,
  age:28,
  period:53,
  team:"e",
  image:"",
  advisor_id:2,
)
Student.create(
  email: "kato@kato",
  password: "1234567890",
  name: "kato",
  address: "山梨県",
  birth_year:1990,
  birth_month:5,
  birth_day:3,
  age:29,
  period:53,
  team:"a",
  image:"",
  advisor_id:4,
)
Student.create(
  email: "watanabe@watanabe",
  password: "1234567890",
  name: "watanabe",
  address: "東京都",
  birth_year:1993,
  birth_month:10,
  birth_day:10,
  age:25,
  period:53,
  team:"d",
  image:"",
  advisor_id:1,
)

StudentJob.create(
  student_id:1,
  job_id:1,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:1,
  job_id:2,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:1,
  job_id:3,
  student_job_state_id:2,
)
StudentJob.create(
  student_id:1,
  job_id:4,
  student_job_state_id:2,
)
StudentJob.create(
  student_id:2,
  job_id:1,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:2,
  job_id:2,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:2,
  job_id:3,
  student_job_state_id:4,
)
StudentJob.create(
  student_id:2,
  job_id:4,
  student_job_state_id:4,
)
StudentJob.create(
  student_id:2,
  job_id:5,
  student_job_state_id:5,
)
StudentJob.create(
  student_id:3,
  job_id:1,
  student_job_state_id:2,
)
StudentJob.create(
  student_id:3,
  job_id:2,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:3,
  job_id:3,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:3,
  job_id:5,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:4,
  job_id:1,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:4,
  job_id:2,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:4,
  job_id:4,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:4,
  job_id:5,
  student_job_state_id:1,
)
StudentJob.create(
  student_id:5,
  job_id:3,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:5,
  job_id:4,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:5,
  job_id:5,
  student_job_state_id:4,
)
StudentJob.create(
  student_id:6,
  job_id:1,
  student_job_state_id:4,
)
StudentJob.create(
  student_id:6,
  job_id:2,
  student_job_state_id:4,
)
StudentJob.create(
  student_id:6,
  job_id:3,
  student_job_state_id:6,
)
StudentJob.create(
  student_id:6,
  job_id:4,
  student_job_state_id:6,
)
StudentJob.create(
  student_id:6,
  job_id:5,
  student_job_state_id:3,
)
StudentJob.create(
  student_id:7,
  job_id:1,
  student_job_state_id:7,
)
StudentJob.create(
  student_id:7,
  job_id:2,
  student_job_state_id:6,
)
StudentJob.create(
  student_id:7,
  job_id:4,
  student_job_state_id:5,
)
StudentJob.create(
  student_id:7,
  job_id:5,
  student_job_state_id:4,
)

VariousInsurance.create(name: "各種社会保険完備")
VariousInsurance.create(name: "雇用保険")
VariousInsurance.create(name: "労災保険")
VariousInsurance.create(name: "健康保険")
VariousInsurance.create(name: "介護保険")
VariousInsurance.create(name: "厚生年金保険")

VariousAllowance.create(name: "通勤手当")
VariousAllowance.create(name: "残業手当")
VariousAllowance.create(name: "休日手当")
VariousAllowance.create(name: "深夜手当")
VariousAllowance.create(name: "役職手当")
VariousAllowance.create(name: "資格手当")
VariousAllowance.create(name: "皆勤手当")
VariousAllowance.create(name: "家族手当")
VariousAllowance.create(name: "住宅手当")

HolidayVacation.create(name: "完全週休2日制")
HolidayVacation.create(name: "週休2日制")
HolidayVacation.create(name: "祝祭日")
HolidayVacation.create(name: "夏期休暇")
HolidayVacation.create(name: "年末年始休暇")
HolidayVacation.create(name: "年次有給休暇")
HolidayVacation.create(name: "リフレッシュ休暇")
HolidayVacation.create(name: "災害休暇")
HolidayVacation.create(name: "慶弔休暇")
HolidayVacation.create(name: "結婚休暇")
HolidayVacation.create(name: "バースデー休暇")
HolidayVacation.create(name: "ボランティア休暇")
HolidayVacation.create(name: "教育訓練休暇")
HolidayVacation.create(name: "病気休暇")
HolidayVacation.create(name: "出産休暇")
HolidayVacation.create(name: "転勤時休暇")
HolidayVacation.create(name: "異動休暇")
HolidayVacation.create(name: "アニバーサリー休暇")
HolidayVacation.create(name: "永年勤続休暇")

Language.create(language: "java")
Language.create(language: "Ruby")
Language.create(language: "PHP")
Language.create(language: "python")
Language.create(language: "Go")
Language.create(language: "JavaScript")
Language.create(language: "C++")
Language.create(language: "C#")
Language.create(language: "unity")
Language.create(language: "COBOL")
Language.create(language: "swift")
Language.create(language: "scala")
Language.create(language: "R")
Language.create(language: "VB")
Language.create(language: "Kotlin")


HolidayVacationJob.create(
  job_id:1,
  holiday_vacation_id:1,
)
3.upto(10) do |n|
  HolidayVacationJob.create(
    job_id:1,
    holiday_vacation_id:n,
  )
end

HolidayVacationJob.create(
  job_id:2,
  holiday_vacation_id:1,
)
3.upto(16) do |n|
  HolidayVacationJob.create(
    job_id:2,
    holiday_vacation_id:n,
  )
end

HolidayVacationJob.create(
  job_id:3,
  holiday_vacation_id:2,
)
3.upto(5) do |n|
  HolidayVacationJob.create(
    job_id:3,
    holiday_vacation_id:n,
  )
end
15.upto(17) do |n|
  HolidayVacationJob.create(
    job_id:3,
    holiday_vacation_id:n,
  )
end

HolidayVacationJob.create(
  job_id:4,
  holiday_vacation_id:2,
)
3.upto(7) do |n|
  HolidayVacationJob.create(
    job_id:4,
    holiday_vacation_id:n,
  )
end
11.upto(14) do |n|
  HolidayVacationJob.create(
    job_id:4,
    holiday_vacation_id:n,
  )
end

HolidayVacationJob.create(
  job_id:5,
  holiday_vacation_id:1,
)
3.upto(19) do |n|
  HolidayVacationJob.create(
    job_id:5,
    holiday_vacation_id:n,
  )
end

LanguageJob.create(
  job_id:1,
  language_id:1,
)
LanguageJob.create(
  job_id:1,
  language_id:6,
)
LanguageJob.create(
  job_id:2,
  language_id:2,
)
LanguageJob.create(
  job_id:2,
  language_id:6,
)
LanguageJob.create(
  job_id:3,
  language_id:1,
)
LanguageJob.create(
  job_id:3,
  language_id:3,
)
LanguageJob.create(
  job_id:3,
  language_id:6,
)
LanguageJob.create(
  job_id:4,
  language_id:4,
)
LanguageJob.create(
  job_id:4,
  language_id:13,
)
LanguageJob.create(
  job_id:4,
  language_id:14,
)
LanguageJob.create(
  job_id:5,
  language_id:5,
)
LanguageJob.create(
  job_id:5,
  language_id:11,
)
LanguageJob.create(
  job_id:5,
  language_id:15,
)

1.upto(9) do |n|
  VariousAllowanceJob.create(
    job_id:1,
    various_allowance_id:n,
  )
end
2.upto(8) do |n|
  VariousAllowanceJob.create(
    job_id:2,
    various_allowance_id:n,
  )
end
3.upto(7) do |n|
  VariousAllowanceJob.create(
    job_id:3,
    various_allowance_id:n,
  )
end
4.upto(6) do |n|
  VariousAllowanceJob.create(
    job_id:4,
    various_allowance_id:n,
  )
end
6.upto(9) do |n|
  VariousAllowanceJob.create(
    job_id:5,
    various_allowance_id:n,
  )
end

1.upto(6) do |n|
  VariousInsuranceJob.create(
    job_id:1,
    various_insurance_id:n,
  )
end
2.upto(6) do |n|
  VariousInsuranceJob.create(
    job_id:2,
    various_insurance_id:n,
  )
end
1.upto(1) do |n|
  VariousInsuranceJob.create(
    job_id:3,
    various_insurance_id:n,
  )
end
2.upto(6) do |n|
  VariousInsuranceJob.create(
    job_id:4,
    various_insurance_id:n,
  )
end
2.upto(6) do |n|
  VariousInsuranceJob.create(
    job_id:5,
    various_insurance_id:n,
  )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create!(user_id:1,user_name:"Nguyễn Thanh Phi",user_email:"nguyenthanhphi0401@gmail.com",
	user_password:"Tietkhaiky2")
User.create!(user_id:2,user_name:"Trần Thị Ngọc Diệu",user_email:"ngocdieu1310@gmail.com",
	user_password:"Tietkhaiky2")
User.create!(user_id:3,user_name:"Nguyễn Hữu Tân",user_email:"nguyenhuutan1975@gmail.com",
	user_password:"Tietkhaiky2")
User.create!(user_id:4,user_name:"Dương Thị Tuyết",user_email:"duongthituyet1975@gmail.com",
	user_password:"Tietkhaiky2")
User.create!(user_id:5,user_name:"Nguyễn Thị Bích Phương",user_email:"nguyenthibichphuong2000@gmail.com",
	user_password:"Tietkhaiky2")

Message.delete_all
Message.create!(m_id:1,m_userown:1,m_usersend:2,m_content:"Em nhớ anh quá. Tối nay chúng mình gặp nhau nha. Anh qua chở em nha. Mình đi ăn chỗ hồi bữa đó. quán đó ngon lắm . OK nha anh!",
				m_status:true)
Message.create!(m_id:2,m_userown:1,m_usersend:4,m_content:"Con trai có khỏe không?",
				m_status:true)




class WeekModel{
  final String title;
  final String point;
  final String place;
  final String date;
  final Range range;
  final String image;
  WeekModel(this.title, this.point, this.place, this.date, this.range,this.image);
}

enum Range {morning, afternoon,late}

 List<WeekModel> WeekData = [
   WeekModel("ตรวจรถเข้า-ออก","ป้อมหลัง","หมู่บ้าน 01","18/01/64",Range.morning,"https://www.img.in.th/images/51018409a4a9e7402e70a21b33f9d5c8.png"),
   WeekModel("ดูแลความปลอดภัย","ป้อมหน้า","หมู่บ้าน 01","19/01/64",Range.afternoon,"https://www.img.in.th/images/01e268c09466a30fd659330ad43dc3c9.png"),
   WeekModel("ตรวจรถเข้า-ออก","ป้อมหลัง","หมู่บ้าน 01","20/01/64",Range.late,"https://www.img.in.th/images/1ec6fa3f83046a183543e08dcc3ed288.png"),
   WeekModel("สำนักงาน","ป้อมหน้า","หมู่บ้าน 01","21/01/64",Range.late,"https://www.img.in.th/images/426ecc499fe3c114a03daba45095f997.png"),
 ];
class UnboardingContent{
  String image;
  String title; 
  String description;
  UnboardingContent(
    {required this.image, required this.title, required this.description});
}
  List<UnboardingContent> contents = [
    UnboardingContent(
    image: 'images/screen1.jpg', 
    title: 'Lụa chọn từ chúng tôi\n    Thực đơn tốt nhất', 
    description: 'Hãy chọn món ăn từ thực đơn của chúng tôi\n                            Hơn 35 lần'),
    UnboardingContent(
      image: 'images/screen2.jpeg', 
      title: 'Dễ sử dụng và Thanh toán Online', 
      description: 'Bạn có thể thanh toán khi nhận hàng hoặc\n                    Thanh toán qua thẻ'),
    UnboardingContent(
      image: 'images/screen3.png', 
      title: 'Giao hàng nhanh chóng', 
      description: 'Giao hàng đến tận nơi')
  ];

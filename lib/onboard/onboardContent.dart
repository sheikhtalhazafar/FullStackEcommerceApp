class onbaordContent{
  String image;
  String title;
  String description;

  onbaordContent({required this.image, required this.title, required this.description});
}

List<onbaordContent> Content = [
  onbaordContent(image: 'images/screen1.png', title: 'select from our \n  from our menu', description: 'Pick your food from our menu'),
  onbaordContent(image: 'images/screen2.png', title: 'Easy Online \n  Payment', description: 'you can pay us in cash or card too'),
  onbaordContent(image: 'images/screen3.png', title: 'Quick Delivery \n  at Door Step', description: 'you can take away or we delivere'),
];
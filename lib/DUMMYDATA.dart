const DUMMY_MEALS = const [

Meal(
id: 'm1',
title: '  الصف الأول الإبتدائي  الترم الأول التاني'
),

  Meal(
      id: 'm2',
      title: '  الصف الثاني الإبتدائي  الترم الأول التاني'
  )
];
class Meal{

  final String id;
  final String title;


  const Meal({
     this.id,
     this.title,

  });

}
class HomeworkModel {
  HomeworkModel({
    this.title,
    this.subject,
    this.submitted,
  });
  final String? title;
  final String? subject;
  final bool? submitted;
}

class HomeworkDates {
  HomeworkDates({
    this.date,
    this.homework,
  });
  final String? date;
  final List<HomeworkModel>? homework;
}

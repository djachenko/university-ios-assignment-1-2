	#import <Foundation/Foundation.h>

#import "Student.h"
#import "Human.h"

@interface Teacher : Human

typedef NS_ENUM(int, Degree)
{
	assistant,
	teacher,
	docent,
	professor
};

typedef NS_ENUM(NSInteger, TeacherDegree) {
	teacherDegreeUnknown,
	teacherDegreeAssistant,
	teacherDegreeTeacher,
	teacherDegreeDocent,
	teacherDegreeProfessor
};

@property (nonatomic, strong, readonly) Subordinator *students;
@property (nonatomic) TeacherDegree degree;

@end

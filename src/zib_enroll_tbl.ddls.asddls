@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Basic View Enroll'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZIB_ENROLL_TBL
  as select from zemployee_enroll
  association [0..*] to zcourse_table   as _course   on _course.course_id = zemployee_enroll.courseid
  association [0..*] to zemployee_table as _employee on _employee.employee_id = zemployee_enroll.employee_id
{
  key enroll_uuid as EnrollUuid,
  key employee_id as EmployeeId,
  key courseid    as Courseid,
      status      as Status,
      marks       as Marks,
      _course,
      _employee
}

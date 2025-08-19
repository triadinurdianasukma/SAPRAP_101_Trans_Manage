@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Basic View Course Draft'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZIB_COURSE_D
  as select from zcourse_table_d
  composition [0..*] of ZIB_ENROLL_D as _Enroll
{
  key courseuuid      as Courseuuid,
      course_id       as CourseId,
      course_name     as CourseName,
      virtualpossible as Virtualpossible,
      ishandson       as Ishandson,
      totalmarks      as Totalmarks,
      cutofmarks      as Cutofmarks,
      start_date      as StartDate,
      end_date        as EndDate,
      iscomplete      as Iscomplete,
      capacity        as Capacity,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at      as changedAt,
      // Make association public
      _Enroll
}

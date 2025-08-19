@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption/Projection View Course Draft'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCOURSE_DRAFT_C
  as projection on ZIB_COURSE_D
{
  key Courseuuid,
      CourseId,
      CourseName,
      Virtualpossible,
      Ishandson,
      Totalmarks,
      Cutofmarks,
      StartDate,
      EndDate,
      Iscomplete,
      Capacity,
      LastChangedBy,
      LastChangedAt,
      changedAt,
      /* Associations */
      _Enroll : redirected to composition child ZENROLL_DRAFT_C
}

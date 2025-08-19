@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Basic View Course'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZIB_COURSE_TBL
  as select from zcourse_table
{
  key course_id,
      course_name,
      virtualpossible,
      ishandson,
      totalmarks,
      cutofmarks,
      start_date,
      end_date,
      iscomplete,
      capacity
}

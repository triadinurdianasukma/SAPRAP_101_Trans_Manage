@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Basic View Enroll Draft'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIB_ENROLL_D
  as select from zemp_enroll_d
  association        to parent ZIB_COURSE_D as _Course   on $projection.Courseuuid = _Course.Courseuuid
  association [1..1] to ZIB_EMPLOYEE_TBL    as _Employee on $projection.Employeeid = _Employee.EmployeeId
  //association to parent
{
  key enroll_uuid     as EnrollUuid,
      courseuuid      as Courseuuid,
      employeeid      as Employeeid,
      status          as Status,
      marks           as Marks,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      _Course,
      _Employee
}

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Basic View Employee'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZIB_EMPLOYEE_TBL
  as select from zemployee_table
{
  key employee_id as EmployeeId,
      fname       as FirstName,
      lname       as LastName,
      mname       as MiddleName,
      dob         as BirthDate,
      gender      as Gender
}

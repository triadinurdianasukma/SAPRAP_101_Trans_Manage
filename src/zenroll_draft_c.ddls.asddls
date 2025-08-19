@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption/Projection View Enroll Draft'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZENROLL_DRAFT_C
  as projection on ZIB_ENROLL_D
{
  key EnrollUuid,
      Courseuuid,
      Employeeid,
      Status,
      Marks,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Course : redirected to parent ZCOURSE_DRAFT_C,
      _Employee
}

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption/Projection View Employee'
@Metadata.ignorePropagatedAnnotations: true
@UI:{ headerInfo: { title.label: 'Employee Information', typeName: 'Employee', typeNamePlural: 'Employee Data', title.type: #STANDARD } }
@Metadata.allowExtensions: true
define root view entity ZEMPLOYEE_C
  as projection on ZIB_EMPLOYEE_TBL
{
      @UI.facet: [{ id: 'employeeid', position: 10, label: 'Employee ID', type: #IDENTIFICATION_REFERENCE }]
      @UI.lineItem: [{ position: 10, label: 'Employee ID', type: #STANDARD }]
      @UI.identification: [{ position: 10, label: 'Employee ID', type: #STANDARD }]
  key EmployeeId,
      @UI.lineItem: [{ position: 20, label: 'First Name', type: #STANDARD }]
      @UI.identification: [{ position: 20, label: 'First Name', type: #STANDARD }]
      FirstName,
      @UI.lineItem: [{ position: 30, label: 'Last Name', type: #STANDARD }]
      @UI.identification: [{ position: 30, label: 'Last Name', type: #STANDARD }]
      LastName,
      @UI.lineItem: [{ position: 40, label: 'Middle Name', type: #STANDARD }]
      @UI.identification: [{ position: 40, label: 'Middle Name', type: #STANDARD }]
      MiddleName,
      @UI.lineItem: [{ position: 50, label: 'Birthday Date', type: #STANDARD }]
      @UI.identification: [{ position: 50, label: 'Birthday Date', type: #STANDARD }]
      BirthDate,
      @UI.lineItem: [{ position: 60, label: 'Gender', type: #STANDARD }]
      @UI.identification: [{ position: 60, label: 'Gender', type: #STANDARD }]
      Gender
}

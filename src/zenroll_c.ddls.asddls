@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption/Projection View Enroll'
@Metadata.ignorePropagatedAnnotations: true
@UI: {
  headerInfo: { title.label: 'Course Enrollment',title.type: #STANDARD, typeName: 'Enroll', typeNamePlural: 'Enrolls' }
}
define root view entity ZENROLL_C
  as projection on ZIB_ENROLL_TBL
{
      @UI.facet: [{ id: 'trainingID', label: 'Trainig ID', position: 10, type: #IDENTIFICATION_REFERENCE  }]
      @UI.lineItem: [{ position: 10, type: #STANDARD }]
      @UI.identification: [{ position: 10, type: #STANDARD }]
  key EnrollUuid,
      @UI.lineItem: [{ position: 20, type: #STANDARD, label: 'Employee ID' }]
      @UI.identification: [{ position: 20, type: #STANDARD }]
  key EmployeeId,
      @UI.lineItem: [{ position: 30, type: #STANDARD, label: 'Course ID' }]
      @UI.identification: [{ position: 30, type: #STANDARD }]
  key Courseid,
      @UI.lineItem: [{ position: 40, type: #STANDARD, label: 'Status' }]
      @UI.identification: [{ position: 40, type: #STANDARD }]
      Status,
      @UI.lineItem: [{ position: 50, type: #STANDARD, label: 'Marks' }]
      @UI.identification: [{ position: 50, type: #STANDARD }]
      Marks
}

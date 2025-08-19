@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption/Projection View Course'
@Metadata.ignorePropagatedAnnotations: true
@UI:{ headerInfo: { title.label: 'Course Information', typeName: 'Course', typeNamePlural: 'Course', title.type: #STANDARD } }
define root view entity ZCOURSE_C
  as projection on ZIB_COURSE_TBL
{
      @UI.facet: [{ id: 'courseid', position: 10, label: 'Course ID', type: #IDENTIFICATION_REFERENCE }]
      @UI.lineItem: [{ position: 10, label: 'Course ID', type: #STANDARD }]
      @UI.identification: [{ position: 10, label: 'Course ID', type: #STANDARD }]
  key course_id,
      @UI.lineItem: [{ position: 20, label: 'Course Name', type: #STANDARD }]
      @UI.identification: [{ position: 20, label: 'Course Name', type: #STANDARD }]
      course_name,
      @UI.lineItem: [{ position: 30, label: 'VirtualPossible', type: #STANDARD }]
      @UI.identification: [{ position: 30, label: 'VirtualPossible', type: #STANDARD }]
      virtualpossible,
      @UI.lineItem: [{ position: 40, label: 'Ishandon', type: #STANDARD }]
      @UI.identification: [{ position: 40, label: 'Ishandon', type: #STANDARD }]
      ishandson,
      @UI.lineItem: [{ position: 50, label: 'Total Mark', type: #STANDARD }]
      @UI.identification: [{ position: 50, label: 'Total Mark', type: #STANDARD }]
      totalmarks,
      @UI.lineItem: [{ position: 60, label: 'Cut Off Marks', type: #STANDARD }]
      @UI.identification: [{ position: 60, label: 'Cut Off Marks', type: #STANDARD }]
      cutofmarks,
      @UI.lineItem: [{ position: 70, label: 'Start Date', type: #STANDARD }]
      @UI.identification: [{ position: 70, label: 'Start Date', type: #STANDARD }]
      start_date,
      @UI.lineItem: [{ position: 80, label: 'End Date', type: #STANDARD }]
      @UI.identification: [{ position: 80, label: 'End Date', type: #STANDARD }]
      end_date,
      @UI.lineItem: [{ position: 90, label: 'IsCompleted', type: #STANDARD }]
      @UI.identification: [{ position: 90, label: 'IsCompleted', type: #STANDARD }]
      iscomplete,
      @UI.lineItem: [{ position: 100, label: 'Capacity', type: #STANDARD }]
      @UI.identification: [{ position: 100, label: 'Capacity', type: #STANDARD }]
      capacity
}

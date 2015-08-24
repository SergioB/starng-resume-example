class Resume extends StarRecord
  intro: Text.field
    length: 500
  languagesSpoken: Text.field
    length: 200
  placesWorked: ManyToOne.to PlaceWorked


class PlaceWorked extends StarRecord
  name: Text.field
    length: 100
  position: Text.field
    length: 50

  startYear: Year.field
  endYear: Year.field


class Year extends TextField
  validation:
    RegExp: '^[0-9]' #numbers only


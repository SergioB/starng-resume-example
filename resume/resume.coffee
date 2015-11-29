class @Resume extends StarRecord
  intro: Text.field
    length: 500
  languagesSpoken: StarField.field
    length: 200
#  placesWorked: ManyToOne.to PlaceWorked
#    maxNumber: 30


class PlaceWorked extends StarRecord
  name: Text.field
    length: 100
  position: Text.field
    length: 50

  startYear: Year.field
    length:5
  endYear: Year.field
    length:5



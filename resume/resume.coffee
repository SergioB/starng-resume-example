class @Resume extends StarRecord
  name: Text.field
    maxLength: 100
    minLength: 3
    notEmpty: true

  intro: Text.field
    length: 500

  languagesSpoken: Text.field
    length: 200
    label: "Language Spoken"
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



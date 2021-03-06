class @Resume extends StarRecord
  name: Text.field
    max: 100
    min: 3
    validator: Validators.createValidator "No Agents Smith allowed", (value)-> # custom validator
      value=="Agent Smith"

  intro: Text.field
    max: 10
    height: 5
    optional: true

  languagesSpoken: Text.field
    max: 200
    min: 3
    label: "Language Spoken"

  email: Email.field
    label: "Email"

  password: Password.field
    label: "Password"

#  placesWorked: ManyToOne.to PlaceWorked
#    maxNumber: 30

  forms:
    default:
      fields: ['name', 'intro', 'languagesSpoken']

#    register:
#      fields: ['name', 'email', 'password']
#
#    editProfile:
#      fields: ['name', 'intro', 'languagesSpoken', 'email', 'password']

  hooks:
    # after insert is called after actual object was inserted, but before calling invokers callback, after save
    afterInsert: (error)->
      Accounts.createUser(@name.value, @email.value, @password.value)


class PlaceWorked extends StarRecord
  name: Text.field
    max: 100
    min: 3
  position: Text.field
    max: 50

  startYear: Year.field
    length:5
  endYear: Year.field
    length:5



#class Resume extends StarRecord
#  intro: Text.field
#    length: 500

console.log("start.cjsx")
if Meteor.isClient
  console.log ("Meteor isClient")
  #ReactDOM = require('react-dom')
  Meteor.startup ->
    ReactDOM.render(<NewObject type={Resume} />, document.getElementById("render-target"))
    #ReactDOM.render(<NewObject type={Resume} form="register" />, document.getElementById("render-target"))
    #ReactDOM.render(<EditObject />, document.getElementById("render-target"))
    #React.render(<EditObject />, document.getElementById("render-target"))

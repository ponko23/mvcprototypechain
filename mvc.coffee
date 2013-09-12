model =
  id: String
  val: String
  get: ()->
    @val
  set: (value)->
    @val = value
  ref: ()->
    $(@id).val(@val)
  clear: ()->
    @val = ""


Text01 =
  id: '#Header_Text01'
  val: Number
  __proto__: model

Text02 =
  id:  '#Header_Text02'
  val: Number
  __proto__: model

Text03 =
  id:  '#Header_Text03'
  val: Number
  __proto__: model

Text04 =
  id:  '#Header_Text04'
  val: String
  __proto__: model

Text05 =
  id:  '#Header_Text05'
  val: Date
  __proto__: model

$ () ->
  Text01.val = "あいうえお"
  Text01.ref()
  Text05.val = new Date()
  Text05.ref()

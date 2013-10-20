baseModel =
  id: String
  val: String
  get: ()->
    @val
  set: (value)->
    @val = value
    @ref()
  ref: ()->
    $(@id).val(@val)
  eff: ()->
    @val = $(@id).val()
  clear: ()->
    @set ''

NumberModel =
  __proto__ : baseModel
  val: Number
  set: (value)->
    @val = if typeof value is 'string' then Number(value) else value
    @ref()
    return

Text0 =
  id: '#Header_Number'
  __proto__: NumberModel

Text01 =
  id: '#Header_Text01'
  val: Number
  __proto__: baseModel

Text02 =
  id:  '#Header_Text02'
  val: Number
  __proto__: baseModel

Text03 =
  id:  '#Header_Text03'
  val: Number
  __proto__: baseModel

Text04 =
  id:  '#Header_Text04'
  val: String
  __proto__: baseModel

Text05 =
  id:  '#Header_Text05'
  val: Date
  __proto__: baseModel

$ () ->
  Text01.val = "あいうえお"
  Text01.ref()
  Text05.val = new Date()
  Text05.ref()
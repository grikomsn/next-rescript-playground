type t = {
  value: bool,
  disable: unit => unit,
  enable: unit => unit,
  toggle: unit => unit,
}

let useBoolean = (~initial: bool=false, ()) => {
  let (value, setValue) = React.useState(() => initial)
  {
    value: value,
    disable: () => setValue(_ => false),
    enable: () => setValue(_ => true),
    toggle: () => setValue(prev => !prev),
  }
}

let default = () => {
  open Hooks

  let {value, disable, enable, toggle} = useBoolean()
  let stateText = switch value {
  | true => "enabled"
  | false => "disabled"
  }

  <section className="space-y-2 py-4">
    <h1 className="font-bold text-2xl"> {"Hello, world!"->React.string} </h1>
    <p>
      {`Elit quis eu do incididunt. Veniam sit laborum incididunt ullamco. Tempor sunt duis minim non quis amet ullamco exercitation mollit reprehenderit deserunt ullamco magna ad. Anim cupidatat pariatur adipisicing tempor labore labore. Velit veniam pariatur tempor ea duis pariatur. Pariatur voluptate excepteur eiusmod esse ullamco aute labore do dolor do exercitation. Dolore velit irure officia adipisicing. Labore eu veniam quis duis cupidatat fugiat proident pariatur labore nostrud deserunt consequat duis cupidatat sunt. Fugiat do dolore est irure in nostrud cillum occaecat aute aliquip sunt nisi elit. Ullamco laboris labore incididunt.`->React.string}
    </p>
    <div> {"State: "->React.string} {stateText->React.string} </div>
    <div className="flex items-center space-x-2">
      <button className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => disable()}>
        {"disable"->React.string}
      </button>
      <button className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => enable()}>
        {"enable"->React.string}
      </button>
      <button className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => toggle()}>
        {"toggle"->React.string}
      </button>
    </div>
    <Next.Link href="/test">
      <a className="text-blue-500 block"> {"Open test page"->React.string} </a>
    </Next.Link>
    <Next.Link href="/test" _as="/test2">
      <a className="text-blue-500 block"> {"Open test as test2 page"->React.string} </a>
    </Next.Link>
  </section>
}

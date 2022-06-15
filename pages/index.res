let default = () => {
  let state = Hooks.useBoolean()
  let stateText = switch state["value"] {
  | true => "enabled"->React.string
  | false => "disabled"->React.string
  }

  <section className="space-y-2 py-4">
    <h1 className="font-bold text-2xl"> {"Hello, world!"->React.string} </h1>
    <p>
      {`Elit quis eu do incididunt. Veniam sit laborum incididunt ullamco. Tempor sunt duis minim non quis amet ullamco exercitation mollit reprehenderit deserunt ullamco magna ad. Anim cupidatat pariatur adipisicing tempor labore labore. Velit veniam pariatur tempor ea duis pariatur. Pariatur voluptate excepteur eiusmod esse ullamco aute labore do dolor do exercitation. Dolore velit irure officia adipisicing. Labore eu veniam quis duis cupidatat fugiat proident pariatur labore nostrud deserunt consequat duis cupidatat sunt. Fugiat do dolore est irure in nostrud cillum occaecat aute aliquip sunt nisi elit. Ullamco laboris labore incididunt.`->React.string}
    </p>
    <div> {"State: "->React.string} {stateText} </div>
    <div className="flex items-center space-x-2">
      <button
        className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => state["disable"]()}>
        {"disable"->React.string}
      </button>
      <button
        className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => state["enable"]()}>
        {"enable"->React.string}
      </button>
      <button
        className="border px-4 py-1 rounded hover:bg-gray-300/30" onClick={_ => state["toggle"]()}>
        {"toggle"->React.string}
      </button>
    </div>
    <Next.Link href="/test">
      <a className="text-blue-500"> {"Open test page"->React.string} </a>
    </Next.Link>
  </section>
}

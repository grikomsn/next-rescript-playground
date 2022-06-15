let default = () => {
  <section className="space-y-2 py-4">
    <h1 className="font-bold text-2xl"> {"Test Page"->React.string} </h1>
    <Next.Link href="/">
      <a className="text-blue-500"> {"Back to home page"->React.string} </a>
    </Next.Link>
  </section>
}

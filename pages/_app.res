%%raw(`import "styles/index.css"`)

type pageProps

type props = {
  @as("Component")
  component: React.component<pageProps>,
  pageProps: pageProps,
}

let default = ({component, pageProps}: props) => {
  <Layout> {React.createElement(component, pageProps)} </Layout>
}

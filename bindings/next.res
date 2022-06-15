// node_modules/next/dist/client/link.d.ts
module Link = {
  @module("next/link") @react.component
  external make: (
    ~href: string,
    @as("as") ~_as: string=?,
    ~replace: bool=?,
    ~scroll: bool=?,
    ~shallow: bool=?,
    ~passHref: bool=?,
    ~prefetch: bool=?,
    ~children: React.element,
  ) => React.element = "default"
}

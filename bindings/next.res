// node_modules/next/dist/client/link.d.ts
module Link = {
  @module("next/link") @react.component
  external make: (
    ~href: string,
    @as("as") ~_as: string=?,
    ~replace: option<bool>=?,
    ~scroll: option<bool>=?,
    ~shallow: option<bool>=?,
    ~passHref: option<bool>=?,
    ~prefetch: option<bool>=?,
    ~children: React.element,
  ) => React.element = "default"
}

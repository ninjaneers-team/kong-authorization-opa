package = "kong-opa"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/ninjaneers-team/kong-authorization-opa",
  tag = "v1.0"
}

description = {
  summary = "OPA Plugin",
  license = "Apache 2.0",
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.opa.handler"] = "/opa/handler.lua",
    ["kong.plugins.opa.schema"] = "/opa/schema.lua"
  }
}

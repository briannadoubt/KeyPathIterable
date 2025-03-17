@attached(member, names: named(allKeyPaths))
@attached(extension)
public macro KeyPathIterable() = #externalMacro(
    module: "KeyPathIterableMacrosPlugin",
    type: "KeyPathIterableMacro"
)

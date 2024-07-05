export function $azureCustomizations(context, target, additions) {
    for (const [key, def] of additions.properties) {
        const type = def.type;
        if ("kind" in type && type.kind === "Intrinsic" && type.name === "void") {
            target.properties.delete(key);
        }
        else {
            target.properties.set(key, def);
        }
    }
}

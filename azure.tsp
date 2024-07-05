import "./main.tsp";
import "./azure.js";

extern dec azureCustomizations(target: TypeSpec.Reflection.Model, agmentWith: TypeSpec.Reflection.Model);


@@azureCustomizations(OpenAI.CreateChatCompletionRequest, {
    // Azure doesn't support the `model` parameter
    // Note: we could use `never` for this as well... thoughts?
    `model`: void;

    /**
     * The data that the model will use to generate the completion.
     * Bla, bla, bla...
     */
    on_your_data?: string;
});
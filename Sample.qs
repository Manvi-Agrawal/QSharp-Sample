namespace Sample {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Convert;

    @EntryPoint()
    operation Superposition() : Result {

        use qubit = Qubit();
        H(qubit);
        let result = M(qubit);
        Reset(qubit);
        return result;
    }
}
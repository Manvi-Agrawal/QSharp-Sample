namespace TeleportLib {

    operation Teleport(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();

        PrepareBell.PrepareBellPair(here, target);      // calls the PrepareBellPair() operation 
        Adjoint PrepareBell.PrepareBellPair(msg, here);

        if M(msg) == One { Z(target); }
        if M(here) == One { X(target); }

        Reset(here);
    }
}
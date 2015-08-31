


Compute the differences on the generated binaries (static diversity)
-----------------------------------------------


    cd diversify 
    bash compare_binaries.sh

Typical output:
    
    none;100.0
    spoon;89.19463692977267
    fr.inria.diversify.EncryptLiteralProcessor;59.26670966061257
    fr.inria.diversify.InvertIfProcessor;79.48860672414149
    fr.inria.diversify.VariableDeclaration;85.33640215768689
    fr.inria.diversify.FantomProcessor;54.14817360211656
    cohen.process.EmptyMethod;56.873094708208924
    cohen.process.EquivalenceInstr;75.9407028465036
    cohen.process.ReverseIf;79.1106094262228
    cohen.process.ThreadCreationProcessor;89.19463692977267
    all;41.75183449652991
    
Compute the differences on the execution diversity (behavioral diversity)
-----------------------------------------------

It uses flight recorder

    cd diversify 
    bash recorder.sh


Then you generate the result matrix:

    # generates ../records_1441027891/data.csv
    bash matrix.sh  ../records_1441027891/
    
Then you generate the plot

    python plot.py ../records_1441027891/data.csv
    

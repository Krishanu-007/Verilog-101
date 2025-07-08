// This a scenario based question //
// The question: Suppose you are designing a circuit to control a cellphone's ringer and vibration motor. Whenever the phone needs to ring from an incoming call (input ring), your circuit must either turn on the ringer (output ringer = 1) or the motor (output motor = 1), but not both. If the phone is in vibrate mode (input vibrate_mode = 1), turn on the motor. Otherwise, turn on the ringer.Try to use only assign statements, to see whether you can translate a problem description into a collection of logic gates.//

// Unsuccessful Version: //
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign motor=ring&vibrate_mode;	//Logic for motor is correct
    assign ringer=~motor;	//However the ringer logic is not the inverse of motor but have specific condition
endmodule


// Successful Version: //
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign ringer=(ring==1'b1&&vibrate_mode==1'b0)?1'b1:1'b0;	//The specific condition mentioned, this could have been written also as ringer = ring &~vibrate_mode;
    assign motor=ring&vibrate_mode;
endmodule




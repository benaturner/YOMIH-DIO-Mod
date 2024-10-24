# Your Only Move Is Hustle DIO Mod
Your Only Move Is Hustle (YOMIH) is a novel turn-based fighting game created by indie developer Ivy Sly in Godot.
Included in this repository are scripts that I created or edited for a mod that adds DIO from Jojo's Bizzare Adventure as a playable fighter.

DioChar.gd: This script normally just extends the Fighter object to give assign the various basic properties common among all fighters in YOMIH, however I added some scripting to control DIO time-stop ability alongside the TimeStop.gd script.

Lifedrain.gd: This script is an edited version of the standard Grab script that controls DIO's Lifedrain command grab by delaying the throw and draining the opponents life after each tick.

RoadRollerJump.gd: This script is used when the player first uses the Road Roller move to have DIO enter a state in which the player cannot make any inputs until the move is completed then changes the character state to use the RoadRoller.gd script at the end of the jump.

RoadRoller.gd: This script is used when DIO is falling during the Road Roller move and changes the character state to use the RoadRollerHit.gd script when it hits the ground.

RoadRollerHit.gd: This script is used when the Road Roller move hits the ground, making a large explosion before finally leaving the Road Roller character states.

Teleport.gd: This script is used when DIO's "Teleport" move is used to effectively teleport DIO next to the opponent and spawn eight knife projectiles in a circle around the opponent.

TimeStop.gd: This script causes the opponent to enter a hit state where all moves are unusable and calls the start_timestop() function in Dio_Char.gd on the correct frame.

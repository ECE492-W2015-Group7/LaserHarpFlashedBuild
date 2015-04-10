#include <stdio.h>

/*
 * MIDIGenerator.c
 *
 *  Created on: 2015-04-03
 *      Author: qsjiang
 */

int getPitch(int musicScale,int laserIndex){
	int laserToPitchMappingTable[4][8]={
		{60,62,64,65,67,69,71,72},
		{60,62,63,65,67,68,70,72},
		{60,63,65,66,67,70,72,75},
		{60,62,63,65,67,69,70,72}
	};
	return laserToPitchMappingTable[musicScale][laserIndex];
}


int generateMidiData(int pitch,int noteType){
	int statusByte;
	int pitchByte;
	int velocityBtye;

	statusByte = 144; //10010000 Note On through midi channel 1
	pitchByte = pitch;
	if (noteType==1){
		//Defaults to 64 in the absence of velocity sensors
		velocityBtye = 64;
	}else{
		//when velocity is zero = Note Off
		velocityBtye = 0;
	}
	//formate: 	0 statusBtye 1	0 pitchByte 1	0 velocityByte 1
	return (statusByte<<21) + (1<<20) + (0<<19) + (pitchByte<<11) + (1<<10) + (0<<9) + (velocityBtye<<1) +(1<<0);

}

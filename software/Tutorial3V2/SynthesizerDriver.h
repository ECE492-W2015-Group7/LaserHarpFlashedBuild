/*
 * MidiLib.h
 *
 *  Created on: 2015-03-07
 *      Author: eorodrig
 */

#ifndef MIDILIB_H_
#define MIDILIB_H_

//void processNote(int noteStatus, int pitch, int velocity);

//void endVoice(int voiceNum);
//void startVoice(int voiceNum, int sampleRate);
/**
 * USe these calls
 */
void turnOffVoice(double noteNum);
void turnOnVoice(int noteNum);

#endif /* MIDILIB_H_ */

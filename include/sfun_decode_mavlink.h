/*
DO NOT EDIT.
This file was automatically created by the Matlab function 'create_sfun_decode' on 11-Feb-2019 12:21:05
as part of Simulink MAVLink library.
*/

#include "C:\Users\JustinG\Documents\simulink_mavlink\include\sfun_mavlink_msg_hil_actuator_controls.h"

#define NFIELDS_OUTPUT_BUS (NFIELDS_BUS_HIL_ACTUATOR_CONTROLS)

#define OFFSET_HIL_ACTUATOR_CONTROLS 0

/*
Decode the incoming MAVLink message
*/
static inline void decode_mavlink_msg (SimStruct *S, const mavlink_message_t *msg)
{
	int_T *busInfo = (int_T *) ssGetUserData(S);

	char* yvec0 = (char *) ssGetOutputPortRealSignal(S, 0);
	switch (msg->msgid) {

		case MAVLINK_MSG_ID_HIL_ACTUATOR_CONTROLS:
			decode_msg_hil_actuator_controls(msg, busInfo, yvec0, OFFSET_HIL_ACTUATOR_CONTROLS);
			break;
	}
}

' action_18
'== Forward tumbling ============================

DIM A AS BYTE
DIM A16 AS BYTE

PTP SETON 				
PTP ALLON				

'== motor diretion setting ======================
DIR G6A,1,0,0,1,0,0		
DIR G6B,1,1,1,1,1,1		
DIR G6C,0,0,0,0,0,0		
DIR G6D,0,1,1,0,1,0		

'== motor start position read ===================
GETMOTORSET G6A,1,1,1,1,1,0
GETMOTORSET G6B,1,1,1,0,0,0
GETMOTORSET G6C,1,1,1,0,0,0
GETMOTORSET G6D,1,1,1,1,1,0

	SPEED 5

'== motor power on  =============================
	MOTOR G24	

	GOSUB standard_pose

'================================================
MAIN:    	
		
A = REMOCON(1)	
	IF A <> 21 THEN GOTO main

	GOSUB forward_tumbling
	GOSUB standard_pose
	GOTO MAIN

'================================================
standard_pose:
	MOVE G6A,100,  76, 145,  93, 100, 100 
	MOVE G6D,100,  76, 145,  93, 100, 100  
	MOVE G6B,100,  30,  80, 100, 100, 100
	MOVE G6C,100,  30,  80, 100, 100, 100
	WAIT
	RETURN
'================================================
forward_tumbling:

SPEED 8
GOSUB standard_pose
MOVE G6A,100, 155,  20, 140, 100, 100
MOVE G6D,100, 155,  20, 140, 100, 100
MOVE G6B,130,  50,  85, 100, 100, 100
MOVE G6C,130,  50,  85, 100, 100, 100
WAIT

MOVE G6A, 60, 165,  30, 165, 155, 100
MOVE G6D, 60, 165,  30, 165, 155, 100
MOVE G6B,170,  10, 100, 100, 100, 100
MOVE G6C,170,  10, 100, 100, 100, 100
WAIT

MOVE G6A, 75, 165,  55, 165, 155, 100
MOVE G6D,75, 165,  55, 165, 155, 100
MOVE G6B,185,  10, 100, 100, 100, 100
MOVE G6C,185,  10, 100, 100, 100, 100
WAIT

MOVE G6A, 80, 155,  85, 150, 150, 100
MOVE G6D, 80, 155,  85, 150, 150, 100
MOVE G6B,185,  40, 60,  100, 100, 100
MOVE G6C,185,  40, 60,  100, 100, 100
WAIT

MOVE G6A,100, 130, 120,  80, 110, 100
MOVE G6D,100, 130, 120,  80, 110, 100
MOVE G6B,130, 160,  10, 100, 100, 100
MOVE G6C,130, 160,  10, 100, 100, 100
WAIT

MOVE G6A,100, 160, 110, 140, 100, 100
MOVE G6D,100, 160, 110, 140, 100, 100
MOVE G6B,140,  70,  20, 100, 100, 100
MOVE G6C,140,  70,  20, 100, 100, 100
WAIT

SPEED 15
MOVE G6A,100,  56, 110,  26, 100, 100
MOVE G6D,100,  71, 177, 162, 100, 100
MOVE G6B,170,  40,  50, 100, 100, 100
MOVE G6C,170,  40,  50, 100, 100, 100
WAIT

MOVE G6A,100,  62, 110,  15, 100, 100
MOVE G6D,100,  71, 128, 113, 100, 100
MOVE G6B,190,  40,  50, 100, 100, 100
MOVE G6C,190,  40,  50, 100, 100, 100
WAIT

SPEED 15
MOVE G6A,100,  55, 110,  15, 100, 100
MOVE G6D,100,  55, 110,  15, 100, 100
MOVE G6B,190,  40,  50, 100, 100, 100
MOVE G6C,190,  40,  50, 100, 100, 100
WAIT

SPEED 10

MOVE G6A,100, 110, 100,  15, 100, 100
MOVE G6D,100, 110, 100,  15, 100, 100
MOVE G6B,170, 160, 115, 100, 100, 100
MOVE G6C,170, 160, 115, 100, 100, 100
WAIT

MOVE G6A,100, 170,  70,  15, 100, 100
MOVE G6D,100, 170,  70,  15, 100, 100
MOVE G6B,190, 170, 120, 100, 100, 100
MOVE G6C,190, 170, 120, 100, 100, 100
WAIT

MOVE G6A,100, 170,  30,  110, 100, 100
MOVE G6D,100, 170,  30,  110, 100, 100
MOVE G6B,190,  40,  60, 100, 100, 100
MOVE G6C,190,  40,  60, 100, 100, 100
WAIT

GOSUB sit_pose

GOSUB standard_pose

RETURN
'================================================
sit_pose:

	SPEED 10
	MOVE G6A,100, 151,  23, 140, 101, 100,
	MOVE G6D,100, 151,  23, 140, 101, 100
	MOVE G6B,100,  30,  80, 100, 100, 100
	MOVE G6C,100,  30,  80, 100, 100, 100	
	WAIT
	RETURN
'================================================
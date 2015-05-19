! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1352
_P_Kernel_threadManager:
	.skip	41732
_P_Kernel_frameManager:
	.skip	76
	.align
! String constants
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_117:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_110:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_109:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_107:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_106:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_97:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_96:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_95:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_93:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_92:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_91:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_90:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_89:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_88:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_87:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_85:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_78:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_75:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x1cef1a39,r4		! myHashVal = 485431865
	cmp	r3,r4
	be	_Label_137
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_137:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_138
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_138
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_138
_Label_138:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1890:
	push	r0
	sub	r1,1,r1
	bne	_Label_1890
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_139 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1891:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1891
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_143 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_144 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_143  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_145 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_146 = _temp_145 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_146 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1892:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1892
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_148 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_149 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_148  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_150 = _function_136_IdleFunction
	set	_function_136_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_151 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_150  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_152
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_153
	.word	-12
	.word	4
	.word	_Label_154
	.word	-16
	.word	4
	.word	_Label_155
	.word	-20
	.word	4
	.word	_Label_156
	.word	-24
	.word	4
	.word	_Label_157
	.word	-28
	.word	4
	.word	_Label_158
	.word	-32
	.word	4
	.word	_Label_159
	.word	-36
	.word	4
	.word	_Label_160
	.word	-40
	.word	4
	.word	_Label_161
	.word	-44
	.word	4
	.word	_Label_162
	.word	-48
	.word	4
	.word	_Label_163
	.word	-52
	.word	4
	.word	_Label_164
	.word	-56
	.word	4
	.word	_Label_165
	.word	-60
	.word	4
	.word	0
_Label_152:
	.ascii	"InitializeScheduler\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_136_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_136_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1893:
	push	r0
	sub	r1,1,r1
	bne	_Label_1893
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_166:
!	jmp	_Label_167
_Label_167:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_171 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_169 else goto _Label_170
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_170
	jmp	_Label_169
_Label_169:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_172
_Label_170:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_172:
! END WHILE...
	jmp	_Label_166
_Label_168:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_136_IdleFunction:
	.word	_sourceFileName
	.word	_Label_173
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_174
	.word	8
	.word	4
	.word	_Label_175
	.word	-12
	.word	4
	.word	_Label_176
	.word	-16
	.word	4
	.word	0
_Label_173:
	.ascii	"IdleFunction\0"
	.align
_Label_174:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_176:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1894:
	push	r0
	sub	r1,1,r1
	bne	_Label_1894
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_179 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_179 ) then goto _Label_178		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_178
!	jmp	_Label_177
_Label_177:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_181 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_181 [0 ] into _temp_182
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_180 = _temp_182		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_180  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_178:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_183 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_184:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_188 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_187  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_187 then goto _Label_186 else goto _Label_185
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_185
	jmp	_Label_186
_Label_185:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_189 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_190 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_184
_Label_186:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_193 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_193 ) then goto _Label_192		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_192
!	jmp	_Label_191
_Label_191:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_195 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_195 [0 ] into _temp_196
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_194 = _temp_196		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_197 = *_temp_198  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_197) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = _temp_197 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_192:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_200
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_201
	.word	8
	.word	4
	.word	_Label_202
	.word	-16
	.word	4
	.word	_Label_203
	.word	-20
	.word	4
	.word	_Label_204
	.word	-24
	.word	4
	.word	_Label_205
	.word	-28
	.word	4
	.word	_Label_206
	.word	-32
	.word	4
	.word	_Label_207
	.word	-36
	.word	4
	.word	_Label_208
	.word	-40
	.word	4
	.word	_Label_209
	.word	-44
	.word	4
	.word	_Label_210
	.word	-48
	.word	4
	.word	_Label_211
	.word	-52
	.word	4
	.word	_Label_212
	.word	-9
	.word	1
	.word	_Label_213
	.word	-56
	.word	4
	.word	_Label_214
	.word	-60
	.word	4
	.word	_Label_215
	.word	-64
	.word	4
	.word	_Label_216
	.word	-68
	.word	4
	.word	_Label_217
	.word	-72
	.word	4
	.word	_Label_218
	.word	-76
	.word	4
	.word	_Label_219
	.word	-80
	.word	4
	.word	0
_Label_200:
	.ascii	"Run\0"
	.align
_Label_201:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_212:
	.byte	'C'
	.ascii	"_temp_187\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_218:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1895:
	push	r0
	sub	r1,1,r1
	bne	_Label_1895
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_220 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_221 = _function_135_ThreadPrintShort
	set	_function_135_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_222 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	0
_Label_223:
	.ascii	"PrintReadyList\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1896:
	push	r0
	sub	r1,1,r1
	bne	_Label_1896
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_228  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_229 = *_temp_230  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_229  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_231 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadStartMain\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_238:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_239 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_240 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_241
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_242
	.word	-12
	.word	4
	.word	_Label_243
	.word	-16
	.word	4
	.word	_Label_244
	.word	-20
	.word	4
	.word	0
_Label_241:
	.ascii	"ThreadFinish\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1898:
	push	r0
	sub	r1,1,r1
	bne	_Label_1898
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_245 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_247		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_247
!	jmp	_Label_246
_Label_246:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_248 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_250 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_249 = *_temp_250  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_247:
! CALL STATEMENT...
!   _temp_251 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_252 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_253 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_254
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_255
	.word	8
	.word	4
	.word	_Label_256
	.word	-12
	.word	4
	.word	_Label_257
	.word	-16
	.word	4
	.word	_Label_258
	.word	-20
	.word	4
	.word	_Label_259
	.word	-24
	.word	4
	.word	_Label_260
	.word	-28
	.word	4
	.word	_Label_261
	.word	-32
	.word	4
	.word	_Label_262
	.word	-36
	.word	4
	.word	_Label_263
	.word	-40
	.word	4
	.word	0
_Label_254:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_255:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_263:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1899:
	push	r0
	sub	r1,1,r1
	bne	_Label_1899
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_265		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_265
!	jmp	_Label_264
_Label_264:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_266
_Label_265:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_266:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_267
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_268
	.word	8
	.word	4
	.word	_Label_269
	.word	-12
	.word	4
	.word	0
_Label_267:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_268:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_269:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_135_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_135_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	682,r13		! source line 682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_273		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_273
!   _temp_272 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_274
_Label_273:
!   _temp_272 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_274:
!   if _temp_272 then goto _Label_271 else goto _Label_270
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_270
	jmp	_Label_271
_Label_270:
! THEN...
	mov	691,r13		! source line 691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_275 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_271:
! CALL STATEMENT...
!   _temp_276 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_279 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	697,r13		! source line 697
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_287 = *_temp_288  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_282
	cmp	r1,2
	be	_Label_283
	cmp	r1,3
	be	_Label_284
	cmp	r1,4
	be	_Label_285
	cmp	r1,5
	be	_Label_286
	jmp	_Label_280
! CASE 1...
_Label_282:
! CALL STATEMENT...
!   _temp_289 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0BR",r10
	jmp	_Label_281
! CASE 2...
_Label_283:
! CALL STATEMENT...
!   _temp_290 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0BR",r10
	jmp	_Label_281
! CASE 3...
_Label_284:
! CALL STATEMENT...
!   _temp_291 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0BR",r10
	jmp	_Label_281
! CASE 4...
_Label_285:
! CALL STATEMENT...
!   _temp_292 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0BR",r10
	jmp	_Label_281
! CASE 5...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0BR",r10
	jmp	_Label_281
! DEFAULT CASE...
_Label_280:
! CALL STATEMENT...
!   _temp_294 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	714,r13		! source line 714
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_281:
! CALL STATEMENT...
!   _temp_295 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_296 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_297 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_135_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_298
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_299
	.word	8
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	_Label_305
	.word	-36
	.word	4
	.word	_Label_306
	.word	-40
	.word	4
	.word	_Label_307
	.word	-44
	.word	4
	.word	_Label_308
	.word	-48
	.word	4
	.word	_Label_309
	.word	-52
	.word	4
	.word	_Label_310
	.word	-56
	.word	4
	.word	_Label_311
	.word	-60
	.word	4
	.word	_Label_312
	.word	-64
	.word	4
	.word	_Label_313
	.word	-68
	.word	4
	.word	_Label_314
	.word	-72
	.word	4
	.word	_Label_315
	.word	-76
	.word	4
	.word	_Label_316
	.word	-9
	.word	1
	.word	_Label_317
	.word	-80
	.word	4
	.word	0
_Label_298:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_316:
	.byte	'C'
	.ascii	"_temp_272\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_134_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_134_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1901:
	push	r0
	sub	r1,1,r1
	bne	_Label_1901
	mov	1063,r13		! source line 1063
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_318 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_134_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_319
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_320
	.word	8
	.word	4
	.word	_Label_321
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_320:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1902:
	push	r0
	sub	r1,1,r1
	bne	_Label_1902
	mov	1073,r13		! source line 1073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_322 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1079,r13		! source line 1079
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_323
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	8
	.word	4
	.word	_Label_325
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"ProcessFinish\0"
	.align
_Label_324:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1903:
	push	r0
	sub	r1,1,r1
	bne	_Label_1903
	mov	1573,r13		! source line 1573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_326:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1904:
	push	r0
	sub	r1,1,r1
	bne	_Label_1904
	mov	1591,r13		! source line 1591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_327 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1601,r13		! source line 1601
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1613,r13		! source line 1613
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_330
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_330:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1905:
	push	r0
	sub	r1,1,r1
	bne	_Label_1905
	mov	1627,r13		! source line 1627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1906:
	push	r0
	sub	r1,1,r1
	bne	_Label_1906
	mov	1639,r13		! source line 1639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1907:
	push	r0
	sub	r1,1,r1
	bne	_Label_1907
	mov	1651,r13		! source line 1651
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1908:
	push	r0
	sub	r1,1,r1
	bne	_Label_1908
	mov	1663,r13		! source line 1663
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1909:
	push	r0
	sub	r1,1,r1
	bne	_Label_1909
	mov	1675,r13		! source line 1675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_343 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_344
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_345
	.word	-12
	.word	4
	.word	0
_Label_344:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_346 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_347
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1911:
	push	r0
	sub	r1,1,r1
	bne	_Label_1911
	mov	1699,r13		! source line 1699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_349 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_350
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_350:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_133_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_133_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1912:
	push	r0
	sub	r1,1,r1
	bne	_Label_1912
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_352 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1717,r13		! source line 1717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_353 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_356 = *_temp_357  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_356 == 0 then goto _Label_355		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_355
!	jmp	_Label_354
_Label_354:
! THEN...
	mov	1722,r13		! source line 1722
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_359 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_358 = *_temp_359  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_358) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_360
_Label_355:
! ELSE...
	mov	1724,r13		! source line 1724
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_361 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_360:
! SEND STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_133_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_362
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_363
	.word	8
	.word	4
	.word	_Label_364
	.word	-12
	.word	4
	.word	_Label_365
	.word	-16
	.word	4
	.word	_Label_366
	.word	-20
	.word	4
	.word	_Label_367
	.word	-24
	.word	4
	.word	_Label_368
	.word	-28
	.word	4
	.word	_Label_369
	.word	-32
	.word	4
	.word	_Label_370
	.word	-36
	.word	4
	.word	0
_Label_362:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1758,r13		! source line 1758
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1914
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_371
_Label_1914:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_371
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_371
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_385,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_385:
	jmp	_Label_377	! 1:	
	jmp	_Label_384	! 2:	
	jmp	_Label_374	! 3:	
	jmp	_Label_373	! 4:	
	jmp	_Label_376	! 5:	
	jmp	_Label_375	! 6:	
	jmp	_Label_378	! 7:	
	jmp	_Label_379	! 8:	
	jmp	_Label_380	! 9:	
	jmp	_Label_381	! 10:	
	jmp	_Label_382	! 11:	
	jmp	_Label_383	! 12:	
! CASE 4...
_Label_373:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_386  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_374:
! CALL STATEMENT...
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_375:
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_387  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_387  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_376:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_388  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_388  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_377:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_378:
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_389  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_379:
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_380:
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_381:
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_382:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_383:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_384:
! CALL STATEMENT...
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_371:
! CALL STATEMENT...
!   _temp_394 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_395 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1791,r13		! source line 1791
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_372:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_396
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_397
	.word	8
	.word	4
	.word	_Label_398
	.word	12
	.word	4
	.word	_Label_399
	.word	16
	.word	4
	.word	_Label_400
	.word	20
	.word	4
	.word	_Label_401
	.word	24
	.word	4
	.word	_Label_402
	.word	-12
	.word	4
	.word	_Label_403
	.word	-16
	.word	4
	.word	_Label_404
	.word	-20
	.word	4
	.word	_Label_405
	.word	-24
	.word	4
	.word	_Label_406
	.word	-28
	.word	4
	.word	_Label_407
	.word	-32
	.word	4
	.word	_Label_408
	.word	-36
	.word	4
	.word	_Label_409
	.word	-40
	.word	4
	.word	_Label_410
	.word	-44
	.word	4
	.word	_Label_411
	.word	-48
	.word	4
	.word	0
_Label_396:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_414
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1810,r13		! source line 1810
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_416
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_418
	.word	8
	.word	4
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_419
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_420
	.word	8
	.word	4
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_422
	.word	8
	.word	4
	.word	0
_Label_421:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_425
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_426
	.word	8
	.word	4
	.word	_Label_427
	.word	12
	.word	4
	.word	_Label_428
	.word	16
	.word	4
	.word	0
_Label_425:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_427:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_429
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_430
	.word	8
	.word	4
	.word	_Label_431
	.word	12
	.word	4
	.word	_Label_432
	.word	16
	.word	4
	.word	0
_Label_429:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1865,r13		! source line 1865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_433
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_434
	.word	8
	.word	4
	.word	_Label_435
	.word	12
	.word	4
	.word	0
_Label_433:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_436
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_437
	.word	8
	.word	4
	.word	0
_Label_436:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_438
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_438:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_439
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_439:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_441		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_444
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_446
	.word	12
	.word	4
	.word	_Label_447
	.word	-12
	.word	4
	.word	_Label_448
	.word	-16
	.word	4
	.word	0
_Label_444:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_445:
	.ascii	"Pself\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_450		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_450
!	jmp	_Label_449
_Label_449:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_451 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_450:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_453		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_453
!	jmp	_Label_452
_Label_452:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_454 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_455 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_456 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_453:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_457
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_459
	.word	-12
	.word	4
	.word	_Label_460
	.word	-16
	.word	4
	.word	_Label_461
	.word	-20
	.word	4
	.word	_Label_462
	.word	-24
	.word	4
	.word	_Label_463
	.word	-28
	.word	4
	.word	_Label_464
	.word	-32
	.word	4
	.word	0
_Label_457:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_458:
	.ascii	"Pself\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_464:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_466		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_466
!	jmp	_Label_465
_Label_465:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_467 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_466:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_469		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_470 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_469:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_471
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_473
	.word	-12
	.word	4
	.word	_Label_474
	.word	-16
	.word	4
	.word	_Label_475
	.word	-20
	.word	4
	.word	0
_Label_471:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_472:
	.ascii	"Pself\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_476
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_476:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_477
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_477:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_479
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_480:
	.ascii	"Pself\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1919:
	push	r0
	sub	r1,1,r1
	bne	_Label_1919
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_483		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_483
!	jmp	_Label_482
_Label_482:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_484 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_483:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_488		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_488
!   _temp_487 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_489
_Label_488:
!   _temp_487 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_489:
!   if _temp_487 then goto _Label_486 else goto _Label_485
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_485
	jmp	_Label_486
_Label_485:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_490
_Label_486:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_491 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_490:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_492
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_494
	.word	-16
	.word	4
	.word	_Label_495
	.word	-9
	.word	1
	.word	_Label_496
	.word	-20
	.word	4
	.word	_Label_497
	.word	-24
	.word	4
	.word	0
_Label_492:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_493:
	.ascii	"Pself\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_495:
	.byte	'C'
	.ascii	"_temp_487\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_497:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1920:
	push	r0
	sub	r1,1,r1
	bne	_Label_1920
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_499		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_499
!	jmp	_Label_498
_Label_498:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_500 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_499:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_501 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_503		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_503
!	jmp	_Label_502
_Label_502:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_504 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_504 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_505 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_506
_Label_503:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_506:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_507
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_509
	.word	-12
	.word	4
	.word	_Label_510
	.word	-16
	.word	4
	.word	_Label_511
	.word	-20
	.word	4
	.word	_Label_512
	.word	-24
	.word	4
	.word	_Label_513
	.word	-28
	.word	4
	.word	_Label_514
	.word	-32
	.word	4
	.word	0
_Label_507:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_508:
	.ascii	"Pself\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_514:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1921:
	push	r0
	sub	r1,1,r1
	bne	_Label_1921
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_517		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_517
!	jmp	_Label_516
_Label_516:
!   _temp_515 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_518
_Label_517:
!   _temp_515 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_518:
!   ReturnResult: _temp_515  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_519
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_521
	.word	-9
	.word	1
	.word	0
_Label_519:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_520:
	.ascii	"Pself\0"
	.align
_Label_521:
	.byte	'C'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_522
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_522:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_523
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_523:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1922:
	push	r0
	sub	r1,1,r1
	bne	_Label_1922
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_525
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_527
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_526:
	.ascii	"Pself\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1923:
	push	r0
	sub	r1,1,r1
	bne	_Label_1923
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_530  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_530 then goto _Label_529 else goto _Label_528
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_528
	jmp	_Label_529
_Label_528:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_531 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	391,r13		! source line 391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_529:
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_532 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_533
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_535
	.word	12
	.word	4
	.word	_Label_536
	.word	-16
	.word	4
	.word	_Label_537
	.word	-20
	.word	4
	.word	_Label_538
	.word	-9
	.word	1
	.word	_Label_539
	.word	-24
	.word	4
	.word	0
_Label_533:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_534:
	.ascii	"Pself\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_538:
	.byte	'C'
	.ascii	"_temp_530\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1924:
	push	r0
	sub	r1,1,r1
	bne	_Label_1924
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_542  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_542 then goto _Label_541 else goto _Label_540
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_540
	jmp	_Label_541
_Label_540:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_543 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_541:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_544 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_546		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_546
!	jmp	_Label_545
_Label_545:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_547 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_548 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_546:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_549
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_551
	.word	12
	.word	4
	.word	_Label_552
	.word	-16
	.word	4
	.word	_Label_553
	.word	-20
	.word	4
	.word	_Label_554
	.word	-24
	.word	4
	.word	_Label_555
	.word	-28
	.word	4
	.word	_Label_556
	.word	-9
	.word	1
	.word	_Label_557
	.word	-32
	.word	4
	.word	_Label_558
	.word	-36
	.word	4
	.word	0
_Label_549:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_550:
	.ascii	"Pself\0"
	.align
_Label_551:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_556:
	.byte	'C'
	.ascii	"_temp_542\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_558:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1925:
	push	r0
	sub	r1,1,r1
	bne	_Label_1925
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_561  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_561 then goto _Label_560 else goto _Label_559
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_559
	jmp	_Label_560
_Label_559:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_562 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_560:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_563:
!	jmp	_Label_564
_Label_564:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_566 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_567
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_567
	jmp	_Label_568
_Label_567:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_565
! END IF...
_Label_568:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_569 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_570 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_563
_Label_565:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_571
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_573
	.word	12
	.word	4
	.word	_Label_574
	.word	-16
	.word	4
	.word	_Label_575
	.word	-20
	.word	4
	.word	_Label_576
	.word	-24
	.word	4
	.word	_Label_577
	.word	-28
	.word	4
	.word	_Label_578
	.word	-9
	.word	1
	.word	_Label_579
	.word	-32
	.word	4
	.word	_Label_580
	.word	-36
	.word	4
	.word	0
_Label_571:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_572:
	.ascii	"Pself\0"
	.align
_Label_573:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_578:
	.byte	'C'
	.ascii	"_temp_561\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_580:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_581
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_581:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_582
	.word	_sourceFileName
	.word	165		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_582:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	4,r1
_Label_1926:
	push	r0
	sub	r1,1,r1
	bne	_Label_1926
	mov	451,r13		! source line 451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   count = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: sem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   sem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_584 = &sem
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_585
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_587
	.word	-12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	0
_Label_585:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_586:
	.ascii	"Pself\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	3,r1
_Label_1927:
	push	r0
	sub	r1,1,r1
	bne	_Label_1927
	mov	459,r13		! source line 459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0IF",r10
!   if intIsZero (monitorCount) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_591 = *monitorCount  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_591 <= 0 then goto _Label_590		(int)
	load	[r14+-16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	462,r13		! source line 462
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   if intIsZero (monitorSem) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_592
_Label_590:
! ELSE...
	mov	464,r13		! source line 464
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_592:
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_593 = &sem
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_594
	.word	16		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_596
	.word	12
	.word	4
	.word	_Label_597
	.word	16
	.word	4
	.word	_Label_598
	.word	20
	.word	4
	.word	_Label_599
	.word	-12
	.word	4
	.word	_Label_600
	.word	-16
	.word	4
	.word	0
_Label_594:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_595:
	.ascii	"Pself\0"
	.align
_Label_596:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_597:
	.byte	'P'
	.ascii	"monitorCount\0"
	.align
_Label_598:
	.byte	'P'
	.ascii	"monitorSem\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	6,r1
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	472,r13		! source line 472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
!   if count <= 0 then goto _Label_602		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_602
!	jmp	_Label_601
_Label_601:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   if intIsZero (monitorCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (monitorCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_604 = *monitorCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_603 = _temp_604 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *monitorCount = _temp_603  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+12],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_605 = &sem
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
!   if intIsZero (monitorSem) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Down
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   if intIsZero (monitorCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (monitorCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_607 = *monitorCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   _temp_606 = _temp_607 - 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *monitorCount = _temp_606  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+12],r2
	store	r1,[r2]
! END IF...
_Label_602:
! RETURN STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_608
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_610
	.word	12
	.word	4
	.word	_Label_611
	.word	16
	.word	4
	.word	_Label_612
	.word	-12
	.word	4
	.word	_Label_613
	.word	-16
	.word	4
	.word	_Label_614
	.word	-20
	.word	4
	.word	_Label_615
	.word	-24
	.word	4
	.word	_Label_616
	.word	-28
	.word	4
	.word	0
_Label_608:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_609:
	.ascii	"Pself\0"
	.align
_Label_610:
	.byte	'P'
	.ascii	"monitorCount\0"
	.align
_Label_611:
	.byte	'P'
	.ascii	"monitorSem\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_617
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_617:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_618
	.word	_sourceFileName
	.word	178		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_618:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1929:
	push	r0
	sub	r1,1,r1
	bne	_Label_1929
	mov	489,r13		! source line 489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_619 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_619) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_619 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_620 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_620 [0 ] into _temp_621
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_621 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_622 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_622 [999 ] into _temp_623
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_623 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_624 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_624 [999 ] into _temp_625
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_625		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_626 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_628 = &_temp_627
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_628 = _temp_628 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_630:
!   Data Move: *_temp_628 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_628 = _temp_628 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_629 = _temp_629 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_629) then goto _Label_630
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_630
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_631 = &_temp_627
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1930
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1930:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_626 = *_temp_631  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1931:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1931
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_632 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_634 = &_temp_633
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_634 = _temp_634 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_636:
!   Data Move: *_temp_634 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_634 = _temp_634 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_635 = _temp_635 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_635) then goto _Label_636
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_636
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_637 = &_temp_633
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1932
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1932:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_632 = *_temp_637  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1933:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1933
! RETURN STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_638
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_640
	.word	12
	.word	4
	.word	_Label_641
	.word	-12
	.word	4
	.word	_Label_642
	.word	-16
	.word	4
	.word	_Label_643
	.word	-20
	.word	4
	.word	_Label_644
	.word	-84
	.word	64
	.word	_Label_645
	.word	-88
	.word	4
	.word	_Label_646
	.word	-92
	.word	4
	.word	_Label_647
	.word	-96
	.word	4
	.word	_Label_648
	.word	-100
	.word	4
	.word	_Label_649
	.word	-156
	.word	56
	.word	_Label_650
	.word	-160
	.word	4
	.word	_Label_651
	.word	-164
	.word	4
	.word	_Label_652
	.word	-168
	.word	4
	.word	_Label_653
	.word	-172
	.word	4
	.word	_Label_654
	.word	-176
	.word	4
	.word	_Label_655
	.word	-180
	.word	4
	.word	_Label_656
	.word	-184
	.word	4
	.word	_Label_657
	.word	-188
	.word	4
	.word	0
_Label_638:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_639:
	.ascii	"Pself\0"
	.align
_Label_640:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1934:
	push	r0
	sub	r1,1,r1
	bne	_Label_1934
	mov	508,r13		! source line 508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_658  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_660 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_661
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_663
	.word	12
	.word	4
	.word	_Label_664
	.word	16
	.word	4
	.word	_Label_665
	.word	-12
	.word	4
	.word	_Label_666
	.word	-16
	.word	4
	.word	_Label_667
	.word	-20
	.word	4
	.word	_Label_668
	.word	-24
	.word	4
	.word	_Label_669
	.word	-28
	.word	4
	.word	0
_Label_661:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_662:
	.ascii	"Pself\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_668:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_669:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1935:
	push	r0
	sub	r1,1,r1
	bne	_Label_1935
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_672 == _P_Kernel_currentThread then goto _Label_671		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_671
!	jmp	_Label_670
_Label_670:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_673 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	549,r13		! source line 549
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_671:
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
!   _temp_674 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_676		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_676
!	jmp	_Label_675
_Label_675:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_678		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_678
!	jmp	_Label_677
_Label_677:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_679 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	561,r13		! source line 561
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_678:
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_681 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_680  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_676:
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_682
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_684
	.word	-12
	.word	4
	.word	_Label_685
	.word	-16
	.word	4
	.word	_Label_686
	.word	-20
	.word	4
	.word	_Label_687
	.word	-24
	.word	4
	.word	_Label_688
	.word	-28
	.word	4
	.word	_Label_689
	.word	-32
	.word	4
	.word	_Label_690
	.word	-36
	.word	4
	.word	_Label_691
	.word	-40
	.word	4
	.word	_Label_692
	.word	-44
	.word	4
	.word	0
_Label_682:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_683:
	.ascii	"Pself\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_690:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1936:
	push	r0
	sub	r1,1,r1
	bne	_Label_1936
	mov	572,r13		! source line 572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_694		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_694
!	jmp	_Label_693
_Label_693:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	585,r13		! source line 585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_694:
! IF STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_698 == _P_Kernel_currentThread then goto _Label_697		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_697
!	jmp	_Label_696
_Label_696:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_699 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	589,r13		! source line 589
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_697:
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
	mov	595,r13		! source line 595
	mov	"\0\0SE",r10
!   _temp_700 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_701
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_701
	jmp	_Label_702
_Label_701:
! THEN...
	mov	597,r13		! source line 597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_703 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	597,r13		! source line 597
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_702:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_704
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	_Label_711
	.word	-32
	.word	4
	.word	0
_Label_704:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_705:
	.ascii	"Pself\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1937:
	push	r0
	sub	r1,1,r1
	bne	_Label_1937
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_715 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_715 [0 ] into _temp_716
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_714 = *_temp_716  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_714 == 606348324 then goto _Label_713		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_713
!	jmp	_Label_712
_Label_712:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_717 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_718
_Label_713:
! ELSE...
	mov	612,r13		! source line 612
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   _temp_722 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_722 [999 ] into _temp_723
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_721 = *_temp_723  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_721 == 606348324 then goto _Label_720		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_720
!	jmp	_Label_719
_Label_719:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_724 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	613,r13		! source line 613
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_720:
! END IF...
_Label_718:
! RETURN STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_725
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_727
	.word	-12
	.word	4
	.word	_Label_728
	.word	-16
	.word	4
	.word	_Label_729
	.word	-20
	.word	4
	.word	_Label_730
	.word	-24
	.word	4
	.word	_Label_731
	.word	-28
	.word	4
	.word	_Label_732
	.word	-32
	.word	4
	.word	_Label_733
	.word	-36
	.word	4
	.word	_Label_734
	.word	-40
	.word	4
	.word	0
_Label_725:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_726:
	.ascii	"Pself\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1938:
	push	r0
	sub	r1,1,r1
	bne	_Label_1938
	mov	619,r13		! source line 619
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_735 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_738 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_739 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_744 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_745 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_744  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_740:
!   Perform the FOR-LOOP termination test
!   if i > _temp_745 then goto _Label_743		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_743
_Label_741:
	mov	632,r13		! source line 632
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_746 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_747 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_748 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_750 [i ] into _temp_751
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_749 = *_temp_751  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_752 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_754 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_754 [i ] into _temp_755
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_753 = *_temp_755  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_756 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_742:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_740
! END FOR
_Label_743:
! CALL STATEMENT...
!   _temp_757 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_758 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_758  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_759 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_761 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_761 [0 ] into _temp_762
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_760 = _temp_762		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_760  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	643,r13		! source line 643
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_765
	cmp	r1,2
	be	_Label_766
	cmp	r1,3
	be	_Label_767
	cmp	r1,4
	be	_Label_768
	cmp	r1,5
	be	_Label_769
	jmp	_Label_763
! CASE 1...
_Label_765:
! CALL STATEMENT...
!   _temp_770 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0BR",r10
	jmp	_Label_764
! CASE 2...
_Label_766:
! CALL STATEMENT...
!   _temp_771 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_764
! CASE 3...
_Label_767:
! CALL STATEMENT...
!   _temp_772 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_764
! CASE 4...
_Label_768:
! CALL STATEMENT...
!   _temp_773 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_764
! CASE 5...
_Label_769:
! CALL STATEMENT...
!   _temp_774 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_764
! DEFAULT CASE...
_Label_763:
! CALL STATEMENT...
!   _temp_775 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	660,r13		! source line 660
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_764:
! CALL STATEMENT...
!   _temp_776 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_777 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_782 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_783 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_782  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_778:
!   Perform the FOR-LOOP termination test
!   if i > _temp_783 then goto _Label_781		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_781
_Label_779:
	mov	666,r13		! source line 666
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_784 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_785 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_785  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_786 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_788 [i ] into _temp_789
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_787 = *_temp_789  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_790 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_792 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_792 [i ] into _temp_793
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_791 = *_temp_793  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_794 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_780:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_778
! END FOR
_Label_781:
! ASSIGNMENT STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_795
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	_Label_800
	.word	-24
	.word	4
	.word	_Label_801
	.word	-28
	.word	4
	.word	_Label_802
	.word	-32
	.word	4
	.word	_Label_803
	.word	-36
	.word	4
	.word	_Label_804
	.word	-40
	.word	4
	.word	_Label_805
	.word	-44
	.word	4
	.word	_Label_806
	.word	-48
	.word	4
	.word	_Label_807
	.word	-52
	.word	4
	.word	_Label_808
	.word	-56
	.word	4
	.word	_Label_809
	.word	-60
	.word	4
	.word	_Label_810
	.word	-64
	.word	4
	.word	_Label_811
	.word	-68
	.word	4
	.word	_Label_812
	.word	-72
	.word	4
	.word	_Label_813
	.word	-76
	.word	4
	.word	_Label_814
	.word	-80
	.word	4
	.word	_Label_815
	.word	-84
	.word	4
	.word	_Label_816
	.word	-88
	.word	4
	.word	_Label_817
	.word	-92
	.word	4
	.word	_Label_818
	.word	-96
	.word	4
	.word	_Label_819
	.word	-100
	.word	4
	.word	_Label_820
	.word	-104
	.word	4
	.word	_Label_821
	.word	-108
	.word	4
	.word	_Label_822
	.word	-112
	.word	4
	.word	_Label_823
	.word	-116
	.word	4
	.word	_Label_824
	.word	-120
	.word	4
	.word	_Label_825
	.word	-124
	.word	4
	.word	_Label_826
	.word	-128
	.word	4
	.word	_Label_827
	.word	-132
	.word	4
	.word	_Label_828
	.word	-136
	.word	4
	.word	_Label_829
	.word	-140
	.word	4
	.word	_Label_830
	.word	-144
	.word	4
	.word	_Label_831
	.word	-148
	.word	4
	.word	_Label_832
	.word	-152
	.word	4
	.word	_Label_833
	.word	-156
	.word	4
	.word	_Label_834
	.word	-160
	.word	4
	.word	_Label_835
	.word	-164
	.word	4
	.word	_Label_836
	.word	-168
	.word	4
	.word	_Label_837
	.word	-172
	.word	4
	.word	_Label_838
	.word	-176
	.word	4
	.word	_Label_839
	.word	-180
	.word	4
	.word	_Label_840
	.word	-184
	.word	4
	.word	_Label_841
	.word	-188
	.word	4
	.word	_Label_842
	.word	-192
	.word	4
	.word	_Label_843
	.word	-196
	.word	4
	.word	0
_Label_795:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_796:
	.ascii	"Pself\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_843:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_844
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_844:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_845
	.word	_sourceFileName
	.word	205		! line number
	.word	41732		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_845:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11508,r1
_Label_1939:
	push	r0
	sub	r1,1,r1
	bne	_Label_1939
	mov	730,r13		! source line 730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_846 = _StringConst_74
	set	_StringConst_74,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_848 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,48,r4
	mov	7,r3
_Label_1940:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1940
!   threadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_850 = &threadBecameFree
	load	[r14+8],r1
	add	r1,48,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-46008,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   nextCt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: nextSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   nextSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_852 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	set	-46000,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-46000,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0AS",r10
!   _temp_853 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_855 = &_temp_854
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_855 = _temp_855 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_857 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_1941:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1941
!   _temp_857 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_859:
!   Data Move: *_temp_855 = _temp_857  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_1942:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1942
!   _temp_855 = _temp_855 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_856 = _temp_856 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_856) then goto _Label_859
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_859
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_860 = &_temp_854
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1943
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1943:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_853 = *_temp_860  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1944:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1944
! SEND STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_861 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-168]
!   _temp_862 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Move address of _temp_862 [0 ] into _temp_863
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Prepare Argument: offset=12  value=_temp_861  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_864 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-156]
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-152]
!   Move address of _temp_865 [1 ] into _temp_866
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_864  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0SE",r10
!   _temp_867 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-144]
!   _temp_868 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-140]
!   Move address of _temp_868 [2 ] into _temp_869
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Prepare Argument: offset=12  value=_temp_867  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_870 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-132]
!   _temp_871 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-128]
!   Move address of _temp_871 [3 ] into _temp_872
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_870  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_873 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   _temp_874 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Move address of _temp_874 [4 ] into _temp_875
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_873  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_876 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-108]
!   _temp_877 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-104]
!   Move address of _temp_877 [5 ] into _temp_878
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_876  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_879 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-96]
!   _temp_880 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-92]
!   Move address of _temp_880 [6 ] into _temp_881
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_879  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_882 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-84]
!   _temp_883 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-80]
!   Move address of _temp_883 [7 ] into _temp_884
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_885 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-72]
!   _temp_886 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-68]
!   Move address of _temp_886 [8 ] into _temp_887
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_888 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-60]
!   _temp_889 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Move address of _temp_889 [9 ] into _temp_890
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_888  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41720,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41720,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46032,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_896 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_897 = length		(4 bytes)
	set	-46032,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_896  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_892:
!   Perform the FOR-LOOP termination test
!   if i > _temp_897 then goto _Label_895		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_895
_Label_893:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   _temp_898 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_898 [i ] into _temp_899
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_900 = _temp_899 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_900 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_902 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Move address of _temp_902 [i ] into _temp_903
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_901 = _temp_903		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_904 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_901  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_894:
!   i = i + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_892
! END FOR
_Label_895:
! RETURN STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0RE",r10
	set	46036,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_905
	.word	4		! total size of parameters
	.word	46032		! frame size = 46032
	.word	_Label_906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_907
	.word	-12
	.word	4
	.word	_Label_908
	.word	-16
	.word	4
	.word	_Label_909
	.word	-20
	.word	4
	.word	_Label_910
	.word	-24
	.word	4
	.word	_Label_911
	.word	-28
	.word	4
	.word	_Label_912
	.word	-32
	.word	4
	.word	_Label_913
	.word	-36
	.word	4
	.word	_Label_914
	.word	-40
	.word	4
	.word	_Label_915
	.word	-44
	.word	4
	.word	_Label_916
	.word	-48
	.word	4
	.word	_Label_917
	.word	-52
	.word	4
	.word	_Label_918
	.word	-56
	.word	4
	.word	_Label_919
	.word	-60
	.word	4
	.word	_Label_920
	.word	-64
	.word	4
	.word	_Label_921
	.word	-68
	.word	4
	.word	_Label_922
	.word	-72
	.word	4
	.word	_Label_923
	.word	-76
	.word	4
	.word	_Label_924
	.word	-80
	.word	4
	.word	_Label_925
	.word	-84
	.word	4
	.word	_Label_926
	.word	-88
	.word	4
	.word	_Label_927
	.word	-92
	.word	4
	.word	_Label_928
	.word	-96
	.word	4
	.word	_Label_929
	.word	-100
	.word	4
	.word	_Label_930
	.word	-104
	.word	4
	.word	_Label_931
	.word	-108
	.word	4
	.word	_Label_932
	.word	-112
	.word	4
	.word	_Label_933
	.word	-116
	.word	4
	.word	_Label_934
	.word	-120
	.word	4
	.word	_Label_935
	.word	-124
	.word	4
	.word	_Label_936
	.word	-128
	.word	4
	.word	_Label_937
	.word	-132
	.word	4
	.word	_Label_938
	.word	-136
	.word	4
	.word	_Label_939
	.word	-140
	.word	4
	.word	_Label_940
	.word	-144
	.word	4
	.word	_Label_941
	.word	-148
	.word	4
	.word	_Label_942
	.word	-152
	.word	4
	.word	_Label_943
	.word	-156
	.word	4
	.word	_Label_944
	.word	-160
	.word	4
	.word	_Label_945
	.word	-164
	.word	4
	.word	_Label_946
	.word	-168
	.word	4
	.word	_Label_947
	.word	-172
	.word	4
	.word	_Label_948
	.word	-176
	.word	4
	.word	_Label_949
	.word	-4340
	.word	4164
	.word	_Label_950
	.word	-4344
	.word	4
	.word	_Label_951
	.word	-4348
	.word	4
	.word	_Label_952
	.word	-45992
	.word	41644
	.word	_Label_953
	.word	-45996
	.word	4
	.word	_Label_954
	.word	-46000
	.word	4
	.word	_Label_955
	.word	-46004
	.word	4
	.word	_Label_956
	.word	-46008
	.word	4
	.word	_Label_957
	.word	-46012
	.word	4
	.word	_Label_958
	.word	-46016
	.word	4
	.word	_Label_959
	.word	-46020
	.word	4
	.word	_Label_960
	.word	-46024
	.word	4
	.word	_Label_961
	.word	-46028
	.word	4
	.word	_Label_962
	.word	-46032
	.word	4
	.word	0
_Label_905:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_906:
	.ascii	"Pself\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_961:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_962:
	.byte	'I'
	.ascii	"length\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1945:
	push	r0
	sub	r1,1,r1
	bne	_Label_1945
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_963 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_968 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_969 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_968  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_964:
!   Perform the FOR-LOOP termination test
!   if i > _temp_969 then goto _Label_967		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_967
_Label_965:
	mov	785,r13		! source line 785
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_970 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_970  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_971 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_973 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_973 [i ] into _temp_974
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_972 = _temp_974		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CA",r10
	call	_function_135_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_966:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_964
! END FOR
_Label_967:
! CALL STATEMENT...
!   _temp_975 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_976 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_977 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_976  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_978
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_980
	.word	-12
	.word	4
	.word	_Label_981
	.word	-16
	.word	4
	.word	_Label_982
	.word	-20
	.word	4
	.word	_Label_983
	.word	-24
	.word	4
	.word	_Label_984
	.word	-28
	.word	4
	.word	_Label_985
	.word	-32
	.word	4
	.word	_Label_986
	.word	-36
	.word	4
	.word	_Label_987
	.word	-40
	.word	4
	.word	_Label_988
	.word	-44
	.word	4
	.word	_Label_989
	.word	-48
	.word	4
	.word	_Label_990
	.word	-52
	.word	4
	.word	_Label_991
	.word	-56
	.word	4
	.word	_Label_992
	.word	-60
	.word	4
	.word	0
_Label_978:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_979:
	.ascii	"Pself\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_991:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_992:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	16,r1
_Label_1946:
	push	r0
	sub	r1,1,r1
	bne	_Label_1946
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_993 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0IF",r10
	mov	810,r13		! source line 810
	mov	"\0\0SE",r10
!   _temp_997 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_996  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_998 = _temp_996 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_998 then goto _Label_995 else goto _Label_994
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_994
	jmp	_Label_995
_Label_994:
! THEN...
	mov	811,r13		! source line 811
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0SE",r10
!   _temp_999 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   _temp_1000 = &nextCt
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-40]
!   _temp_1001 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   _temp_1002 = &threadBecameFree
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_999  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1000  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1001  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1003 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = p + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1004 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1006		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	818,r13		! source line 818
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_1007 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1008
_Label_1006:
! ELSE...
	mov	820,r13		! source line 820
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_1009 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1008:
! RETURN STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1010
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1012
	.word	-16
	.word	4
	.word	_Label_1013
	.word	-20
	.word	4
	.word	_Label_1014
	.word	-24
	.word	4
	.word	_Label_1015
	.word	-28
	.word	4
	.word	_Label_1016
	.word	-32
	.word	4
	.word	_Label_1017
	.word	-36
	.word	4
	.word	_Label_1018
	.word	-40
	.word	4
	.word	_Label_1019
	.word	-44
	.word	4
	.word	_Label_1020
	.word	-9
	.word	1
	.word	_Label_1021
	.word	-48
	.word	4
	.word	_Label_1022
	.word	-10
	.word	1
	.word	_Label_1023
	.word	-52
	.word	4
	.word	_Label_1024
	.word	-56
	.word	4
	.word	0
_Label_1010:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1011:
	.ascii	"Pself\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1020:
	.byte	'C'
	.ascii	"_temp_998\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1022:
	.byte	'C'
	.ascii	"_temp_996\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1024:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	11,r1
_Label_1947:
	push	r0
	sub	r1,1,r1
	bne	_Label_1947
	mov	827,r13		! source line 827
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0SE",r10
!   _temp_1025 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1026 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0SE",r10
!   _temp_1027 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0SE",r10
!   _temp_1028 = &nextCt
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   _temp_1029 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   _temp_1030 = &threadBecameFree
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1028  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1029  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+8]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1032		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1032
!	jmp	_Label_1031
_Label_1031:
! THEN...
	mov	838,r13		! source line 838
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
!   _temp_1033 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1034
_Label_1032:
! ELSE...
	mov	840,r13		! source line 840
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1035 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1034:
! RETURN STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1036
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	12
	.word	4
	.word	_Label_1039
	.word	-12
	.word	4
	.word	_Label_1040
	.word	-16
	.word	4
	.word	_Label_1041
	.word	-20
	.word	4
	.word	_Label_1042
	.word	-24
	.word	4
	.word	_Label_1043
	.word	-28
	.word	4
	.word	_Label_1044
	.word	-32
	.word	4
	.word	_Label_1045
	.word	-36
	.word	4
	.word	_Label_1046
	.word	-40
	.word	4
	.word	0
_Label_1036:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1047
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1047:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1048
	.word	_sourceFileName
	.word	228		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1048:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1948:
	push	r0
	sub	r1,1,r1
	bne	_Label_1948
	mov	854,r13		! source line 854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1949:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1949
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_1050 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1051
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1053
	.word	-12
	.word	4
	.word	_Label_1054
	.word	-16
	.word	4
	.word	0
_Label_1051:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1052:
	.ascii	"Pself\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1950:
	push	r0
	sub	r1,1,r1
	bne	_Label_1950
	mov	868,r13		! source line 868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1055) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0SE",r10
!   _temp_1056 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1057 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CA",r10
	call	_function_135_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	-12
	.word	4
	.word	_Label_1061
	.word	-16
	.word	4
	.word	_Label_1062
	.word	-20
	.word	4
	.word	0
_Label_1058:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1951:
	push	r0
	sub	r1,1,r1
	bne	_Label_1951
	mov	891,r13		! source line 891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1063 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1065 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1066 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1068		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1068
!	jmp	_Label_1067
_Label_1067:
! THEN...
	mov	901,r13		! source line 901
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1069 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1070
_Label_1068:
! ELSE...
	mov	902,r13		! source line 902
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1072		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1072
!	jmp	_Label_1071
_Label_1071:
! THEN...
	mov	903,r13		! source line 903
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1074
_Label_1072:
! ELSE...
	mov	904,r13		! source line 904
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1076		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1076
!	jmp	_Label_1075
_Label_1075:
! THEN...
	mov	905,r13		! source line 905
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1077 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1078
_Label_1076:
! ELSE...
	mov	907,r13		! source line 907
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1079 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	907,r13		! source line 907
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1078:
! END IF...
_Label_1074:
! END IF...
_Label_1070:
! CALL STATEMENT...
!   _temp_1080 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1081 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1082
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1084
	.word	-12
	.word	4
	.word	_Label_1085
	.word	-16
	.word	4
	.word	_Label_1086
	.word	-20
	.word	4
	.word	_Label_1087
	.word	-24
	.word	4
	.word	_Label_1088
	.word	-28
	.word	4
	.word	_Label_1089
	.word	-32
	.word	4
	.word	_Label_1090
	.word	-36
	.word	4
	.word	_Label_1091
	.word	-40
	.word	4
	.word	_Label_1092
	.word	-44
	.word	4
	.word	_Label_1093
	.word	-48
	.word	4
	.word	0
_Label_1082:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1083:
	.ascii	"Pself\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1094
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1094:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1095
	.word	_sourceFileName
	.word	248		! line number
	.word	1352		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1095:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	370,r1
_Label_1952:
	push	r0
	sub	r1,1,r1
	bne	_Label_1952
	mov	924,r13		! source line 924
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   _temp_1096 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1476]
!   NEW ARRAY Constructor...
!   _temp_1098 = &_temp_1097
	add	r14,-1472,r1
	store	r1,[r14+-228]
!   _temp_1098 = _temp_1098 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1100 = zeros  (sizeInBytes=124)
	add	r14,-220,r4
	mov	31,r3
_Label_1953:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1953
!   _temp_1100 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-220]
	mov	10,r1
	store	r1,[r14+-224]
_Label_1102:
!   Data Move: *_temp_1098 = _temp_1100  (sizeInBytes=124)
	add	r14,-220,r5
	load	[r14+-228],r4
	mov	31,r3
_Label_1954:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1954
!   _temp_1098 = _temp_1098 + 124
	load	[r14+-228],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   _temp_1099 = _temp_1099 + -1
	load	[r14+-224],r1
	add	r1,-1,r1
	store	r1,[r14+-224]
!   if intNotZero (_temp_1099) then goto _Label_1102
	load	[r14+-224],r1
	cmp	r1,r0
	bne	_Label_1102
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1472]
!   _temp_1103 = &_temp_1097
	add	r14,-1472,r1
	store	r1,[r14+-92]
!   make sure array has size 10
	load	[r14+-1476],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1955
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1955:
!   make sure array has size 10
	load	[r14+-92],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1096 = *_temp_1103  (sizeInBytes=1244)
	load	[r14+-92],r5
	load	[r14+-1476],r4
	mov	311,r3
_Label_1956:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1956
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1105 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-84]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,1268,r4
	mov	7,r3
_Label_1957:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1957
!   aProcessBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1107 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! ASSIGNMENT STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1308,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1308]
! SEND STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0SE",r10
!   _temp_1110 = &aProcessDied
	load	[r14+8],r1
	add	r1,1308,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0AS",r10
!   nextCt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1328]
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: nextSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1332,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   nextSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+1332]
! SEND STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0SE",r10
!   _temp_1112 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1117 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1118 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1117  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1480]
_Label_1113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1118 then goto _Label_1116		
	load	[r14+-1480],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1116
_Label_1114:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_1119 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1119 [i ] into _temp_1120
!     make sure index expr is >= 0
	load	[r14+-1480],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1122 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1122 [i ] into _temp_1123
!     make sure index expr is >= 0
	load	[r14+-1480],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1121 = _temp_1123		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1124 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1121  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1115:
!   i = i + 1
	load	[r14+-1480],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1480]
	jmp	_Label_1113
! END FOR
_Label_1116:
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   _temp_1125 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1125 [0 ] into _temp_1126
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1127 = _temp_1126 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1127  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! RETURN STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0RE",r10
	add	r15,1484,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1128
	.word	4		! total size of parameters
	.word	1480		! frame size = 1480
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	-12
	.word	4
	.word	_Label_1131
	.word	-16
	.word	4
	.word	_Label_1132
	.word	-20
	.word	4
	.word	_Label_1133
	.word	-24
	.word	4
	.word	_Label_1134
	.word	-28
	.word	4
	.word	_Label_1135
	.word	-32
	.word	4
	.word	_Label_1136
	.word	-36
	.word	4
	.word	_Label_1137
	.word	-40
	.word	4
	.word	_Label_1138
	.word	-44
	.word	4
	.word	_Label_1139
	.word	-48
	.word	4
	.word	_Label_1140
	.word	-52
	.word	4
	.word	_Label_1141
	.word	-56
	.word	4
	.word	_Label_1142
	.word	-60
	.word	4
	.word	_Label_1143
	.word	-64
	.word	4
	.word	_Label_1144
	.word	-68
	.word	4
	.word	_Label_1145
	.word	-72
	.word	4
	.word	_Label_1146
	.word	-76
	.word	4
	.word	_Label_1147
	.word	-80
	.word	4
	.word	_Label_1148
	.word	-84
	.word	4
	.word	_Label_1149
	.word	-88
	.word	4
	.word	_Label_1150
	.word	-92
	.word	4
	.word	_Label_1151
	.word	-96
	.word	4
	.word	_Label_1152
	.word	-220
	.word	124
	.word	_Label_1153
	.word	-224
	.word	4
	.word	_Label_1154
	.word	-228
	.word	4
	.word	_Label_1155
	.word	-1472
	.word	1244
	.word	_Label_1156
	.word	-1476
	.word	4
	.word	_Label_1157
	.word	-1480
	.word	4
	.word	0
_Label_1128:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1157:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1958:
	push	r0
	sub	r1,1,r1
	bne	_Label_1958
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	964,r13		! source line 964
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1158 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	965,r13		! source line 965
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1163 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1164 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1163  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1159:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1164 then goto _Label_1162		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1162
_Label_1160:
	mov	966,r13		! source line 966
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1165 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	967,r13		! source line 967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1166 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1167 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1167 [i ] into _temp_1168
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1161:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1159
! END FOR
_Label_1162:
! CALL STATEMENT...
!   _temp_1169 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1170 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1171 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1170  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1172
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1174
	.word	-12
	.word	4
	.word	_Label_1175
	.word	-16
	.word	4
	.word	_Label_1176
	.word	-20
	.word	4
	.word	_Label_1177
	.word	-24
	.word	4
	.word	_Label_1178
	.word	-28
	.word	4
	.word	_Label_1179
	.word	-32
	.word	4
	.word	_Label_1180
	.word	-36
	.word	4
	.word	_Label_1181
	.word	-40
	.word	4
	.word	_Label_1182
	.word	-44
	.word	4
	.word	_Label_1183
	.word	-48
	.word	4
	.word	_Label_1184
	.word	-52
	.word	4
	.word	_Label_1185
	.word	-56
	.word	4
	.word	0
_Label_1172:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1173:
	.ascii	"Pself\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1184:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1959:
	push	r0
	sub	r1,1,r1
	bne	_Label_1959
	mov	980,r13		! source line 980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1186 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	988,r13		! source line 988
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1191 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1192 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1191  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1187:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1192 then goto _Label_1190		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1190
_Label_1188:
	mov	989,r13		! source line 989
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1193 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_1194 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1194 [i ] into _temp_1195
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1189:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1187
! END FOR
_Label_1190:
! CALL STATEMENT...
!   _temp_1196 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1197 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1198 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1197  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1199
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1201
	.word	-12
	.word	4
	.word	_Label_1202
	.word	-16
	.word	4
	.word	_Label_1203
	.word	-20
	.word	4
	.word	_Label_1204
	.word	-24
	.word	4
	.word	_Label_1205
	.word	-28
	.word	4
	.word	_Label_1206
	.word	-32
	.word	4
	.word	_Label_1207
	.word	-36
	.word	4
	.word	_Label_1208
	.word	-40
	.word	4
	.word	_Label_1209
	.word	-44
	.word	4
	.word	_Label_1210
	.word	-48
	.word	4
	.word	_Label_1211
	.word	-52
	.word	4
	.word	0
_Label_1199:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1200:
	.ascii	"Pself\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1210:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	21,r1
_Label_1960:
	push	r0
	sub	r1,1,r1
	bne	_Label_1960
	mov	1002,r13		! source line 1002
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1212 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-68]
!   Send message Lock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_1216 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-64]
!   Send message IsEmpty
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1215  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1217 = _temp_1215 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1217 then goto _Label_1214 else goto _Label_1213
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1213
	jmp	_Label_1214
_Label_1213:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1218 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1219 = &nextCt
	load	[r14+8],r1
	add	r1,1328,r1
	store	r1,[r14+-56]
!   _temp_1220 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-52]
!   _temp_1221 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1218  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1219  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1220  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1214:
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1222 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = p + 20
	load	[r14+-72],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1223 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_1227 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1226  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1228 = _temp_1226 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1228 then goto _Label_1225 else goto _Label_1224
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1224
	jmp	_Label_1225
_Label_1224:
! THEN...
	mov	1020,r13		! source line 1020
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0AS",r10
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1229 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = t + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: nextPid = *_temp_1230  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1231 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_1232
_Label_1225:
! ELSE...
	mov	1024,r13		! source line 1024
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! END IF...
_Label_1232:
! IF STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1234		(int)
	load	[r14+8],r1
	load	[r1+1328],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1234
!	jmp	_Label_1233
_Label_1233:
! THEN...
	mov	1028,r13		! source line 1028
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1235 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1236
_Label_1234:
! ELSE...
	mov	1030,r13		! source line 1030
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1237 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1236:
! RETURN STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1238
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_1239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1240
	.word	-16
	.word	4
	.word	_Label_1241
	.word	-20
	.word	4
	.word	_Label_1242
	.word	-24
	.word	4
	.word	_Label_1243
	.word	-28
	.word	4
	.word	_Label_1244
	.word	-32
	.word	4
	.word	_Label_1245
	.word	-9
	.word	1
	.word	_Label_1246
	.word	-36
	.word	4
	.word	_Label_1247
	.word	-10
	.word	1
	.word	_Label_1248
	.word	-40
	.word	4
	.word	_Label_1249
	.word	-44
	.word	4
	.word	_Label_1250
	.word	-48
	.word	4
	.word	_Label_1251
	.word	-52
	.word	4
	.word	_Label_1252
	.word	-56
	.word	4
	.word	_Label_1253
	.word	-60
	.word	4
	.word	_Label_1254
	.word	-11
	.word	1
	.word	_Label_1255
	.word	-64
	.word	4
	.word	_Label_1256
	.word	-12
	.word	1
	.word	_Label_1257
	.word	-68
	.word	4
	.word	_Label_1258
	.word	-72
	.word	4
	.word	_Label_1259
	.word	-76
	.word	4
	.word	0
_Label_1238:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1239:
	.ascii	"Pself\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1245:
	.byte	'C'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1247:
	.byte	'C'
	.ascii	"_temp_1226\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1217\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1256:
	.byte	'C'
	.ascii	"_temp_1215\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1258:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1259:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	14,r1
_Label_1961:
	push	r0
	sub	r1,1,r1
	bne	_Label_1961
	mov	1038,r13		! source line 1038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1260 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0IF",r10
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1264 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1263  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1265 = _temp_1263 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1265 then goto _Label_1262 else goto _Label_1261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1261
	jmp	_Label_1262
_Label_1261:
! THEN...
	mov	1045,r13		! source line 1045
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1266 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Data Move: nextPid = *_temp_1266  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! END IF...
_Label_1262:
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1267 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1267 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1268 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1269 = &nextCt
	load	[r14+8],r1
	add	r1,1328,r1
	store	r1,[r14+-32]
!   _temp_1270 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-28]
!   _temp_1271 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1269  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1270  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Send message Signal
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1273		(int)
	load	[r14+8],r1
	load	[r1+1328],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1273
!	jmp	_Label_1272
_Label_1272:
! THEN...
	mov	1052,r13		! source line 1052
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1274 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1275
_Label_1273:
! ELSE...
	mov	1054,r13		! source line 1054
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1276 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1275:
! RETURN STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1277
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1278
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1279
	.word	12
	.word	4
	.word	_Label_1280
	.word	-16
	.word	4
	.word	_Label_1281
	.word	-20
	.word	4
	.word	_Label_1282
	.word	-24
	.word	4
	.word	_Label_1283
	.word	-28
	.word	4
	.word	_Label_1284
	.word	-32
	.word	4
	.word	_Label_1285
	.word	-36
	.word	4
	.word	_Label_1286
	.word	-40
	.word	4
	.word	_Label_1287
	.word	-44
	.word	4
	.word	_Label_1288
	.word	-9
	.word	1
	.word	_Label_1289
	.word	-48
	.word	4
	.word	_Label_1290
	.word	-10
	.word	1
	.word	_Label_1291
	.word	-52
	.word	4
	.word	0
_Label_1277:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1278:
	.ascii	"Pself\0"
	.align
_Label_1279:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1288:
	.byte	'C'
	.ascii	"_temp_1265\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1290:
	.byte	'C'
	.ascii	"_temp_1263\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1292
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1292:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1293
	.word	_sourceFileName
	.word	273		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1293:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_1962:
	push	r0
	sub	r1,1,r1
	bne	_Label_1962
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1294 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1094,r13		! source line 1094
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1296 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1298 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: restOfLine = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   restOfLine = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1300 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1302 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1307 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1308 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1307  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1303:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1308 then goto _Label_1306		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1306
_Label_1304:
	mov	1110,r13		! source line 1110
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1311 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1311) then goto _Label_1310
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1310
!	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	1114,r13		! source line 1114
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1114,r13		! source line 1114
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1310:
!   Increment the FOR-LOOP index variable and jump back
_Label_1305:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1303
! END FOR
_Label_1306:
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1313
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1315
	.word	-12
	.word	4
	.word	_Label_1316
	.word	-16
	.word	4
	.word	_Label_1317
	.word	-20
	.word	4
	.word	_Label_1318
	.word	-24
	.word	4
	.word	_Label_1319
	.word	-28
	.word	4
	.word	_Label_1320
	.word	-32
	.word	4
	.word	_Label_1321
	.word	-36
	.word	4
	.word	_Label_1322
	.word	-40
	.word	4
	.word	_Label_1323
	.word	-44
	.word	4
	.word	_Label_1324
	.word	-48
	.word	4
	.word	_Label_1325
	.word	-52
	.word	4
	.word	_Label_1326
	.word	-56
	.word	4
	.word	_Label_1327
	.word	-60
	.word	4
	.word	_Label_1328
	.word	-64
	.word	4
	.word	0
_Label_1313:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1314:
	.ascii	"Pself\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1963:
	push	r0
	sub	r1,1,r1
	bne	_Label_1963
	mov	1121,r13		! source line 1121
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1329 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1330 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1331 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1332 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_1333 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_1334 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1335
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1336
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1337
	.word	-12
	.word	4
	.word	_Label_1338
	.word	-16
	.word	4
	.word	_Label_1339
	.word	-20
	.word	4
	.word	_Label_1340
	.word	-24
	.word	4
	.word	_Label_1341
	.word	-28
	.word	4
	.word	_Label_1342
	.word	-32
	.word	4
	.word	0
_Label_1335:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1336:
	.ascii	"Pself\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1964:
	push	r0
	sub	r1,1,r1
	bne	_Label_1964
	mov	1135,r13		! source line 1135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_1343 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0WH",r10
_Label_1344:
!   if numberFreeFrames >= 1 then goto _Label_1346		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1346
!	jmp	_Label_1345
_Label_1345:
	mov	1146,r13		! source line 1146
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1347 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1348 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1347  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1344
_Label_1346:
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1349 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1350 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   _temp_1351 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1351		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1352
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1354
	.word	-12
	.word	4
	.word	_Label_1355
	.word	-16
	.word	4
	.word	_Label_1356
	.word	-20
	.word	4
	.word	_Label_1357
	.word	-24
	.word	4
	.word	_Label_1358
	.word	-28
	.word	4
	.word	_Label_1359
	.word	-32
	.word	4
	.word	_Label_1360
	.word	-36
	.word	4
	.word	_Label_1361
	.word	-40
	.word	4
	.word	0
_Label_1352:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1353:
	.ascii	"Pself\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1360:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1361:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_1965:
	push	r0
	sub	r1,1,r1
	bne	_Label_1965
	mov	1165,r13		! source line 1165
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1362 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
!   waiting = waiting + 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! IF STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1364		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1364
!	jmp	_Label_1363
_Label_1363:
! THEN...
	mov	1172,r13		! source line 1172
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_1365 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1366 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1365  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1364:
! WHILE STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0WH",r10
_Label_1367:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1369		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1369
!	jmp	_Label_1368
_Label_1368:
	mov	1175,r13		! source line 1175
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1370 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1371 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1367
_Label_1369:
! FOR STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1376 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1377 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1376  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1372:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1377 then goto _Label_1375		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1375
_Label_1373:
	mov	1179,r13		! source line 1179
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1378 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message FindZeroAndSet
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   _temp_1379 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1379		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1374:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1372
! END FOR
_Label_1375:
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1380 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   waiting = waiting - 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1381 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1382 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1381  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_1383 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1384
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	12
	.word	4
	.word	_Label_1387
	.word	16
	.word	4
	.word	_Label_1388
	.word	-12
	.word	4
	.word	_Label_1389
	.word	-16
	.word	4
	.word	_Label_1390
	.word	-20
	.word	4
	.word	_Label_1391
	.word	-24
	.word	4
	.word	_Label_1392
	.word	-28
	.word	4
	.word	_Label_1393
	.word	-32
	.word	4
	.word	_Label_1394
	.word	-36
	.word	4
	.word	_Label_1395
	.word	-40
	.word	4
	.word	_Label_1396
	.word	-44
	.word	4
	.word	_Label_1397
	.word	-48
	.word	4
	.word	_Label_1398
	.word	-52
	.word	4
	.word	_Label_1399
	.word	-56
	.word	4
	.word	_Label_1400
	.word	-60
	.word	4
	.word	_Label_1401
	.word	-64
	.word	4
	.word	_Label_1402
	.word	-68
	.word	4
	.word	0
_Label_1384:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1387:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1401:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1402:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	18,r1
_Label_1966:
	push	r0
	sub	r1,1,r1
	bne	_Label_1966
	mov	1195,r13		! source line 1195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1403 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1408 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1411 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1410 = *_temp_1411  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1409 = _temp_1410 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1408  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1404:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1409 then goto _Label_1407		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1407
_Label_1405:
	mov	1200,r13		! source line 1200
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0AS",r10
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   _temp_1412 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1412 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1413 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1406:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1404
! END FOR
_Label_1407:
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1414 = *_temp_1415  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1414		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_1416 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1417 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1416  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1418 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0SE",r10
!   _temp_1419 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1420
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1422
	.word	12
	.word	4
	.word	_Label_1423
	.word	-12
	.word	4
	.word	_Label_1424
	.word	-16
	.word	4
	.word	_Label_1425
	.word	-20
	.word	4
	.word	_Label_1426
	.word	-24
	.word	4
	.word	_Label_1427
	.word	-28
	.word	4
	.word	_Label_1428
	.word	-32
	.word	4
	.word	_Label_1429
	.word	-36
	.word	4
	.word	_Label_1430
	.word	-40
	.word	4
	.word	_Label_1431
	.word	-44
	.word	4
	.word	_Label_1432
	.word	-48
	.word	4
	.word	_Label_1433
	.word	-52
	.word	4
	.word	_Label_1434
	.word	-56
	.word	4
	.word	_Label_1435
	.word	-60
	.word	4
	.word	_Label_1436
	.word	-64
	.word	4
	.word	_Label_1437
	.word	-68
	.word	4
	.word	_Label_1438
	.word	-72
	.word	4
	.word	0
_Label_1420:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1421:
	.ascii	"Pself\0"
	.align
_Label_1422:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1439
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1439:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1440
	.word	_sourceFileName
	.word	294		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1440:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1967:
	push	r0
	sub	r1,1,r1
	bne	_Label_1967
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_1441 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1443 = &_temp_1442
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1443 = _temp_1443 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1445:
!   Data Move: *_temp_1443 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1443 = _temp_1443 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1444 = _temp_1444 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1444) then goto _Label_1445
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1445
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1446 = &_temp_1442
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1968
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1968:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1441 = *_temp_1446  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1969:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1969
! RETURN STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1447
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	_Label_1451
	.word	-20
	.word	4
	.word	_Label_1452
	.word	-104
	.word	84
	.word	_Label_1453
	.word	-108
	.word	4
	.word	0
_Label_1447:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1448:
	.ascii	"Pself\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1970:
	push	r0
	sub	r1,1,r1
	bne	_Label_1970
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1454 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1454  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1455 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1460 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1461 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1460  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1456:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1461 then goto _Label_1459		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1459
_Label_1457:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1462 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1464 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1464 [i ] into _temp_1465
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1463 = _temp_1465		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1463  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1466 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1466  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1468 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1468 [i ] into _temp_1469
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1467 = *_temp_1469  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1470 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1470  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1471 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1472 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1474) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1473  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1475 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0IF",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1479) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1478) then goto _Label_1477
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1477
!	jmp	_Label_1476
_Label_1476:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1480  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1482
_Label_1477:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1483 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1482:
! CALL STATEMENT...
!   _temp_1484 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0IF",r10
	mov	1254,r13		! source line 1254
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1487) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1485 else goto _Label_1486
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1486
	jmp	_Label_1485
_Label_1485:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1488 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1489
_Label_1486:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1490 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1489:
! CALL STATEMENT...
!   _temp_1491 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0IF",r10
	mov	1260,r13		! source line 1260
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1492 else goto _Label_1493
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1493
	jmp	_Label_1492
_Label_1492:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1495 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1496
_Label_1493:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1497 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1496:
! CALL STATEMENT...
!   _temp_1498 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0IF",r10
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1501) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1499 else goto _Label_1500
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1500
	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1503
_Label_1500:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1504 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1503:
! CALL STATEMENT...
!   _temp_1505 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0IF",r10
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1508) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1506 else goto _Label_1507
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1507
	jmp	_Label_1506
_Label_1506:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1510
_Label_1507:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1511 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1510:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1458:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1456
! END FOR
_Label_1459:
! RETURN STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1512
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	_Label_1521
	.word	-40
	.word	4
	.word	_Label_1522
	.word	-44
	.word	4
	.word	_Label_1523
	.word	-48
	.word	4
	.word	_Label_1524
	.word	-52
	.word	4
	.word	_Label_1525
	.word	-56
	.word	4
	.word	_Label_1526
	.word	-60
	.word	4
	.word	_Label_1527
	.word	-64
	.word	4
	.word	_Label_1528
	.word	-68
	.word	4
	.word	_Label_1529
	.word	-72
	.word	4
	.word	_Label_1530
	.word	-76
	.word	4
	.word	_Label_1531
	.word	-80
	.word	4
	.word	_Label_1532
	.word	-84
	.word	4
	.word	_Label_1533
	.word	-88
	.word	4
	.word	_Label_1534
	.word	-92
	.word	4
	.word	_Label_1535
	.word	-96
	.word	4
	.word	_Label_1536
	.word	-100
	.word	4
	.word	_Label_1537
	.word	-104
	.word	4
	.word	_Label_1538
	.word	-108
	.word	4
	.word	_Label_1539
	.word	-112
	.word	4
	.word	_Label_1540
	.word	-116
	.word	4
	.word	_Label_1541
	.word	-120
	.word	4
	.word	_Label_1542
	.word	-124
	.word	4
	.word	_Label_1543
	.word	-128
	.word	4
	.word	_Label_1544
	.word	-132
	.word	4
	.word	_Label_1545
	.word	-136
	.word	4
	.word	_Label_1546
	.word	-140
	.word	4
	.word	_Label_1547
	.word	-144
	.word	4
	.word	_Label_1548
	.word	-148
	.word	4
	.word	_Label_1549
	.word	-152
	.word	4
	.word	_Label_1550
	.word	-156
	.word	4
	.word	_Label_1551
	.word	-160
	.word	4
	.word	_Label_1552
	.word	-164
	.word	4
	.word	_Label_1553
	.word	-168
	.word	4
	.word	0
_Label_1512:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1553:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1971:
	push	r0
	sub	r1,1,r1
	bne	_Label_1971
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_1556 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1556 [entry ] into _temp_1557
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1555 = *_temp_1557  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1554 = _temp_1555 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1554  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1558
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	12
	.word	4
	.word	_Label_1561
	.word	-12
	.word	4
	.word	_Label_1562
	.word	-16
	.word	4
	.word	_Label_1563
	.word	-20
	.word	4
	.word	_Label_1564
	.word	-24
	.word	4
	.word	0
_Label_1558:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1972:
	push	r0
	sub	r1,1,r1
	bne	_Label_1972
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_1567 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1567 [entry ] into _temp_1568
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1566 = *_temp_1568  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1565 = _temp_1566 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1565  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1569
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1571
	.word	12
	.word	4
	.word	_Label_1572
	.word	-12
	.word	4
	.word	_Label_1573
	.word	-16
	.word	4
	.word	_Label_1574
	.word	-20
	.word	4
	.word	_Label_1575
	.word	-24
	.word	4
	.word	0
_Label_1569:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1570:
	.ascii	"Pself\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_1576 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1576 [entry ] into _temp_1577
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1581 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1581 [entry ] into _temp_1582
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1580 = *_temp_1582  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1579 = _temp_1580 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1578 = _temp_1579 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1577 = _temp_1578  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1583
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	12
	.word	4
	.word	_Label_1586
	.word	16
	.word	4
	.word	_Label_1587
	.word	-12
	.word	4
	.word	_Label_1588
	.word	-16
	.word	4
	.word	_Label_1589
	.word	-20
	.word	4
	.word	_Label_1590
	.word	-24
	.word	4
	.word	_Label_1591
	.word	-28
	.word	4
	.word	_Label_1592
	.word	-32
	.word	4
	.word	_Label_1593
	.word	-36
	.word	4
	.word	0
_Label_1583:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1586:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1974:
	push	r0
	sub	r1,1,r1
	bne	_Label_1974
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_1597 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1597 [entry ] into _temp_1598
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1596 = *_temp_1598  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1595 = _temp_1596 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1595) then goto _Label_1599
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1599
!   _temp_1594 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1600
_Label_1599:
!   _temp_1594 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1600:
!   ReturnResult: _temp_1594  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1601
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1603
	.word	12
	.word	4
	.word	_Label_1604
	.word	-16
	.word	4
	.word	_Label_1605
	.word	-20
	.word	4
	.word	_Label_1606
	.word	-24
	.word	4
	.word	_Label_1607
	.word	-28
	.word	4
	.word	_Label_1608
	.word	-9
	.word	1
	.word	0
_Label_1601:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1602:
	.ascii	"Pself\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1608:
	.byte	'C'
	.ascii	"_temp_1594\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1975:
	push	r0
	sub	r1,1,r1
	bne	_Label_1975
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_1612 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1612 [entry ] into _temp_1613
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1611 = *_temp_1613  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1610 = _temp_1611 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1610) then goto _Label_1614
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1614
!   _temp_1609 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1615
_Label_1614:
!   _temp_1609 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1615:
!   ReturnResult: _temp_1609  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1616
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1618
	.word	12
	.word	4
	.word	_Label_1619
	.word	-16
	.word	4
	.word	_Label_1620
	.word	-20
	.word	4
	.word	_Label_1621
	.word	-24
	.word	4
	.word	_Label_1622
	.word	-28
	.word	4
	.word	_Label_1623
	.word	-9
	.word	1
	.word	0
_Label_1616:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1617:
	.ascii	"Pself\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1623:
	.byte	'C'
	.ascii	"_temp_1609\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1976:
	push	r0
	sub	r1,1,r1
	bne	_Label_1976
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_1627 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1627 [entry ] into _temp_1628
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1626 = *_temp_1628  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1625 = _temp_1626 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1625) then goto _Label_1629
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1629
!   _temp_1624 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1630
_Label_1629:
!   _temp_1624 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1630:
!   ReturnResult: _temp_1624  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1631
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1633
	.word	12
	.word	4
	.word	_Label_1634
	.word	-16
	.word	4
	.word	_Label_1635
	.word	-20
	.word	4
	.word	_Label_1636
	.word	-24
	.word	4
	.word	_Label_1637
	.word	-28
	.word	4
	.word	_Label_1638
	.word	-9
	.word	1
	.word	0
_Label_1631:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1632:
	.ascii	"Pself\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1638:
	.byte	'C'
	.ascii	"_temp_1624\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1977:
	push	r0
	sub	r1,1,r1
	bne	_Label_1977
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_1642 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1642 [entry ] into _temp_1643
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1641 = *_temp_1643  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1640 = _temp_1641 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1640) then goto _Label_1644
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1644
!   _temp_1639 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1645
_Label_1644:
!   _temp_1639 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1645:
!   ReturnResult: _temp_1639  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1646
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-9
	.word	1
	.word	0
_Label_1646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1653:
	.byte	'C'
	.ascii	"_temp_1639\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1978:
	push	r0
	sub	r1,1,r1
	bne	_Label_1978
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_1654 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1654 [entry ] into _temp_1655
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1658 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1658 [entry ] into _temp_1659
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1657 = *_temp_1659  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1656 = _temp_1657 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1655 = _temp_1656  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1660
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1662
	.word	12
	.word	4
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-32
	.word	4
	.word	0
_Label_1660:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1661:
	.ascii	"Pself\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1979:
	push	r0
	sub	r1,1,r1
	bne	_Label_1979
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_1669 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1669 [entry ] into _temp_1670
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1673 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1673 [entry ] into _temp_1674
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1672 = *_temp_1674  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1671 = _temp_1672 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1670 = _temp_1671  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1675
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	12
	.word	4
	.word	_Label_1678
	.word	-12
	.word	4
	.word	_Label_1679
	.word	-16
	.word	4
	.word	_Label_1680
	.word	-20
	.word	4
	.word	_Label_1681
	.word	-24
	.word	4
	.word	_Label_1682
	.word	-28
	.word	4
	.word	_Label_1683
	.word	-32
	.word	4
	.word	0
_Label_1675:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1980:
	push	r0
	sub	r1,1,r1
	bne	_Label_1980
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_1684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1684 [entry ] into _temp_1685
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1688 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1688 [entry ] into _temp_1689
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1687 = *_temp_1689  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1686 = _temp_1687 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1685 = _temp_1686  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1690
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	-12
	.word	4
	.word	_Label_1694
	.word	-16
	.word	4
	.word	_Label_1695
	.word	-20
	.word	4
	.word	_Label_1696
	.word	-24
	.word	4
	.word	_Label_1697
	.word	-28
	.word	4
	.word	_Label_1698
	.word	-32
	.word	4
	.word	0
_Label_1690:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1981:
	push	r0
	sub	r1,1,r1
	bne	_Label_1981
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_1699 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1699 [entry ] into _temp_1700
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1703 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1703 [entry ] into _temp_1704
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1702 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1701 = _temp_1702 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1700 = _temp_1701  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1705
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1707
	.word	12
	.word	4
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	_Label_1712
	.word	-28
	.word	4
	.word	_Label_1713
	.word	-32
	.word	4
	.word	0
_Label_1705:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1706:
	.ascii	"Pself\0"
	.align
_Label_1707:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1982:
	push	r0
	sub	r1,1,r1
	bne	_Label_1982
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1714 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1714 [entry ] into _temp_1715
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1718 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1718 [entry ] into _temp_1719
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1717 = *_temp_1719  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1716 = _temp_1717 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1715 = _temp_1716  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1720
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1721
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1722
	.word	12
	.word	4
	.word	_Label_1723
	.word	-12
	.word	4
	.word	_Label_1724
	.word	-16
	.word	4
	.word	_Label_1725
	.word	-20
	.word	4
	.word	_Label_1726
	.word	-24
	.word	4
	.word	_Label_1727
	.word	-28
	.word	4
	.word	_Label_1728
	.word	-32
	.word	4
	.word	0
_Label_1720:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1721:
	.ascii	"Pself\0"
	.align
_Label_1722:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1983:
	push	r0
	sub	r1,1,r1
	bne	_Label_1983
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_1729 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1729 [entry ] into _temp_1730
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1733 [entry ] into _temp_1734
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1732 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1731 = _temp_1732 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1730 = _temp_1731  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1735
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1737
	.word	12
	.word	4
	.word	_Label_1738
	.word	-12
	.word	4
	.word	_Label_1739
	.word	-16
	.word	4
	.word	_Label_1740
	.word	-20
	.word	4
	.word	_Label_1741
	.word	-24
	.word	4
	.word	_Label_1742
	.word	-28
	.word	4
	.word	_Label_1743
	.word	-32
	.word	4
	.word	0
_Label_1735:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1736:
	.ascii	"Pself\0"
	.align
_Label_1737:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1984:
	push	r0
	sub	r1,1,r1
	bne	_Label_1984
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_1744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1744 [entry ] into _temp_1745
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1748 [entry ] into _temp_1749
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1747 = *_temp_1749  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1746 = _temp_1747 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1745 = _temp_1746  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1750
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	12
	.word	4
	.word	_Label_1753
	.word	-12
	.word	4
	.word	_Label_1754
	.word	-16
	.word	4
	.word	_Label_1755
	.word	-20
	.word	4
	.word	_Label_1756
	.word	-24
	.word	4
	.word	_Label_1757
	.word	-28
	.word	4
	.word	_Label_1758
	.word	-32
	.word	4
	.word	0
_Label_1750:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1985:
	push	r0
	sub	r1,1,r1
	bne	_Label_1985
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_1759 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1759 [entry ] into _temp_1760
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1763 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1763 [entry ] into _temp_1764
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1762 = *_temp_1764  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1761 = _temp_1762 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1760 = _temp_1761  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1765
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	12
	.word	4
	.word	_Label_1768
	.word	-12
	.word	4
	.word	_Label_1769
	.word	-16
	.word	4
	.word	_Label_1770
	.word	-20
	.word	4
	.word	_Label_1771
	.word	-24
	.word	4
	.word	_Label_1772
	.word	-28
	.word	4
	.word	_Label_1773
	.word	-32
	.word	4
	.word	0
_Label_1765:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1986:
	push	r0
	sub	r1,1,r1
	bne	_Label_1986
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1775 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1775 [0 ] into _temp_1776
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1774 = _temp_1776		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1777 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1777  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1778
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1780
	.word	-12
	.word	4
	.word	_Label_1781
	.word	-16
	.word	4
	.word	_Label_1782
	.word	-20
	.word	4
	.word	_Label_1783
	.word	-24
	.word	4
	.word	0
_Label_1778:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1779:
	.ascii	"Pself\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1987:
	push	r0
	sub	r1,1,r1
	bne	_Label_1987
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1784
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1784
	jmp	_Label_1785
_Label_1784:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1786
_Label_1785:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1788		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1788
!	jmp	_Label_1787
_Label_1787:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1788:
! END IF...
_Label_1786:
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0WH",r10
_Label_1789:
!	jmp	_Label_1790
_Label_1790:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1793		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1793
!	jmp	_Label_1792
_Label_1792:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1794 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1793:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1798) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1797  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1797 then goto _Label_1796 else goto _Label_1795
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1795
	jmp	_Label_1796
_Label_1795:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1799 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1799  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1796:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1801) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1800  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1800 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_1802:
!   if offset >= 8192 then goto _Label_1804		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1804
!	jmp	_Label_1803
_Label_1803:
	mov	1466,r13		! source line 1466
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1805 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1805  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1807		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1807
!	jmp	_Label_1806
_Label_1806:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1807:
! END WHILE...
	jmp	_Label_1802
_Label_1804:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1789
_Label_1791:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1808
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1810
	.word	12
	.word	4
	.word	_Label_1811
	.word	16
	.word	4
	.word	_Label_1812
	.word	20
	.word	4
	.word	_Label_1813
	.word	-9
	.word	1
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-10
	.word	1
	.word	_Label_1819
	.word	-32
	.word	4
	.word	_Label_1820
	.word	-36
	.word	4
	.word	_Label_1821
	.word	-40
	.word	4
	.word	_Label_1822
	.word	-44
	.word	4
	.word	_Label_1823
	.word	-48
	.word	4
	.word	0
_Label_1808:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1809:
	.ascii	"Pself\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1813:
	.byte	'C'
	.ascii	"_temp_1805\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1818:
	.byte	'C'
	.ascii	"_temp_1797\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1820:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1821:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1822:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1823:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1988:
	push	r0
	sub	r1,1,r1
	bne	_Label_1988
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1824
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1824
	jmp	_Label_1825
_Label_1824:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1826
_Label_1825:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1828		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1828
!	jmp	_Label_1827
_Label_1827:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1828:
! END IF...
_Label_1826:
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0WH",r10
_Label_1829:
!	jmp	_Label_1830
_Label_1830:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1835		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1835
	jmp	_Label_1832
_Label_1835:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1837) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1836  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1836 then goto _Label_1834 else goto _Label_1832
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1832
	jmp	_Label_1834
_Label_1834:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1839) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1838  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1838 then goto _Label_1833 else goto _Label_1832
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1832
	jmp	_Label_1833
_Label_1832:
! THEN...
	mov	1507,r13		! source line 1507
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1833:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1841) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1840  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1840 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_1842:
!   if offset >= 8192 then goto _Label_1844		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1844
!	jmp	_Label_1843
_Label_1843:
	mov	1510,r13		! source line 1510
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1845 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1845  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1847		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1847
!	jmp	_Label_1846
_Label_1846:
! THEN...
	mov	1517,r13		! source line 1517
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1847:
! END WHILE...
	jmp	_Label_1842
_Label_1844:
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1829
_Label_1831:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1848
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	16
	.word	4
	.word	_Label_1852
	.word	20
	.word	4
	.word	_Label_1853
	.word	-9
	.word	1
	.word	_Label_1854
	.word	-16
	.word	4
	.word	_Label_1855
	.word	-20
	.word	4
	.word	_Label_1856
	.word	-24
	.word	4
	.word	_Label_1857
	.word	-10
	.word	1
	.word	_Label_1858
	.word	-28
	.word	4
	.word	_Label_1859
	.word	-11
	.word	1
	.word	_Label_1860
	.word	-32
	.word	4
	.word	_Label_1861
	.word	-36
	.word	4
	.word	_Label_1862
	.word	-40
	.word	4
	.word	_Label_1863
	.word	-44
	.word	4
	.word	0
_Label_1848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1851:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1852:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1853:
	.byte	'C'
	.ascii	"_temp_1845\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1857:
	.byte	'C'
	.ascii	"_temp_1838\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1859:
	.byte	'C'
	.ascii	"_temp_1836\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1863:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1989:
	push	r0
	sub	r1,1,r1
	bne	_Label_1989
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_1867 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1868) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1867  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1866  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1866 >= 4 then goto _Label_1865		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1865
!	jmp	_Label_1864
_Label_1864:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1865:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1870		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1870
!	jmp	_Label_1869
_Label_1869:
! THEN...
	mov	1559,r13		! source line 1559
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1870:
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	mov	1564,r13		! source line 1564
	mov	"\0\0SE",r10
!   _temp_1873 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1872 = _temp_1873 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1874 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1875) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1872  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1874  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1871  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1871  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1876
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1878
	.word	12
	.word	4
	.word	_Label_1879
	.word	16
	.word	4
	.word	_Label_1880
	.word	20
	.word	4
	.word	_Label_1881
	.word	-12
	.word	4
	.word	_Label_1882
	.word	-16
	.word	4
	.word	_Label_1883
	.word	-20
	.word	4
	.word	_Label_1884
	.word	-24
	.word	4
	.word	_Label_1885
	.word	-28
	.word	4
	.word	_Label_1886
	.word	-32
	.word	4
	.word	_Label_1887
	.word	-36
	.word	4
	.word	_Label_1888
	.word	-40
	.word	4
	.word	_Label_1889
	.word	-44
	.word	4
	.word	0
_Label_1876:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1877:
	.ascii	"Pself\0"
	.align
_Label_1878:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1879:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

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
	.export	_Method_P_Kernel_HoareCondition_4
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
	.skip	56
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
	set	0x6054fea2,r4		! myHashVal = 1616182946
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
_Label_1879:
	push	r0
	sub	r1,1,r1
	bne	_Label_1879
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
_Label_1880:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1880
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
_Label_1881:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1881
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
_Label_1882:
	push	r0
	sub	r1,1,r1
	bne	_Label_1882
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
_Label_1883:
	push	r0
	sub	r1,1,r1
	bne	_Label_1883
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
_Label_1884:
	push	r0
	sub	r1,1,r1
	bne	_Label_1884
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
_Label_1885:
	push	r0
	sub	r1,1,r1
	bne	_Label_1885
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
_Label_1886:
	push	r0
	sub	r1,1,r1
	bne	_Label_1886
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
_Label_1887:
	push	r0
	sub	r1,1,r1
	bne	_Label_1887
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
_Label_1888:
	push	r0
	sub	r1,1,r1
	bne	_Label_1888
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
_Label_1889:
	push	r0
	sub	r1,1,r1
	bne	_Label_1889
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
_Label_1890:
	push	r0
	sub	r1,1,r1
	bne	_Label_1890
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
_Label_1891:
	push	r0
	sub	r1,1,r1
	bne	_Label_1891
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
_Label_1892:
	push	r0
	sub	r1,1,r1
	bne	_Label_1892
	mov	1557,r13		! source line 1557
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1569,r13		! source line 1569
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
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
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
_Label_1893:
	push	r0
	sub	r1,1,r1
	bne	_Label_1893
	mov	1575,r13		! source line 1575
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
	mov	1585,r13		! source line 1585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
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
	mov	1597,r13		! source line 1597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
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
_Label_1894:
	push	r0
	sub	r1,1,r1
	bne	_Label_1894
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
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
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
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
_Label_1895:
	push	r0
	sub	r1,1,r1
	bne	_Label_1895
	mov	1623,r13		! source line 1623
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
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
	mov	1630,r13		! source line 1630
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
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
_Label_1896:
	push	r0
	sub	r1,1,r1
	bne	_Label_1896
	mov	1635,r13		! source line 1635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
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
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
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
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	1647,r13		! source line 1647
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
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
	mov	1654,r13		! source line 1654
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
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
_Label_1898:
	push	r0
	sub	r1,1,r1
	bne	_Label_1898
	mov	1659,r13		! source line 1659
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
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
	mov	1666,r13		! source line 1666
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
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
_Label_1899:
	push	r0
	sub	r1,1,r1
	bne	_Label_1899
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
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
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
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
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
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
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
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
_Label_1901:
	push	r0
	sub	r1,1,r1
	bne	_Label_1901
	mov	1695,r13		! source line 1695
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
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
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
	mov	1702,r13		! source line 1702
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1705,r13		! source line 1705
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
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1706,r13		! source line 1706
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
	mov	1708,r13		! source line 1708
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_361 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_360:
! SEND STATEMENT...
	mov	1710,r13		! source line 1710
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
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
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
_Label_1902:
	push	r0
	sub	r1,1,r1
	bne	_Label_1902
	mov	1721,r13		! source line 1721
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1742,r13		! source line 1742
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1903
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_371
_Label_1903:
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
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Call the function
	mov	1744,r13		! source line 1744
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
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
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
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
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
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
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
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
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
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
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
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
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
	mov	1760,r13		! source line 1760
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
	mov	1760,r13		! source line 1760
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
	mov	1762,r13		! source line 1762
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
	mov	1762,r13		! source line 1762
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
	mov	1764,r13		! source line 1764
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1764,r13		! source line 1764
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
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
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
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
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
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1774,r13		! source line 1774
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
	mov	1775,r13		! source line 1775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_372:
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
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
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
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
	mov	1788,r13		! source line 1788
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
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
	mov	1794,r13		! source line 1794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
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
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
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
	mov	1807,r13		! source line 1807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
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
	mov	1814,r13		! source line 1814
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
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
	mov	1821,r13		! source line 1821
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
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
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
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
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
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
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
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
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
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
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
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
_Label_1904:
	push	r0
	sub	r1,1,r1
	bne	_Label_1904
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
_Label_1905:
	push	r0
	sub	r1,1,r1
	bne	_Label_1905
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
_Label_1906:
	push	r0
	sub	r1,1,r1
	bne	_Label_1906
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
_Label_1907:
	push	r0
	sub	r1,1,r1
	bne	_Label_1907
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
_Label_1908:
	push	r0
	sub	r1,1,r1
	bne	_Label_1908
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
_Label_1909:
	push	r0
	sub	r1,1,r1
	bne	_Label_1909
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
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
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
_Label_1911:
	push	r0
	sub	r1,1,r1
	bne	_Label_1911
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
_Label_1912:
	push	r0
	sub	r1,1,r1
	bne	_Label_1912
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
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
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
_Label_1914:
	push	r0
	sub	r1,1,r1
	bne	_Label_1914
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
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	Broadcast
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
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
	mov	446,r13		! source line 446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   cnt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
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
	mov	449,r13		! source line 449
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
	mov	449,r13		! source line 449
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
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
	mov	454,r13		! source line 454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   cnt = cnt + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
!   if intIsZero (nextCount) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_591 = *nextCount  (sizeInBytes=4)
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
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   if intIsZero (nextSem) then goto _runtimeErrorNullPointer
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
	mov	459,r13		! source line 459
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	459,r13		! source line 459
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
	mov	461,r13		! source line 461
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
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   cnt = cnt - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	462,r13		! source line 462
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
	.ascii	"nextCount\0"
	.align
_Label_598:
	.byte	'P'
	.ascii	"nextSem\0"
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
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
!   if cnt <= 0 then goto _Label_602		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_602
!	jmp	_Label_601
_Label_601:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   if intIsZero (nextCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (nextCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_604 = *nextCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_603 = _temp_604 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *nextCount = _temp_603  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+12],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	470,r13		! source line 470
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
	mov	471,r13		! source line 471
	mov	"\0\0SE",r10
!   if intIsZero (nextSem) then goto _runtimeErrorNullPointer
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
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   if intIsZero (nextCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (nextCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_607 = *nextCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   _temp_606 = _temp_607 - 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *nextCount = _temp_606  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+12],r2
	store	r1,[r2]
! END IF...
_Label_602:
! RETURN STATEMENT...
	mov	468,r13		! source line 468
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
	.ascii	"nextCount\0"
	.align
_Label_611:
	.byte	'P'
	.ascii	"nextSem\0"
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
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	478,r13		! source line 478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_617
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_619
	.word	12
	.word	4
	.word	0
_Label_617:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_618:
	.ascii	"Pself\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"mutex\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_620
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
_Label_620:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_621
	.word	_sourceFileName
	.word	179		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_621:
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
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
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
!   _temp_622 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_622 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_623 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_623 [0 ] into _temp_624
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
!   Data Move: *_temp_624 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_625 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_625 [999 ] into _temp_626
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
!   Data Move: *_temp_626 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_627 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_627 [999 ] into _temp_628
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
!   stackTop = _temp_628		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_629 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_631 = &_temp_630
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_631 = _temp_631 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_633:
!   Data Move: *_temp_631 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_631 = _temp_631 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_632 = _temp_632 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_632) then goto _Label_633
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_633
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_634 = &_temp_630
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1919
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1919:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_629 = *_temp_634  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1920:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1920
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
!   _temp_635 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_637 = &_temp_636
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_637 = _temp_637 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_639:
!   Data Move: *_temp_637 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_637 = _temp_637 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_638 = _temp_638 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_638) then goto _Label_639
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_639
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_640 = &_temp_636
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1921
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1921:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_635 = *_temp_640  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1922:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1922
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
	.word	_Label_641
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_642
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_643
	.word	12
	.word	4
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	_Label_646
	.word	-20
	.word	4
	.word	_Label_647
	.word	-84
	.word	64
	.word	_Label_648
	.word	-88
	.word	4
	.word	_Label_649
	.word	-92
	.word	4
	.word	_Label_650
	.word	-96
	.word	4
	.word	_Label_651
	.word	-100
	.word	4
	.word	_Label_652
	.word	-156
	.word	56
	.word	_Label_653
	.word	-160
	.word	4
	.word	_Label_654
	.word	-164
	.word	4
	.word	_Label_655
	.word	-168
	.word	4
	.word	_Label_656
	.word	-172
	.word	4
	.word	_Label_657
	.word	-176
	.word	4
	.word	_Label_658
	.word	-180
	.word	4
	.word	_Label_659
	.word	-184
	.word	4
	.word	_Label_660
	.word	-188
	.word	4
	.word	0
_Label_641:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_642:
	.ascii	"Pself\0"
	.align
_Label_643:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_622\0"
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
_Label_1923:
	push	r0
	sub	r1,1,r1
	bne	_Label_1923
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
!   _temp_661 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_661  (sizeInBytes=4)
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
!   _temp_663 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_662  sizeInBytes=4
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
	.word	_Label_664
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_666
	.word	12
	.word	4
	.word	_Label_667
	.word	16
	.word	4
	.word	_Label_668
	.word	-12
	.word	4
	.word	_Label_669
	.word	-16
	.word	4
	.word	_Label_670
	.word	-20
	.word	4
	.word	_Label_671
	.word	-24
	.word	4
	.word	_Label_672
	.word	-28
	.word	4
	.word	0
_Label_664:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_665:
	.ascii	"Pself\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_667:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_671:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_672:
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
_Label_1924:
	push	r0
	sub	r1,1,r1
	bne	_Label_1924
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_675 == _P_Kernel_currentThread then goto _Label_674		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_674
!	jmp	_Label_673
_Label_673:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_676 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
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
_Label_674:
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
!   _temp_677 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_679		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_679
!	jmp	_Label_678
_Label_678:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_681		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_681
!	jmp	_Label_680
_Label_680:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_682 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
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
_Label_681:
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
!   _temp_684 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_683  sizeInBytes=4
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
_Label_679:
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
	.word	_Label_685
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_687
	.word	-12
	.word	4
	.word	_Label_688
	.word	-16
	.word	4
	.word	_Label_689
	.word	-20
	.word	4
	.word	_Label_690
	.word	-24
	.word	4
	.word	_Label_691
	.word	-28
	.word	4
	.word	_Label_692
	.word	-32
	.word	4
	.word	_Label_693
	.word	-36
	.word	4
	.word	_Label_694
	.word	-40
	.word	4
	.word	_Label_695
	.word	-44
	.word	4
	.word	0
_Label_685:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_686:
	.ascii	"Pself\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_693:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_695:
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
_Label_1925:
	push	r0
	sub	r1,1,r1
	bne	_Label_1925
	mov	572,r13		! source line 572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_697		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_697
!	jmp	_Label_696
_Label_696:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_698 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
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
_Label_697:
! IF STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_701 == _P_Kernel_currentThread then goto _Label_700		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_700
!	jmp	_Label_699
_Label_699:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_702 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
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
_Label_700:
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
!   _temp_703 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_704
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_704
	jmp	_Label_705
_Label_704:
! THEN...
	mov	597,r13		! source line 597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_706 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
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
_Label_705:
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
	.word	_Label_707
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_709
	.word	-12
	.word	4
	.word	_Label_710
	.word	-16
	.word	4
	.word	_Label_711
	.word	-20
	.word	4
	.word	_Label_712
	.word	-24
	.word	4
	.word	_Label_713
	.word	-28
	.word	4
	.word	_Label_714
	.word	-32
	.word	4
	.word	0
_Label_707:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_708:
	.ascii	"Pself\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_714:
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
_Label_1926:
	push	r0
	sub	r1,1,r1
	bne	_Label_1926
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_718 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_718 [0 ] into _temp_719
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
!   Data Move: _temp_717 = *_temp_719  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_717 == 606348324 then goto _Label_716		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_716
!	jmp	_Label_715
_Label_715:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_720 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
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
	jmp	_Label_721
_Label_716:
! ELSE...
	mov	612,r13		! source line 612
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   _temp_725 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_725 [999 ] into _temp_726
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
!   Data Move: _temp_724 = *_temp_726  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_724 == 606348324 then goto _Label_723		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_723
!	jmp	_Label_722
_Label_722:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_727 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
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
_Label_723:
! END IF...
_Label_721:
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
	.word	_Label_728
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_730
	.word	-12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	_Label_735
	.word	-32
	.word	4
	.word	_Label_736
	.word	-36
	.word	4
	.word	_Label_737
	.word	-40
	.word	4
	.word	0
_Label_728:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_729:
	.ascii	"Pself\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_717\0"
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
_Label_1927:
	push	r0
	sub	r1,1,r1
	bne	_Label_1927
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
!   _temp_738 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
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
!   _temp_739 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_741 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
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
!   _temp_747 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_748 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_747  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_743:
!   Perform the FOR-LOOP termination test
!   if i > _temp_748 then goto _Label_746		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_746
_Label_744:
	mov	632,r13		! source line 632
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_751 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_753 [i ] into _temp_754
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
!   Data Move: _temp_752 = *_temp_754  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_755 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_757 [i ] into _temp_758
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
!   Data Move: _temp_756 = *_temp_758  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_759 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_745:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_743
! END FOR
_Label_746:
! CALL STATEMENT...
!   _temp_760 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_761 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_761  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_762 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_764 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_764 [0 ] into _temp_765
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
!   _temp_763 = _temp_765		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_763  sizeInBytes=4
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
	be	_Label_768
	cmp	r1,2
	be	_Label_769
	cmp	r1,3
	be	_Label_770
	cmp	r1,4
	be	_Label_771
	cmp	r1,5
	be	_Label_772
	jmp	_Label_766
! CASE 1...
_Label_768:
! CALL STATEMENT...
!   _temp_773 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 2...
_Label_769:
! CALL STATEMENT...
!   _temp_774 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 3...
_Label_770:
! CALL STATEMENT...
!   _temp_775 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 4...
_Label_771:
! CALL STATEMENT...
!   _temp_776 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 5...
_Label_772:
! CALL STATEMENT...
!   _temp_777 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_767
! DEFAULT CASE...
_Label_766:
! CALL STATEMENT...
!   _temp_778 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
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
_Label_767:
! CALL STATEMENT...
!   _temp_779 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
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
!   _temp_780 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
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
!   _temp_785 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_786 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_785  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_781:
!   Perform the FOR-LOOP termination test
!   if i > _temp_786 then goto _Label_784		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_784
_Label_782:
	mov	666,r13		! source line 666
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_787 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_789 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_791 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_791 [i ] into _temp_792
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
!   Data Move: _temp_790 = *_temp_792  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_793 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_795 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_795 [i ] into _temp_796
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
!   Data Move: _temp_794 = *_temp_796  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_797 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_783:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_781
! END FOR
_Label_784:
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
	.word	_Label_798
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_800
	.word	-12
	.word	4
	.word	_Label_801
	.word	-16
	.word	4
	.word	_Label_802
	.word	-20
	.word	4
	.word	_Label_803
	.word	-24
	.word	4
	.word	_Label_804
	.word	-28
	.word	4
	.word	_Label_805
	.word	-32
	.word	4
	.word	_Label_806
	.word	-36
	.word	4
	.word	_Label_807
	.word	-40
	.word	4
	.word	_Label_808
	.word	-44
	.word	4
	.word	_Label_809
	.word	-48
	.word	4
	.word	_Label_810
	.word	-52
	.word	4
	.word	_Label_811
	.word	-56
	.word	4
	.word	_Label_812
	.word	-60
	.word	4
	.word	_Label_813
	.word	-64
	.word	4
	.word	_Label_814
	.word	-68
	.word	4
	.word	_Label_815
	.word	-72
	.word	4
	.word	_Label_816
	.word	-76
	.word	4
	.word	_Label_817
	.word	-80
	.word	4
	.word	_Label_818
	.word	-84
	.word	4
	.word	_Label_819
	.word	-88
	.word	4
	.word	_Label_820
	.word	-92
	.word	4
	.word	_Label_821
	.word	-96
	.word	4
	.word	_Label_822
	.word	-100
	.word	4
	.word	_Label_823
	.word	-104
	.word	4
	.word	_Label_824
	.word	-108
	.word	4
	.word	_Label_825
	.word	-112
	.word	4
	.word	_Label_826
	.word	-116
	.word	4
	.word	_Label_827
	.word	-120
	.word	4
	.word	_Label_828
	.word	-124
	.word	4
	.word	_Label_829
	.word	-128
	.word	4
	.word	_Label_830
	.word	-132
	.word	4
	.word	_Label_831
	.word	-136
	.word	4
	.word	_Label_832
	.word	-140
	.word	4
	.word	_Label_833
	.word	-144
	.word	4
	.word	_Label_834
	.word	-148
	.word	4
	.word	_Label_835
	.word	-152
	.word	4
	.word	_Label_836
	.word	-156
	.word	4
	.word	_Label_837
	.word	-160
	.word	4
	.word	_Label_838
	.word	-164
	.word	4
	.word	_Label_839
	.word	-168
	.word	4
	.word	_Label_840
	.word	-172
	.word	4
	.word	_Label_841
	.word	-176
	.word	4
	.word	_Label_842
	.word	-180
	.word	4
	.word	_Label_843
	.word	-184
	.word	4
	.word	_Label_844
	.word	-188
	.word	4
	.word	_Label_845
	.word	-192
	.word	4
	.word	_Label_846
	.word	-196
	.word	4
	.word	0
_Label_798:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_799:
	.ascii	"Pself\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_845:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_847
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_847:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_848
	.word	_sourceFileName
	.word	206		! line number
	.word	41732		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_848:
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
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	730,r13		! source line 730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_849 = _StringConst_74
	set	_StringConst_74,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
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
!   _temp_851 = &threadManLock
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
_Label_1929:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1929
!   threadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_853 = &threadBecameFree
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
!   _temp_855 = &nextSem
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
!   _temp_856 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_858 = &_temp_857
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_858 = _temp_858 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_860 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_1930:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1930
!   _temp_860 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_862:
!   Data Move: *_temp_858 = _temp_860  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_1931:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1931
!   _temp_858 = _temp_858 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_859 = _temp_859 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_859) then goto _Label_862
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_862
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_863 = &_temp_857
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1932
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1932:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_856 = *_temp_863  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1933:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1933
! SEND STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_864 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-168]
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Move address of _temp_865 [0 ] into _temp_866
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
!   Prepare Argument: offset=12  value=_temp_864  sizeInBytes=4
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
!   _temp_867 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-156]
!   _temp_868 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-152]
!   Move address of _temp_868 [1 ] into _temp_869
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
!   Prepare Argument: offset=12  value=_temp_867  sizeInBytes=4
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
!   _temp_870 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-144]
!   _temp_871 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-140]
!   Move address of _temp_871 [2 ] into _temp_872
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
!   Prepare Argument: offset=12  value=_temp_870  sizeInBytes=4
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
!   _temp_873 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-132]
!   _temp_874 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-128]
!   Move address of _temp_874 [3 ] into _temp_875
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
!   Prepare Argument: offset=12  value=_temp_873  sizeInBytes=4
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
!   _temp_876 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   _temp_877 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-116]
!   Move address of _temp_877 [4 ] into _temp_878
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
!   Prepare Argument: offset=12  value=_temp_876  sizeInBytes=4
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
!   _temp_879 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-108]
!   _temp_880 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-104]
!   Move address of _temp_880 [5 ] into _temp_881
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
!   Prepare Argument: offset=12  value=_temp_879  sizeInBytes=4
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
!   _temp_882 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-96]
!   _temp_883 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-92]
!   Move address of _temp_883 [6 ] into _temp_884
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
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
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
!   _temp_885 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-84]
!   _temp_886 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-80]
!   Move address of _temp_886 [7 ] into _temp_887
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
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
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
!   _temp_888 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-72]
!   _temp_889 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-68]
!   Move address of _temp_889 [8 ] into _temp_890
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
!   Prepare Argument: offset=12  value=_temp_888  sizeInBytes=4
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
!   _temp_891 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-60]
!   _temp_892 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Move address of _temp_892 [9 ] into _temp_893
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
!   Prepare Argument: offset=12  value=_temp_891  sizeInBytes=4
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
!   _temp_899 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_900 = length		(4 bytes)
	set	-46032,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_899  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_895:
!   Perform the FOR-LOOP termination test
!   if i > _temp_900 then goto _Label_898		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_898
_Label_896:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   _temp_901 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_901 [i ] into _temp_902
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
!   _temp_903 = _temp_902 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_903 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_905 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Move address of _temp_905 [i ] into _temp_906
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
!   _temp_904 = _temp_906		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_907 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_904  sizeInBytes=4
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
_Label_897:
!   i = i + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_895
! END FOR
_Label_898:
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
	.word	_Label_908
	.word	4		! total size of parameters
	.word	46032		! frame size = 46032
	.word	_Label_909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_910
	.word	-12
	.word	4
	.word	_Label_911
	.word	-16
	.word	4
	.word	_Label_912
	.word	-20
	.word	4
	.word	_Label_913
	.word	-24
	.word	4
	.word	_Label_914
	.word	-28
	.word	4
	.word	_Label_915
	.word	-32
	.word	4
	.word	_Label_916
	.word	-36
	.word	4
	.word	_Label_917
	.word	-40
	.word	4
	.word	_Label_918
	.word	-44
	.word	4
	.word	_Label_919
	.word	-48
	.word	4
	.word	_Label_920
	.word	-52
	.word	4
	.word	_Label_921
	.word	-56
	.word	4
	.word	_Label_922
	.word	-60
	.word	4
	.word	_Label_923
	.word	-64
	.word	4
	.word	_Label_924
	.word	-68
	.word	4
	.word	_Label_925
	.word	-72
	.word	4
	.word	_Label_926
	.word	-76
	.word	4
	.word	_Label_927
	.word	-80
	.word	4
	.word	_Label_928
	.word	-84
	.word	4
	.word	_Label_929
	.word	-88
	.word	4
	.word	_Label_930
	.word	-92
	.word	4
	.word	_Label_931
	.word	-96
	.word	4
	.word	_Label_932
	.word	-100
	.word	4
	.word	_Label_933
	.word	-104
	.word	4
	.word	_Label_934
	.word	-108
	.word	4
	.word	_Label_935
	.word	-112
	.word	4
	.word	_Label_936
	.word	-116
	.word	4
	.word	_Label_937
	.word	-120
	.word	4
	.word	_Label_938
	.word	-124
	.word	4
	.word	_Label_939
	.word	-128
	.word	4
	.word	_Label_940
	.word	-132
	.word	4
	.word	_Label_941
	.word	-136
	.word	4
	.word	_Label_942
	.word	-140
	.word	4
	.word	_Label_943
	.word	-144
	.word	4
	.word	_Label_944
	.word	-148
	.word	4
	.word	_Label_945
	.word	-152
	.word	4
	.word	_Label_946
	.word	-156
	.word	4
	.word	_Label_947
	.word	-160
	.word	4
	.word	_Label_948
	.word	-164
	.word	4
	.word	_Label_949
	.word	-168
	.word	4
	.word	_Label_950
	.word	-172
	.word	4
	.word	_Label_951
	.word	-176
	.word	4
	.word	_Label_952
	.word	-4340
	.word	4164
	.word	_Label_953
	.word	-4344
	.word	4
	.word	_Label_954
	.word	-4348
	.word	4
	.word	_Label_955
	.word	-45992
	.word	41644
	.word	_Label_956
	.word	-45996
	.word	4
	.word	_Label_957
	.word	-46000
	.word	4
	.word	_Label_958
	.word	-46004
	.word	4
	.word	_Label_959
	.word	-46008
	.word	4
	.word	_Label_960
	.word	-46012
	.word	4
	.word	_Label_961
	.word	-46016
	.word	4
	.word	_Label_962
	.word	-46020
	.word	4
	.word	_Label_963
	.word	-46024
	.word	4
	.word	_Label_964
	.word	-46028
	.word	4
	.word	_Label_965
	.word	-46032
	.word	4
	.word	0
_Label_908:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_909:
	.ascii	"Pself\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_965:
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
_Label_1934:
	push	r0
	sub	r1,1,r1
	bne	_Label_1934
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
!   _temp_966 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_966  sizeInBytes=4
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
!   _temp_971 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_972 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_971  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_967:
!   Perform the FOR-LOOP termination test
!   if i > _temp_972 then goto _Label_970		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_970
_Label_968:
	mov	785,r13		! source line 785
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_973 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_973  sizeInBytes=4
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
!   _temp_974 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_976 = &threadTable
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_976 [i ] into _temp_977
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
!   _temp_975 = _temp_977		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CA",r10
	call	_function_135_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_969:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_967
! END FOR
_Label_970:
! CALL STATEMENT...
!   _temp_978 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_978  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_979 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_980 = &freeList
	set	41720,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_979  sizeInBytes=4
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
	.word	_Label_981
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_983
	.word	-12
	.word	4
	.word	_Label_984
	.word	-16
	.word	4
	.word	_Label_985
	.word	-20
	.word	4
	.word	_Label_986
	.word	-24
	.word	4
	.word	_Label_987
	.word	-28
	.word	4
	.word	_Label_988
	.word	-32
	.word	4
	.word	_Label_989
	.word	-36
	.word	4
	.word	_Label_990
	.word	-40
	.word	4
	.word	_Label_991
	.word	-44
	.word	4
	.word	_Label_992
	.word	-48
	.word	4
	.word	_Label_993
	.word	-52
	.word	4
	.word	_Label_994
	.word	-56
	.word	4
	.word	_Label_995
	.word	-60
	.word	4
	.word	0
_Label_981:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_982:
	.ascii	"Pself\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_994:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_995:
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
_Label_1935:
	push	r0
	sub	r1,1,r1
	bne	_Label_1935
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
!   _temp_996 = &threadManLock
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
!   _temp_1000 = &freeList
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
!   Retrieve Result: targetName=_temp_999  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1001 = _temp_999 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1001 then goto _Label_998 else goto _Label_997
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_997
	jmp	_Label_998
_Label_997:
! THEN...
	mov	811,r13		! source line 811
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0SE",r10
!   _temp_1002 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   _temp_1003 = &nextCt
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-40]
!   _temp_1004 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   _temp_1005 = &threadBecameFree
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1002  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1003  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1004  sizeInBytes=4
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
_Label_998:
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1006 = &freeList
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
!   _temp_1007 = p + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1007 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1009		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	818,r13		! source line 818
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_1010 = &nextSem
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
	jmp	_Label_1011
_Label_1009:
! ELSE...
	mov	820,r13		! source line 820
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_1012 = &threadManLock
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
_Label_1011:
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
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	_Label_1017
	.word	-24
	.word	4
	.word	_Label_1018
	.word	-28
	.word	4
	.word	_Label_1019
	.word	-32
	.word	4
	.word	_Label_1020
	.word	-36
	.word	4
	.word	_Label_1021
	.word	-40
	.word	4
	.word	_Label_1022
	.word	-44
	.word	4
	.word	_Label_1023
	.word	-9
	.word	1
	.word	_Label_1024
	.word	-48
	.word	4
	.word	_Label_1025
	.word	-10
	.word	1
	.word	_Label_1026
	.word	-52
	.word	4
	.word	_Label_1027
	.word	-56
	.word	4
	.word	0
_Label_1013:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1023:
	.byte	'C'
	.ascii	"_temp_1001\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1025:
	.byte	'C'
	.ascii	"_temp_999\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1027:
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
_Label_1936:
	push	r0
	sub	r1,1,r1
	bne	_Label_1936
	mov	827,r13		! source line 827
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0SE",r10
!   _temp_1028 = &threadManLock
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
!   _temp_1029 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1029 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0SE",r10
!   _temp_1030 = &freeList
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
!   _temp_1031 = &nextCt
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   _temp_1032 = &nextSem
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   _temp_1033 = &threadBecameFree
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1031  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1032  sizeInBytes=4
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
!   if nextCt <= 0 then goto _Label_1035		(int)
	load	[r14+8],r1
	load	[r1+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	838,r13		! source line 838
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
!   _temp_1036 = &nextSem
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
	jmp	_Label_1037
_Label_1035:
! ELSE...
	mov	840,r13		! source line 840
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1038 = &threadManLock
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
_Label_1037:
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
	.word	_Label_1039
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	12
	.word	4
	.word	_Label_1042
	.word	-12
	.word	4
	.word	_Label_1043
	.word	-16
	.word	4
	.word	_Label_1044
	.word	-20
	.word	4
	.word	_Label_1045
	.word	-24
	.word	4
	.word	_Label_1046
	.word	-28
	.word	4
	.word	_Label_1047
	.word	-32
	.word	4
	.word	_Label_1048
	.word	-36
	.word	4
	.word	_Label_1049
	.word	-40
	.word	4
	.word	0
_Label_1039:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1050
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1050:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1051
	.word	_sourceFileName
	.word	229		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1051:
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
_Label_1937:
	push	r0
	sub	r1,1,r1
	bne	_Label_1937
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
_Label_1938:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1938
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_1053 = &addrSpace
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
	.word	_Label_1054
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1055
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1056
	.word	-12
	.word	4
	.word	_Label_1057
	.word	-16
	.word	4
	.word	0
_Label_1054:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1055:
	.ascii	"Pself\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1052\0"
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
_Label_1939:
	push	r0
	sub	r1,1,r1
	bne	_Label_1939
	mov	868,r13		! source line 868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1058) then goto _runtimeErrorNullPointer
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
!   _temp_1059 = &addrSpace
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
!   _temp_1060 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
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
	.word	_Label_1061
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1063
	.word	-12
	.word	4
	.word	_Label_1064
	.word	-16
	.word	4
	.word	_Label_1065
	.word	-20
	.word	4
	.word	0
_Label_1061:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1062:
	.ascii	"Pself\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1058\0"
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
_Label_1940:
	push	r0
	sub	r1,1,r1
	bne	_Label_1940
	mov	891,r13		! source line 891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1066 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1068 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
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
!   _temp_1069 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1071		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1071
!	jmp	_Label_1070
_Label_1070:
! THEN...
	mov	901,r13		! source line 901
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1072 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1073
_Label_1071:
! ELSE...
	mov	902,r13		! source line 902
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1075		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1075
!	jmp	_Label_1074
_Label_1074:
! THEN...
	mov	903,r13		! source line 903
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1076 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1077
_Label_1075:
! ELSE...
	mov	904,r13		! source line 904
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1079		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1079
!	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	905,r13		! source line 905
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1080 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1081
_Label_1079:
! ELSE...
	mov	907,r13		! source line 907
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1082 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
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
_Label_1081:
! END IF...
_Label_1077:
! END IF...
_Label_1073:
! CALL STATEMENT...
!   _temp_1083 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
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
!   _temp_1084 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
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
	.word	_Label_1085
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-24
	.word	4
	.word	_Label_1091
	.word	-28
	.word	4
	.word	_Label_1092
	.word	-32
	.word	4
	.word	_Label_1093
	.word	-36
	.word	4
	.word	_Label_1094
	.word	-40
	.word	4
	.word	_Label_1095
	.word	-44
	.word	4
	.word	_Label_1096
	.word	-48
	.word	4
	.word	0
_Label_1085:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1086:
	.ascii	"Pself\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1097
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1097:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1098
	.word	_sourceFileName
	.word	249		! line number
	.word	1352		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1098:
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
_Label_1941:
	push	r0
	sub	r1,1,r1
	bne	_Label_1941
	mov	924,r13		! source line 924
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   _temp_1099 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1476]
!   NEW ARRAY Constructor...
!   _temp_1101 = &_temp_1100
	add	r14,-1472,r1
	store	r1,[r14+-228]
!   _temp_1101 = _temp_1101 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-228]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1103 = zeros  (sizeInBytes=124)
	add	r14,-220,r4
	mov	31,r3
_Label_1942:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1942
!   _temp_1103 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-220]
	mov	10,r1
	store	r1,[r14+-224]
_Label_1105:
!   Data Move: *_temp_1101 = _temp_1103  (sizeInBytes=124)
	add	r14,-220,r5
	load	[r14+-228],r4
	mov	31,r3
_Label_1943:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1943
!   _temp_1101 = _temp_1101 + 124
	load	[r14+-228],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   _temp_1102 = _temp_1102 + -1
	load	[r14+-224],r1
	add	r1,-1,r1
	store	r1,[r14+-224]
!   if intNotZero (_temp_1102) then goto _Label_1105
	load	[r14+-224],r1
	cmp	r1,r0
	bne	_Label_1105
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1472]
!   _temp_1106 = &_temp_1100
	add	r14,-1472,r1
	store	r1,[r14+-92]
!   make sure array has size 10
	load	[r14+-1476],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1944
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1944:
!   make sure array has size 10
	load	[r14+-92],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1099 = *_temp_1106  (sizeInBytes=1244)
	load	[r14+-92],r5
	load	[r14+-1476],r4
	mov	311,r3
_Label_1945:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1945
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
!   _temp_1108 = &processManagerLock
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
_Label_1946:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1946
!   aProcessBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1110 = &aProcessBecameFree
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
!   _temp_1113 = &aProcessDied
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
!   _temp_1115 = &nextSem
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
!   _temp_1120 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1121 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1120  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1480]
_Label_1116:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1121 then goto _Label_1119		
	load	[r14+-1480],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1119
_Label_1117:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_1122 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1122 [i ] into _temp_1123
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
!   _temp_1125 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1125 [i ] into _temp_1126
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
!   _temp_1124 = _temp_1126		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1127 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1124  sizeInBytes=4
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
_Label_1118:
!   i = i + 1
	load	[r14+-1480],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1480]
	jmp	_Label_1116
! END FOR
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   _temp_1128 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1128 [0 ] into _temp_1129
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
!   _temp_1130 = _temp_1129 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1130  (sizeInBytes=4)
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
	.word	_Label_1131
	.word	4		! total size of parameters
	.word	1480		! frame size = 1480
	.word	_Label_1132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1133
	.word	-12
	.word	4
	.word	_Label_1134
	.word	-16
	.word	4
	.word	_Label_1135
	.word	-20
	.word	4
	.word	_Label_1136
	.word	-24
	.word	4
	.word	_Label_1137
	.word	-28
	.word	4
	.word	_Label_1138
	.word	-32
	.word	4
	.word	_Label_1139
	.word	-36
	.word	4
	.word	_Label_1140
	.word	-40
	.word	4
	.word	_Label_1141
	.word	-44
	.word	4
	.word	_Label_1142
	.word	-48
	.word	4
	.word	_Label_1143
	.word	-52
	.word	4
	.word	_Label_1144
	.word	-56
	.word	4
	.word	_Label_1145
	.word	-60
	.word	4
	.word	_Label_1146
	.word	-64
	.word	4
	.word	_Label_1147
	.word	-68
	.word	4
	.word	_Label_1148
	.word	-72
	.word	4
	.word	_Label_1149
	.word	-76
	.word	4
	.word	_Label_1150
	.word	-80
	.word	4
	.word	_Label_1151
	.word	-84
	.word	4
	.word	_Label_1152
	.word	-88
	.word	4
	.word	_Label_1153
	.word	-92
	.word	4
	.word	_Label_1154
	.word	-96
	.word	4
	.word	_Label_1155
	.word	-220
	.word	124
	.word	_Label_1156
	.word	-224
	.word	4
	.word	_Label_1157
	.word	-228
	.word	4
	.word	_Label_1158
	.word	-1472
	.word	1244
	.word	_Label_1159
	.word	-1476
	.word	4
	.word	_Label_1160
	.word	-1480
	.word	4
	.word	0
_Label_1131:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1132:
	.ascii	"Pself\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1160:
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
_Label_1947:
	push	r0
	sub	r1,1,r1
	bne	_Label_1947
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
!   _temp_1161 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
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
!   _temp_1166 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1167 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1166  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1162:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1167 then goto _Label_1165		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1165
_Label_1163:
	mov	966,r13		! source line 966
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1168 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
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
!   _temp_1169 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1170 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1170 [i ] into _temp_1171
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
_Label_1164:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1162
! END FOR
_Label_1165:
! CALL STATEMENT...
!   _temp_1172 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1173 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1174 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1173  sizeInBytes=4
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
	.word	_Label_1175
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1177
	.word	-12
	.word	4
	.word	_Label_1178
	.word	-16
	.word	4
	.word	_Label_1179
	.word	-20
	.word	4
	.word	_Label_1180
	.word	-24
	.word	4
	.word	_Label_1181
	.word	-28
	.word	4
	.word	_Label_1182
	.word	-32
	.word	4
	.word	_Label_1183
	.word	-36
	.word	4
	.word	_Label_1184
	.word	-40
	.word	4
	.word	_Label_1185
	.word	-44
	.word	4
	.word	_Label_1186
	.word	-48
	.word	4
	.word	_Label_1187
	.word	-52
	.word	4
	.word	_Label_1188
	.word	-56
	.word	4
	.word	0
_Label_1175:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1176:
	.ascii	"Pself\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1188:
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
_Label_1948:
	push	r0
	sub	r1,1,r1
	bne	_Label_1948
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
!   _temp_1189 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
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
!   _temp_1194 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1195 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1194  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1190:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1195 then goto _Label_1193		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1193
_Label_1191:
	mov	989,r13		! source line 989
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1196 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
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
!   _temp_1197 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1197 [i ] into _temp_1198
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
_Label_1192:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1190
! END FOR
_Label_1193:
! CALL STATEMENT...
!   _temp_1199 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1200 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1201 = &freeList
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1200  sizeInBytes=4
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
	.word	_Label_1202
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1204
	.word	-12
	.word	4
	.word	_Label_1205
	.word	-16
	.word	4
	.word	_Label_1206
	.word	-20
	.word	4
	.word	_Label_1207
	.word	-24
	.word	4
	.word	_Label_1208
	.word	-28
	.word	4
	.word	_Label_1209
	.word	-32
	.word	4
	.word	_Label_1210
	.word	-36
	.word	4
	.word	_Label_1211
	.word	-40
	.word	4
	.word	_Label_1212
	.word	-44
	.word	4
	.word	_Label_1213
	.word	-48
	.word	4
	.word	_Label_1214
	.word	-52
	.word	4
	.word	0
_Label_1202:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1203:
	.ascii	"Pself\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1213:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1214:
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
_Label_1949:
	push	r0
	sub	r1,1,r1
	bne	_Label_1949
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
!   _temp_1215 = &processManagerLock
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
!   _temp_1219 = &freeList
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
!   Retrieve Result: targetName=_temp_1218  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1220 = _temp_1218 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1220 then goto _Label_1217 else goto _Label_1216
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1216
	jmp	_Label_1217
_Label_1216:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1221 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1222 = &nextCt
	load	[r14+8],r1
	add	r1,1328,r1
	store	r1,[r14+-56]
!   _temp_1223 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-52]
!   _temp_1224 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1221  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1222  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1223  sizeInBytes=4
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
_Label_1217:
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1225 = &freeList
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
!   _temp_1226 = p + 20
	load	[r14+-72],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1226 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0IF",r10
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_1230 = &freeList
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
!   Retrieve Result: targetName=_temp_1229  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1231 = _temp_1229 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1231 then goto _Label_1228 else goto _Label_1227
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1227
	jmp	_Label_1228
_Label_1227:
! THEN...
	mov	1020,r13		! source line 1020
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0AS",r10
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1232 = &freeList
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
!   _temp_1233 = t + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: nextPid = *_temp_1233  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1234 = &freeList
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
	jmp	_Label_1235
_Label_1228:
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
_Label_1235:
! IF STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0IF",r10
!   if nextCt <= 0 then goto _Label_1237		(int)
	load	[r14+8],r1
	load	[r1+1328],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1237
!	jmp	_Label_1236
_Label_1236:
! THEN...
	mov	1028,r13		! source line 1028
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1238 = &nextSem
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
	jmp	_Label_1239
_Label_1237:
! ELSE...
	mov	1030,r13		! source line 1030
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1240 = &processManagerLock
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
_Label_1239:
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
	.word	_Label_1241
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_1242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1243
	.word	-16
	.word	4
	.word	_Label_1244
	.word	-20
	.word	4
	.word	_Label_1245
	.word	-24
	.word	4
	.word	_Label_1246
	.word	-28
	.word	4
	.word	_Label_1247
	.word	-32
	.word	4
	.word	_Label_1248
	.word	-9
	.word	1
	.word	_Label_1249
	.word	-36
	.word	4
	.word	_Label_1250
	.word	-10
	.word	1
	.word	_Label_1251
	.word	-40
	.word	4
	.word	_Label_1252
	.word	-44
	.word	4
	.word	_Label_1253
	.word	-48
	.word	4
	.word	_Label_1254
	.word	-52
	.word	4
	.word	_Label_1255
	.word	-56
	.word	4
	.word	_Label_1256
	.word	-60
	.word	4
	.word	_Label_1257
	.word	-11
	.word	1
	.word	_Label_1258
	.word	-64
	.word	4
	.word	_Label_1259
	.word	-12
	.word	1
	.word	_Label_1260
	.word	-68
	.word	4
	.word	_Label_1261
	.word	-72
	.word	4
	.word	_Label_1262
	.word	-76
	.word	4
	.word	0
_Label_1241:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1242:
	.ascii	"Pself\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1248:
	.byte	'C'
	.ascii	"_temp_1231\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1229\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1257:
	.byte	'C'
	.ascii	"_temp_1220\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1259:
	.byte	'C'
	.ascii	"_temp_1218\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1261:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1262:
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
_Label_1950:
	push	r0
	sub	r1,1,r1
	bne	_Label_1950
	mov	1038,r13		! source line 1038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1263 = &processManagerLock
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
!   _temp_1267 = &freeList
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
!   Retrieve Result: targetName=_temp_1266  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1268 = _temp_1266 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1268 then goto _Label_1265 else goto _Label_1264
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1264
	jmp	_Label_1265
_Label_1264:
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
!   _temp_1269 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Data Move: nextPid = *_temp_1269  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1324]
! END IF...
_Label_1265:
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1270 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1270 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1271 = &freeList
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
!   _temp_1272 = &nextCt
	load	[r14+8],r1
	add	r1,1328,r1
	store	r1,[r14+-32]
!   _temp_1273 = &nextSem
	load	[r14+8],r1
	add	r1,1332,r1
	store	r1,[r14+-28]
!   _temp_1274 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1273  sizeInBytes=4
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
!   if nextCt <= 0 then goto _Label_1276		(int)
	load	[r14+8],r1
	load	[r1+1328],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1276
!	jmp	_Label_1275
_Label_1275:
! THEN...
	mov	1052,r13		! source line 1052
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1277 = &nextSem
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
	jmp	_Label_1278
_Label_1276:
! ELSE...
	mov	1054,r13		! source line 1054
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1279 = &processManagerLock
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
_Label_1278:
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
	.word	_Label_1280
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1282
	.word	12
	.word	4
	.word	_Label_1283
	.word	-16
	.word	4
	.word	_Label_1284
	.word	-20
	.word	4
	.word	_Label_1285
	.word	-24
	.word	4
	.word	_Label_1286
	.word	-28
	.word	4
	.word	_Label_1287
	.word	-32
	.word	4
	.word	_Label_1288
	.word	-36
	.word	4
	.word	_Label_1289
	.word	-40
	.word	4
	.word	_Label_1290
	.word	-44
	.word	4
	.word	_Label_1291
	.word	-9
	.word	1
	.word	_Label_1292
	.word	-48
	.word	4
	.word	_Label_1293
	.word	-10
	.word	1
	.word	_Label_1294
	.word	-52
	.word	4
	.word	0
_Label_1280:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1281:
	.ascii	"Pself\0"
	.align
_Label_1282:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1291:
	.byte	'C'
	.ascii	"_temp_1268\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1293:
	.byte	'C'
	.ascii	"_temp_1266\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1295
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1295:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1296
	.word	_sourceFileName
	.word	274		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1296:
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
	mov	14,r1
_Label_1951:
	push	r0
	sub	r1,1,r1
	bne	_Label_1951
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1297 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-52],r1
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
!   _temp_1299 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
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
!   _temp_1301 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1303 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
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
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1308 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1309 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1308  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1304:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1309 then goto _Label_1307		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1307
_Label_1305:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1312 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1312) then goto _Label_1311
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1311
!	jmp	_Label_1310
_Label_1310:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1313 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1111,r13		! source line 1111
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1311:
!   Increment the FOR-LOOP index variable and jump back
_Label_1306:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1304
! END FOR
_Label_1307:
! RETURN STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1314
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1316
	.word	-12
	.word	4
	.word	_Label_1317
	.word	-16
	.word	4
	.word	_Label_1318
	.word	-20
	.word	4
	.word	_Label_1319
	.word	-24
	.word	4
	.word	_Label_1320
	.word	-28
	.word	4
	.word	_Label_1321
	.word	-32
	.word	4
	.word	_Label_1322
	.word	-36
	.word	4
	.word	_Label_1323
	.word	-40
	.word	4
	.word	_Label_1324
	.word	-44
	.word	4
	.word	_Label_1325
	.word	-48
	.word	4
	.word	_Label_1326
	.word	-52
	.word	4
	.word	_Label_1327
	.word	-56
	.word	4
	.word	0
_Label_1314:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1315:
	.ascii	"Pself\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1327:
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
_Label_1952:
	push	r0
	sub	r1,1,r1
	bne	_Label_1952
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1328 = &frameManagerLock
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
!   _temp_1329 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1330 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1331 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1332 = &framesInUse
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
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1333 = &frameManagerLock
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
	mov	1127,r13		! source line 1127
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
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1336
	.word	-12
	.word	4
	.word	_Label_1337
	.word	-16
	.word	4
	.word	_Label_1338
	.word	-20
	.word	4
	.word	_Label_1339
	.word	-24
	.word	4
	.word	_Label_1340
	.word	-28
	.word	4
	.word	_Label_1341
	.word	-32
	.word	4
	.word	0
_Label_1334:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1335:
	.ascii	"Pself\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1328\0"
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
_Label_1953:
	push	r0
	sub	r1,1,r1
	bne	_Label_1953
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1342 = &frameManagerLock
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
	mov	1143,r13		! source line 1143
	mov	"\0\0WH",r10
_Label_1343:
!   if numberFreeFrames >= 1 then goto _Label_1345		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1345
!	jmp	_Label_1344
_Label_1344:
	mov	1143,r13		! source line 1143
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1346 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1347 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1346  sizeInBytes=4
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
	jmp	_Label_1343
_Label_1345:
! ASSIGNMENT STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1348 = &framesInUse
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
	mov	1149,r13		! source line 1149
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1349 = &frameManagerLock
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
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
!   _temp_1350 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1350		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1157,r13		! source line 1157
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
	.word	_Label_1351
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1353
	.word	-12
	.word	4
	.word	_Label_1354
	.word	-16
	.word	4
	.word	_Label_1355
	.word	-20
	.word	4
	.word	_Label_1356
	.word	-24
	.word	4
	.word	_Label_1357
	.word	-28
	.word	4
	.word	_Label_1358
	.word	-32
	.word	4
	.word	_Label_1359
	.word	-36
	.word	4
	.word	_Label_1360
	.word	-40
	.word	4
	.word	0
_Label_1351:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1352:
	.ascii	"Pself\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1359:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1360:
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
	mov	14,r1
_Label_1954:
	push	r0
	sub	r1,1,r1
	bne	_Label_1954
	mov	1162,r13		! source line 1162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1361 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0WH",r10
_Label_1362:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1364		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1364
!	jmp	_Label_1363
_Label_1363:
	mov	1166,r13		! source line 1166
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1365 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1366 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1365  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1362
_Label_1364:
! FOR STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1371 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1372 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1371  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1367:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1372 then goto _Label_1370		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1370
_Label_1368:
	mov	1169,r13		! source line 1169
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_1373 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_1374 = frameAddr * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1374		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
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
_Label_1369:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1367
! END FOR
_Label_1370:
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
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
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1375 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1375 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1376 = &frameManagerLock
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
	mov	1176,r13		! source line 1176
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1377
	.word	12		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1378
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1379
	.word	12
	.word	4
	.word	_Label_1380
	.word	16
	.word	4
	.word	_Label_1381
	.word	-12
	.word	4
	.word	_Label_1382
	.word	-16
	.word	4
	.word	_Label_1383
	.word	-20
	.word	4
	.word	_Label_1384
	.word	-24
	.word	4
	.word	_Label_1385
	.word	-28
	.word	4
	.word	_Label_1386
	.word	-32
	.word	4
	.word	_Label_1387
	.word	-36
	.word	4
	.word	_Label_1388
	.word	-40
	.word	4
	.word	_Label_1389
	.word	-44
	.word	4
	.word	_Label_1390
	.word	-48
	.word	4
	.word	_Label_1391
	.word	-52
	.word	4
	.word	0
_Label_1377:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1378:
	.ascii	"Pself\0"
	.align
_Label_1379:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1380:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1391:
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
_Label_1955:
	push	r0
	sub	r1,1,r1
	bne	_Label_1955
	mov	1181,r13		! source line 1181
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1392 = &frameManagerLock
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
	mov	1185,r13		! source line 1185
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1397 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1399 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1398 = _temp_1399 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1397  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1393:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1398 then goto _Label_1396		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1396
_Label_1394:
	mov	1185,r13		! source line 1185
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
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
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   _temp_1401 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1401 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1402 = &framesInUse
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
_Label_1395:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1393
! END FOR
_Label_1396:
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1403 = *_temp_1404  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1403		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_1405 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1406 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1405  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1408 = &frameManagerLock
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
	mov	1193,r13		! source line 1193
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
	.word	_Label_1409
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1411
	.word	12
	.word	4
	.word	_Label_1412
	.word	-12
	.word	4
	.word	_Label_1413
	.word	-16
	.word	4
	.word	_Label_1414
	.word	-20
	.word	4
	.word	_Label_1415
	.word	-24
	.word	4
	.word	_Label_1416
	.word	-28
	.word	4
	.word	_Label_1417
	.word	-32
	.word	4
	.word	_Label_1418
	.word	-36
	.word	4
	.word	_Label_1419
	.word	-40
	.word	4
	.word	_Label_1420
	.word	-44
	.word	4
	.word	_Label_1421
	.word	-48
	.word	4
	.word	_Label_1422
	.word	-52
	.word	4
	.word	_Label_1423
	.word	-56
	.word	4
	.word	_Label_1424
	.word	-60
	.word	4
	.word	_Label_1425
	.word	-64
	.word	4
	.word	_Label_1426
	.word	-68
	.word	4
	.word	_Label_1427
	.word	-72
	.word	4
	.word	0
_Label_1409:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1410:
	.ascii	"Pself\0"
	.align
_Label_1411:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1425:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1427:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1428
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
_Label_1428:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1429
	.word	_sourceFileName
	.word	293		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1429:
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
_Label_1956:
	push	r0
	sub	r1,1,r1
	bne	_Label_1956
	mov	1205,r13		! source line 1205
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   _temp_1430 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1432 = &_temp_1431
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1432 = _temp_1432 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1434:
!   Data Move: *_temp_1432 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1432 = _temp_1432 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1433 = _temp_1433 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1433) then goto _Label_1434
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1434
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1435 = &_temp_1431
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1957
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1957:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1430 = *_temp_1435  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1958:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1958
! RETURN STATEMENT...
	mov	1210,r13		! source line 1210
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-104
	.word	84
	.word	_Label_1442
	.word	-108
	.word	4
	.word	0
_Label_1436:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1430\0"
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
_Label_1959:
	push	r0
	sub	r1,1,r1
	bne	_Label_1959
	mov	1215,r13		! source line 1215
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1443 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1444 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1449 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1450 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1449  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1445:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1450 then goto _Label_1448		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1448
_Label_1446:
	mov	1222,r13		! source line 1222
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1451 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1451  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1453 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1453 [i ] into _temp_1454
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
!   _temp_1452 = _temp_1454		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1455 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1457 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1457 [i ] into _temp_1458
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
!   Data Move: _temp_1456 = *_temp_1458  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1456  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1459 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1460 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1461 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1463) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1462  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1464 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1468) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1467  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1467) then goto _Label_1466
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1466
!	jmp	_Label_1465
_Label_1465:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1470) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1469  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1471
_Label_1466:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1472 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1471:
! CALL STATEMENT...
!   _temp_1473 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0IF",r10
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1476) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1474 else goto _Label_1475
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1475
	jmp	_Label_1474
_Label_1474:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1477 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1478
_Label_1475:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1479 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1478:
! CALL STATEMENT...
!   _temp_1480 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1481 else goto _Label_1482
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1482
	jmp	_Label_1481
_Label_1481:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1484 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1485
_Label_1482:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1486 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1485:
! CALL STATEMENT...
!   _temp_1487 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1490) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1488 else goto _Label_1489
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1489
	jmp	_Label_1488
_Label_1488:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1491 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1492
_Label_1489:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1493 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1492:
! CALL STATEMENT...
!   _temp_1494 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0IF",r10
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1497) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1495 else goto _Label_1496
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1496
	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	1257,r13		! source line 1257
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1499
_Label_1496:
! ELSE...
	mov	1259,r13		! source line 1259
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1500 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1499:
! CALL STATEMENT...
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1447:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1445
! END FOR
_Label_1448:
! RETURN STATEMENT...
	mov	1222,r13		! source line 1222
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
	.word	_Label_1501
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	-12
	.word	4
	.word	_Label_1504
	.word	-16
	.word	4
	.word	_Label_1505
	.word	-20
	.word	4
	.word	_Label_1506
	.word	-24
	.word	4
	.word	_Label_1507
	.word	-28
	.word	4
	.word	_Label_1508
	.word	-32
	.word	4
	.word	_Label_1509
	.word	-36
	.word	4
	.word	_Label_1510
	.word	-40
	.word	4
	.word	_Label_1511
	.word	-44
	.word	4
	.word	_Label_1512
	.word	-48
	.word	4
	.word	_Label_1513
	.word	-52
	.word	4
	.word	_Label_1514
	.word	-56
	.word	4
	.word	_Label_1515
	.word	-60
	.word	4
	.word	_Label_1516
	.word	-64
	.word	4
	.word	_Label_1517
	.word	-68
	.word	4
	.word	_Label_1518
	.word	-72
	.word	4
	.word	_Label_1519
	.word	-76
	.word	4
	.word	_Label_1520
	.word	-80
	.word	4
	.word	_Label_1521
	.word	-84
	.word	4
	.word	_Label_1522
	.word	-88
	.word	4
	.word	_Label_1523
	.word	-92
	.word	4
	.word	_Label_1524
	.word	-96
	.word	4
	.word	_Label_1525
	.word	-100
	.word	4
	.word	_Label_1526
	.word	-104
	.word	4
	.word	_Label_1527
	.word	-108
	.word	4
	.word	_Label_1528
	.word	-112
	.word	4
	.word	_Label_1529
	.word	-116
	.word	4
	.word	_Label_1530
	.word	-120
	.word	4
	.word	_Label_1531
	.word	-124
	.word	4
	.word	_Label_1532
	.word	-128
	.word	4
	.word	_Label_1533
	.word	-132
	.word	4
	.word	_Label_1534
	.word	-136
	.word	4
	.word	_Label_1535
	.word	-140
	.word	4
	.word	_Label_1536
	.word	-144
	.word	4
	.word	_Label_1537
	.word	-148
	.word	4
	.word	_Label_1538
	.word	-152
	.word	4
	.word	_Label_1539
	.word	-156
	.word	4
	.word	_Label_1540
	.word	-160
	.word	4
	.word	_Label_1541
	.word	-164
	.word	4
	.word	_Label_1542
	.word	-168
	.word	4
	.word	0
_Label_1501:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1542:
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
_Label_1960:
	push	r0
	sub	r1,1,r1
	bne	_Label_1960
	mov	1267,r13		! source line 1267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0RE",r10
!   _temp_1545 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1545 [entry ] into _temp_1546
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
!   Data Move: _temp_1544 = *_temp_1546  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1543 = _temp_1544 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1543  (sizeInBytes=4)
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
	.word	_Label_1547
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1548
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1549
	.word	12
	.word	4
	.word	_Label_1550
	.word	-12
	.word	4
	.word	_Label_1551
	.word	-16
	.word	4
	.word	_Label_1552
	.word	-20
	.word	4
	.word	_Label_1553
	.word	-24
	.word	4
	.word	0
_Label_1547:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1548:
	.ascii	"Pself\0"
	.align
_Label_1549:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1543\0"
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
_Label_1961:
	push	r0
	sub	r1,1,r1
	bne	_Label_1961
	mov	1277,r13		! source line 1277
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1281,r13		! source line 1281
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
!   _temp_1554 = _temp_1555 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
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
	.ascii	"ExtractUndefinedBits\0"
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
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1962:
	push	r0
	sub	r1,1,r1
	bne	_Label_1962
	mov	1286,r13		! source line 1286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   _temp_1565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1565 [entry ] into _temp_1566
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
!   _temp_1570 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1570 [entry ] into _temp_1571
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
!   Data Move: _temp_1569 = *_temp_1571  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1568 = _temp_1569 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1567 = _temp_1568 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1566 = _temp_1567  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
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
	.word	_Label_1572
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1574
	.word	12
	.word	4
	.word	_Label_1575
	.word	16
	.word	4
	.word	_Label_1576
	.word	-12
	.word	4
	.word	_Label_1577
	.word	-16
	.word	4
	.word	_Label_1578
	.word	-20
	.word	4
	.word	_Label_1579
	.word	-24
	.word	4
	.word	_Label_1580
	.word	-28
	.word	4
	.word	_Label_1581
	.word	-32
	.word	4
	.word	_Label_1582
	.word	-36
	.word	4
	.word	0
_Label_1572:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1573:
	.ascii	"Pself\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1565\0"
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
_Label_1963:
	push	r0
	sub	r1,1,r1
	bne	_Label_1963
	mov	1296,r13		! source line 1296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0RE",r10
!   _temp_1586 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1586 [entry ] into _temp_1587
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
!   Data Move: _temp_1585 = *_temp_1587  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1584 = _temp_1585 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1584) then goto _Label_1588
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1588
!   _temp_1583 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1589
_Label_1588:
!   _temp_1583 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1589:
!   ReturnResult: _temp_1583  (sizeInBytes=1)
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
	.word	_Label_1590
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	-16
	.word	4
	.word	_Label_1594
	.word	-20
	.word	4
	.word	_Label_1595
	.word	-24
	.word	4
	.word	_Label_1596
	.word	-28
	.word	4
	.word	_Label_1597
	.word	-9
	.word	1
	.word	0
_Label_1590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1597:
	.byte	'C'
	.ascii	"_temp_1583\0"
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
_Label_1964:
	push	r0
	sub	r1,1,r1
	bne	_Label_1964
	mov	1305,r13		! source line 1305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0RE",r10
!   _temp_1601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1601 [entry ] into _temp_1602
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
!   Data Move: _temp_1600 = *_temp_1602  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1599 = _temp_1600 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1599) then goto _Label_1603
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1603
!   _temp_1598 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1604
_Label_1603:
!   _temp_1598 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1604:
!   ReturnResult: _temp_1598  (sizeInBytes=1)
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
	.word	_Label_1605
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	12
	.word	4
	.word	_Label_1608
	.word	-16
	.word	4
	.word	_Label_1609
	.word	-20
	.word	4
	.word	_Label_1610
	.word	-24
	.word	4
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-9
	.word	1
	.word	0
_Label_1605:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1612:
	.byte	'C'
	.ascii	"_temp_1598\0"
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
_Label_1965:
	push	r0
	sub	r1,1,r1
	bne	_Label_1965
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0RE",r10
!   _temp_1616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1616 [entry ] into _temp_1617
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
!   Data Move: _temp_1615 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1614 = _temp_1615 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1614) then goto _Label_1618
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1618
!   _temp_1613 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1619
_Label_1618:
!   _temp_1613 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1619:
!   ReturnResult: _temp_1613  (sizeInBytes=1)
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
	.word	_Label_1620
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	12
	.word	4
	.word	_Label_1623
	.word	-16
	.word	4
	.word	_Label_1624
	.word	-20
	.word	4
	.word	_Label_1625
	.word	-24
	.word	4
	.word	_Label_1626
	.word	-28
	.word	4
	.word	_Label_1627
	.word	-9
	.word	1
	.word	0
_Label_1620:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1627:
	.byte	'C'
	.ascii	"_temp_1613\0"
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
_Label_1966:
	push	r0
	sub	r1,1,r1
	bne	_Label_1966
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0RE",r10
!   _temp_1631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1631 [entry ] into _temp_1632
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
!   Data Move: _temp_1630 = *_temp_1632  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1629 = _temp_1630 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1629) then goto _Label_1633
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1633
!   _temp_1628 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1634
_Label_1633:
!   _temp_1628 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1634:
!   ReturnResult: _temp_1628  (sizeInBytes=1)
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
	.word	_Label_1635
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-24
	.word	4
	.word	_Label_1641
	.word	-28
	.word	4
	.word	_Label_1642
	.word	-9
	.word	1
	.word	0
_Label_1635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1642:
	.byte	'C'
	.ascii	"_temp_1628\0"
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
_Label_1967:
	push	r0
	sub	r1,1,r1
	bne	_Label_1967
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
!   _temp_1643 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1643 [entry ] into _temp_1644
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
!   _temp_1647 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1647 [entry ] into _temp_1648
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
!   Data Move: _temp_1646 = *_temp_1648  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1645 = _temp_1646 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1644 = _temp_1645  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
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
	.word	_Label_1649
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1651
	.word	12
	.word	4
	.word	_Label_1652
	.word	-12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-32
	.word	4
	.word	0
_Label_1649:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1650:
	.ascii	"Pself\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1643\0"
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
_Label_1968:
	push	r0
	sub	r1,1,r1
	bne	_Label_1968
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_1658 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1658 [entry ] into _temp_1659
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
!   _temp_1662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1662 [entry ] into _temp_1663
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
!   Data Move: _temp_1661 = *_temp_1663  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1660 = _temp_1661 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1659 = _temp_1660  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
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
	.word	_Label_1664
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	-12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	0
_Label_1664:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1658\0"
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
_Label_1969:
	push	r0
	sub	r1,1,r1
	bne	_Label_1969
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0AS",r10
!   _temp_1673 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1673 [entry ] into _temp_1674
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
!   _temp_1677 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1677 [entry ] into _temp_1678
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
!   Data Move: _temp_1676 = *_temp_1678  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1675 = _temp_1676 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1674 = _temp_1675  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
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
	.word	_Label_1679
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	-12
	.word	4
	.word	_Label_1683
	.word	-16
	.word	4
	.word	_Label_1684
	.word	-20
	.word	4
	.word	_Label_1685
	.word	-24
	.word	4
	.word	_Label_1686
	.word	-28
	.word	4
	.word	_Label_1687
	.word	-32
	.word	4
	.word	0
_Label_1679:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
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
_Label_1970:
	push	r0
	sub	r1,1,r1
	bne	_Label_1970
	mov	1359,r13		! source line 1359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0AS",r10
!   _temp_1688 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1688 [entry ] into _temp_1689
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
!   _temp_1692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1692 [entry ] into _temp_1693
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
!   Data Move: _temp_1691 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1690 = _temp_1691 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1689 = _temp_1690  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
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
	.word	_Label_1694
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1696
	.word	12
	.word	4
	.word	_Label_1697
	.word	-12
	.word	4
	.word	_Label_1698
	.word	-16
	.word	4
	.word	_Label_1699
	.word	-20
	.word	4
	.word	_Label_1700
	.word	-24
	.word	4
	.word	_Label_1701
	.word	-28
	.word	4
	.word	_Label_1702
	.word	-32
	.word	4
	.word	0
_Label_1694:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1695:
	.ascii	"Pself\0"
	.align
_Label_1696:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1688\0"
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
_Label_1971:
	push	r0
	sub	r1,1,r1
	bne	_Label_1971
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   _temp_1703 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1703 [entry ] into _temp_1704
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
!   _temp_1707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1707 [entry ] into _temp_1708
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
!   Data Move: _temp_1706 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1705 = _temp_1706 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1704 = _temp_1705  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
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
	.word	_Label_1709
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1711
	.word	12
	.word	4
	.word	_Label_1712
	.word	-12
	.word	4
	.word	_Label_1713
	.word	-16
	.word	4
	.word	_Label_1714
	.word	-20
	.word	4
	.word	_Label_1715
	.word	-24
	.word	4
	.word	_Label_1716
	.word	-28
	.word	4
	.word	_Label_1717
	.word	-32
	.word	4
	.word	0
_Label_1709:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1710:
	.ascii	"Pself\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1703\0"
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
_Label_1972:
	push	r0
	sub	r1,1,r1
	bne	_Label_1972
	mov	1377,r13		! source line 1377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   _temp_1718 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1718 [entry ] into _temp_1719
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
!   _temp_1722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1722 [entry ] into _temp_1723
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
!   Data Move: _temp_1721 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1720 = _temp_1721 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1719 = _temp_1720  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
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
	.word	_Label_1724
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1726
	.word	12
	.word	4
	.word	_Label_1727
	.word	-12
	.word	4
	.word	_Label_1728
	.word	-16
	.word	4
	.word	_Label_1729
	.word	-20
	.word	4
	.word	_Label_1730
	.word	-24
	.word	4
	.word	_Label_1731
	.word	-28
	.word	4
	.word	_Label_1732
	.word	-32
	.word	4
	.word	0
_Label_1724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1725:
	.ascii	"Pself\0"
	.align
_Label_1726:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1718\0"
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
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	1386,r13		! source line 1386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   _temp_1733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1733 [entry ] into _temp_1734
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
!   _temp_1737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1737 [entry ] into _temp_1738
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
!   Data Move: _temp_1736 = *_temp_1738  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1735 = _temp_1736 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1734 = _temp_1735  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
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
	.word	_Label_1739
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1741
	.word	12
	.word	4
	.word	_Label_1742
	.word	-12
	.word	4
	.word	_Label_1743
	.word	-16
	.word	4
	.word	_Label_1744
	.word	-20
	.word	4
	.word	_Label_1745
	.word	-24
	.word	4
	.word	_Label_1746
	.word	-28
	.word	4
	.word	_Label_1747
	.word	-32
	.word	4
	.word	0
_Label_1739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1740:
	.ascii	"Pself\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1733\0"
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
_Label_1974:
	push	r0
	sub	r1,1,r1
	bne	_Label_1974
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   _temp_1748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1748 [entry ] into _temp_1749
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
!   _temp_1752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1752 [entry ] into _temp_1753
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
!   Data Move: _temp_1751 = *_temp_1753  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1750 = _temp_1751 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1749 = _temp_1750  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
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
	.word	_Label_1754
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1756
	.word	12
	.word	4
	.word	_Label_1757
	.word	-12
	.word	4
	.word	_Label_1758
	.word	-16
	.word	4
	.word	_Label_1759
	.word	-20
	.word	4
	.word	_Label_1760
	.word	-24
	.word	4
	.word	_Label_1761
	.word	-28
	.word	4
	.word	_Label_1762
	.word	-32
	.word	4
	.word	0
_Label_1754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1755:
	.ascii	"Pself\0"
	.align
_Label_1756:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1748\0"
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
_Label_1975:
	push	r0
	sub	r1,1,r1
	bne	_Label_1975
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1764 [0 ] into _temp_1765
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
!   _temp_1763 = _temp_1765		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1766 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1766  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
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
	.word	_Label_1767
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1768
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1769
	.word	-12
	.word	4
	.word	_Label_1770
	.word	-16
	.word	4
	.word	_Label_1771
	.word	-20
	.word	4
	.word	_Label_1772
	.word	-24
	.word	4
	.word	0
_Label_1767:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1768:
	.ascii	"Pself\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1763\0"
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
_Label_1976:
	push	r0
	sub	r1,1,r1
	bne	_Label_1976
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1773
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1773
	jmp	_Label_1774
_Label_1773:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1775
_Label_1774:
! ELSE...
	mov	1432,r13		! source line 1432
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1777		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1777
!	jmp	_Label_1776
_Label_1776:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1777:
! END IF...
_Label_1775:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
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
	mov	1436,r13		! source line 1436
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
	mov	1439,r13		! source line 1439
	mov	"\0\0WH",r10
_Label_1778:
!	jmp	_Label_1779
_Label_1779:
	mov	1439,r13		! source line 1439
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1782		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1782
!	jmp	_Label_1781
_Label_1781:
! THEN...
	mov	1441,r13		! source line 1441
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1783 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1782:
! IF STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0IF",r10
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1787) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1786  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1786 then goto _Label_1785 else goto _Label_1784
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1784
	jmp	_Label_1785
_Label_1784:
! THEN...
	mov	1445,r13		! source line 1445
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1788 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1788  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1785:
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1790) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1789  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1789 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0WH",r10
_Label_1791:
!   if offset >= 8192 then goto _Label_1793		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1793
!	jmp	_Label_1792
_Label_1792:
	mov	1450,r13		! source line 1450
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1794 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1794  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1796		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1796
!	jmp	_Label_1795
_Label_1795:
! THEN...
	mov	1459,r13		! source line 1459
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1796:
! END WHILE...
	jmp	_Label_1791
_Label_1793:
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1778
_Label_1780:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1797
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1799
	.word	12
	.word	4
	.word	_Label_1800
	.word	16
	.word	4
	.word	_Label_1801
	.word	20
	.word	4
	.word	_Label_1802
	.word	-9
	.word	1
	.word	_Label_1803
	.word	-16
	.word	4
	.word	_Label_1804
	.word	-20
	.word	4
	.word	_Label_1805
	.word	-24
	.word	4
	.word	_Label_1806
	.word	-28
	.word	4
	.word	_Label_1807
	.word	-10
	.word	1
	.word	_Label_1808
	.word	-32
	.word	4
	.word	_Label_1809
	.word	-36
	.word	4
	.word	_Label_1810
	.word	-40
	.word	4
	.word	_Label_1811
	.word	-44
	.word	4
	.word	_Label_1812
	.word	-48
	.word	4
	.word	0
_Label_1797:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1798:
	.ascii	"Pself\0"
	.align
_Label_1799:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1800:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1801:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1802:
	.byte	'C'
	.ascii	"_temp_1794\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1807:
	.byte	'C'
	.ascii	"_temp_1786\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1812:
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
_Label_1977:
	push	r0
	sub	r1,1,r1
	bne	_Label_1977
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1813
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1813
	jmp	_Label_1814
_Label_1813:
! THEN...
	mov	1481,r13		! source line 1481
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1815
_Label_1814:
! ELSE...
	mov	1482,r13		! source line 1482
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1817		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1817
!	jmp	_Label_1816
_Label_1816:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1817:
! END IF...
_Label_1815:
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
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
	mov	1486,r13		! source line 1486
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
	mov	1487,r13		! source line 1487
	mov	"\0\0WH",r10
_Label_1818:
!	jmp	_Label_1819
_Label_1819:
	mov	1487,r13		! source line 1487
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1824		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1824
	jmp	_Label_1821
_Label_1824:
	mov	1489,r13		! source line 1489
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1826) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1825  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1825 then goto _Label_1823 else goto _Label_1821
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1821
	jmp	_Label_1823
_Label_1823:
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1828) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1827  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1827 then goto _Label_1822 else goto _Label_1821
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1821
	jmp	_Label_1822
_Label_1821:
! THEN...
	mov	1491,r13		! source line 1491
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1822:
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
	mov	1493,r13		! source line 1493
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1830) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1829  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1829 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0WH",r10
_Label_1831:
!   if offset >= 8192 then goto _Label_1833		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1833
!	jmp	_Label_1832
_Label_1832:
	mov	1494,r13		! source line 1494
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1834 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1834  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1836		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1836
!	jmp	_Label_1835
_Label_1835:
! THEN...
	mov	1501,r13		! source line 1501
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1836:
! END WHILE...
	jmp	_Label_1831
_Label_1833:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1818
_Label_1820:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1837
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1839
	.word	12
	.word	4
	.word	_Label_1840
	.word	16
	.word	4
	.word	_Label_1841
	.word	20
	.word	4
	.word	_Label_1842
	.word	-9
	.word	1
	.word	_Label_1843
	.word	-16
	.word	4
	.word	_Label_1844
	.word	-20
	.word	4
	.word	_Label_1845
	.word	-24
	.word	4
	.word	_Label_1846
	.word	-10
	.word	1
	.word	_Label_1847
	.word	-28
	.word	4
	.word	_Label_1848
	.word	-11
	.word	1
	.word	_Label_1849
	.word	-32
	.word	4
	.word	_Label_1850
	.word	-36
	.word	4
	.word	_Label_1851
	.word	-40
	.word	4
	.word	_Label_1852
	.word	-44
	.word	4
	.word	0
_Label_1837:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1838:
	.ascii	"Pself\0"
	.align
_Label_1839:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1842:
	.byte	'C'
	.ascii	"_temp_1834\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1846:
	.byte	'C'
	.ascii	"_temp_1827\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1848:
	.byte	'C'
	.ascii	"_temp_1825\0"
	.align
_Label_1849:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1851:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1852:
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
_Label_1978:
	push	r0
	sub	r1,1,r1
	bne	_Label_1978
	mov	1511,r13		! source line 1511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0IF",r10
	mov	1535,r13		! source line 1535
	mov	"\0\0SE",r10
!   _temp_1856 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1857) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1856  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1855  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1855 >= 4 then goto _Label_1854		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1854
!	jmp	_Label_1853
_Label_1853:
! THEN...
	mov	1538,r13		! source line 1538
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1854:
! IF STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1859		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1859
!	jmp	_Label_1858
_Label_1858:
! THEN...
	mov	1543,r13		! source line 1543
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1859:
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
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
	mov	1548,r13		! source line 1548
	mov	"\0\0RE",r10
	mov	1548,r13		! source line 1548
	mov	"\0\0SE",r10
!   _temp_1862 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1861 = _temp_1862 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1863 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1864) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1861  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1863  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1860  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1860  (sizeInBytes=4)
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
	.word	_Label_1865
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1867
	.word	12
	.word	4
	.word	_Label_1868
	.word	16
	.word	4
	.word	_Label_1869
	.word	20
	.word	4
	.word	_Label_1870
	.word	-12
	.word	4
	.word	_Label_1871
	.word	-16
	.word	4
	.word	_Label_1872
	.word	-20
	.word	4
	.word	_Label_1873
	.word	-24
	.word	4
	.word	_Label_1874
	.word	-28
	.word	4
	.word	_Label_1875
	.word	-32
	.word	4
	.word	_Label_1876
	.word	-36
	.word	4
	.word	_Label_1877
	.word	-40
	.word	4
	.word	_Label_1878
	.word	-44
	.word	4
	.word	0
_Label_1865:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1866:
	.ascii	"Pself\0"
	.align
_Label_1867:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1878:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

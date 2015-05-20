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
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
	.export	_Method_P_Kernel_HoareMutex_5
	.export	_Method_P_Kernel_HoareMutex_6
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
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
	.align
! String constants
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_134:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	6			! length
	.ascii	"      "
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
	.word	9			! length
	.ascii	"         "
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
	.word	6			! length
	.ascii	"      "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_114:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_113:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_112:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_111:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_110:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_108:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_101:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_100:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_99:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_98:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_97:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_95:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_94:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_93:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_92:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_91:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_90:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_88:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_78:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_76:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_75:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_74:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_73:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_65:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_64:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_63:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_62:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_61:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_60:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_59:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_58:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_57:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_56:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_54:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_52:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_50:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_44:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_43:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_42:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
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
	set	0x7b189705,r4		! myHashVal = 2065209093
	cmp	r3,r4
	be	_Label_140
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
_Label_140:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_141
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_141
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_141
_Label_141:
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
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_142 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_142  sizeInBytes=4
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
_Label_1911:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1911
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_146 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_147 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_146  sizeInBytes=4
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
!   _temp_148 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_149 = _temp_148 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_149 = 3  (sizeInBytes=4)
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
_Label_1912:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1912
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_151 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_152 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=4
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
!   _temp_153 = _function_139_IdleFunction
	set	_function_139_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_154 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
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
	.word	_Label_155
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_156
	.word	-12
	.word	4
	.word	_Label_157
	.word	-16
	.word	4
	.word	_Label_158
	.word	-20
	.word	4
	.word	_Label_159
	.word	-24
	.word	4
	.word	_Label_160
	.word	-28
	.word	4
	.word	_Label_161
	.word	-32
	.word	4
	.word	_Label_162
	.word	-36
	.word	4
	.word	_Label_163
	.word	-40
	.word	4
	.word	_Label_164
	.word	-44
	.word	4
	.word	_Label_165
	.word	-48
	.word	4
	.word	_Label_166
	.word	-52
	.word	4
	.word	_Label_167
	.word	-56
	.word	4
	.word	_Label_168
	.word	-60
	.word	4
	.word	0
_Label_155:
	.ascii	"InitializeScheduler\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_139_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_139_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_169:
!	jmp	_Label_170
_Label_170:
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
!   _temp_174 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_172 else goto _Label_173
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_173
	jmp	_Label_172
_Label_172:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_175
_Label_173:
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
_Label_175:
! END WHILE...
	jmp	_Label_169
_Label_171:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_139_IdleFunction:
	.word	_sourceFileName
	.word	_Label_176
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_177
	.word	8
	.word	4
	.word	_Label_178
	.word	-12
	.word	4
	.word	_Label_179
	.word	-16
	.word	4
	.word	0
_Label_176:
	.ascii	"IdleFunction\0"
	.align
_Label_177:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_179:
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
_Label_1914:
	push	r0
	sub	r1,1,r1
	bne	_Label_1914
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
!   _temp_182 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_182 ) then goto _Label_181		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_181
!	jmp	_Label_180
_Label_180:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_184 [0 ] into _temp_185
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
!   _temp_183 = _temp_185		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_183  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_181:
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
!   _temp_186 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_186 = 3  (sizeInBytes=4)
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
_Label_187:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_191 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_190  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_190 then goto _Label_189 else goto _Label_188
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_188
	jmp	_Label_189
_Label_188:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_192 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_193 = &_P_Kernel_threadManager
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
	jmp	_Label_187
_Label_189:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_196 ) then goto _Label_195		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_195
!	jmp	_Label_194
_Label_194:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_198 [0 ] into _temp_199
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
!   _temp_197 = _temp_199		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_197  sizeInBytes=4
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
!   _temp_201 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_200 = *_temp_201  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_200) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_202 = _temp_200 + 32
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
_Label_195:
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
	.word	_Label_203
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_204
	.word	8
	.word	4
	.word	_Label_205
	.word	-16
	.word	4
	.word	_Label_206
	.word	-20
	.word	4
	.word	_Label_207
	.word	-24
	.word	4
	.word	_Label_208
	.word	-28
	.word	4
	.word	_Label_209
	.word	-32
	.word	4
	.word	_Label_210
	.word	-36
	.word	4
	.word	_Label_211
	.word	-40
	.word	4
	.word	_Label_212
	.word	-44
	.word	4
	.word	_Label_213
	.word	-48
	.word	4
	.word	_Label_214
	.word	-52
	.word	4
	.word	_Label_215
	.word	-9
	.word	1
	.word	_Label_216
	.word	-56
	.word	4
	.word	_Label_217
	.word	-60
	.word	4
	.word	_Label_218
	.word	-64
	.word	4
	.word	_Label_219
	.word	-68
	.word	4
	.word	_Label_220
	.word	-72
	.word	4
	.word	_Label_221
	.word	-76
	.word	4
	.word	_Label_222
	.word	-80
	.word	4
	.word	0
_Label_203:
	.ascii	"Run\0"
	.align
_Label_204:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_215:
	.byte	'C'
	.ascii	"_temp_190\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_221:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_222:
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
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
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
!   _temp_223 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_224 = _function_138_ThreadPrintShort
	set	_function_138_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_225 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
	.word	_Label_226
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_227
	.word	-12
	.word	4
	.word	_Label_228
	.word	-16
	.word	4
	.word	_Label_229
	.word	-20
	.word	4
	.word	_Label_230
	.word	-24
	.word	4
	.word	0
_Label_226:
	.ascii	"PrintReadyList\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_230:
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
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
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
!   _temp_231 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_231  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_232 = *_temp_233  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
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
!   _temp_234 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
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
	.word	_Label_235
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	_Label_239
	.word	-24
	.word	4
	.word	_Label_240
	.word	-28
	.word	4
	.word	_Label_241
	.word	-32
	.word	4
	.word	0
_Label_235:
	.ascii	"ThreadStartMain\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_241:
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
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
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
!   _temp_242 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_243 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
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
	.word	_Label_244
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	_Label_247
	.word	-20
	.word	4
	.word	0
_Label_244:
	.ascii	"ThreadFinish\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_247:
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
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
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
!   _temp_248 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_250		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_251 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
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
!   _temp_253 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_252 = *_temp_253  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_250:
! CALL STATEMENT...
!   _temp_254 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
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
!   _temp_255 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_256 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
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
	.word	_Label_257
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-12
	.word	4
	.word	_Label_260
	.word	-16
	.word	4
	.word	_Label_261
	.word	-20
	.word	4
	.word	_Label_262
	.word	-24
	.word	4
	.word	_Label_263
	.word	-28
	.word	4
	.word	_Label_264
	.word	-32
	.word	4
	.word	_Label_265
	.word	-36
	.word	4
	.word	_Label_266
	.word	-40
	.word	4
	.word	0
_Label_257:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_258:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_266:
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
_Label_1919:
	push	r0
	sub	r1,1,r1
	bne	_Label_1919
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
!   if newStatus != 1 then goto _Label_268		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_268
!	jmp	_Label_267
_Label_267:
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
	jmp	_Label_269
_Label_268:
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
_Label_269:
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
	.word	_Label_270
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-12
	.word	4
	.word	0
_Label_270:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_138_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_138_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1920:
	push	r0
	sub	r1,1,r1
	bne	_Label_1920
	mov	759,r13		! source line 759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_276		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_276
!   _temp_275 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_277
_Label_276:
!   _temp_275 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_277:
!   if _temp_275 then goto _Label_274 else goto _Label_273
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_273
	jmp	_Label_274
_Label_273:
! THEN...
	mov	768,r13		! source line 768
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_278 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_274:
! CALL STATEMENT...
!   _temp_279 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_282 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	774,r13		! source line 774
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_290 = *_temp_291  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_285
	cmp	r1,2
	be	_Label_286
	cmp	r1,3
	be	_Label_287
	cmp	r1,4
	be	_Label_288
	cmp	r1,5
	be	_Label_289
	jmp	_Label_283
! CASE 1...
_Label_285:
! CALL STATEMENT...
!   _temp_292 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 2...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 3...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 4...
_Label_288:
! CALL STATEMENT...
!   _temp_295 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0BR",r10
	jmp	_Label_284
! CASE 5...
_Label_289:
! CALL STATEMENT...
!   _temp_296 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0BR",r10
	jmp	_Label_284
! DEFAULT CASE...
_Label_283:
! CALL STATEMENT...
!   _temp_297 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	791,r13		! source line 791
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_284:
! CALL STATEMENT...
!   _temp_298 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_299 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_300 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_138_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_301
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_302
	.word	8
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	_Label_305
	.word	-24
	.word	4
	.word	_Label_306
	.word	-28
	.word	4
	.word	_Label_307
	.word	-32
	.word	4
	.word	_Label_308
	.word	-36
	.word	4
	.word	_Label_309
	.word	-40
	.word	4
	.word	_Label_310
	.word	-44
	.word	4
	.word	_Label_311
	.word	-48
	.word	4
	.word	_Label_312
	.word	-52
	.word	4
	.word	_Label_313
	.word	-56
	.word	4
	.word	_Label_314
	.word	-60
	.word	4
	.word	_Label_315
	.word	-64
	.word	4
	.word	_Label_316
	.word	-68
	.word	4
	.word	_Label_317
	.word	-72
	.word	4
	.word	_Label_318
	.word	-76
	.word	4
	.word	_Label_319
	.word	-9
	.word	1
	.word	_Label_320
	.word	-80
	.word	4
	.word	0
_Label_301:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_302:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_319:
	.byte	'C'
	.ascii	"_temp_275\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_137_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_137_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1921:
	push	r0
	sub	r1,1,r1
	bne	_Label_1921
	mov	1111,r13		! source line 1111
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_321 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_137_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_322
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
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
_Label_1922:
	push	r0
	sub	r1,1,r1
	bne	_Label_1922
	mov	1121,r13		! source line 1121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_325 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1127,r13		! source line 1127
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1127,r13		! source line 1127
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ProcessFinish\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_325\0"
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
_Label_1923:
	push	r0
	sub	r1,1,r1
	bne	_Label_1923
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1633,r13		! source line 1633
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
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
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
	.word	_Label_329
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_329:
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
_Label_1924:
	push	r0
	sub	r1,1,r1
	bne	_Label_1924
	mov	1639,r13		! source line 1639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_330 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1649,r13		! source line 1649
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
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
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
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
	mov	1661,r13		! source line 1661
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
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
	.word	_Label_333
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_333:
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
_Label_1925:
	push	r0
	sub	r1,1,r1
	bne	_Label_1925
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
!   _temp_334 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
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
_Label_1926:
	push	r0
	sub	r1,1,r1
	bne	_Label_1926
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
!   _temp_337 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
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
_Label_1927:
	push	r0
	sub	r1,1,r1
	bne	_Label_1927
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
!   _temp_340 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
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
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_343 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
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
	.word	_Label_344
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_345
	.word	-12
	.word	4
	.word	0
_Label_344:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
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
_Label_1929:
	push	r0
	sub	r1,1,r1
	bne	_Label_1929
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_346 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1730,r13		! source line 1730
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
	.word	_Label_347
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
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
_Label_1930:
	push	r0
	sub	r1,1,r1
	bne	_Label_1930
	mov	1735,r13		! source line 1735
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_349 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
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
	.word	_Label_350
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_350:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_349\0"
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
_Label_1931:
	push	r0
	sub	r1,1,r1
	bne	_Label_1931
	mov	1747,r13		! source line 1747
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_352 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_function_136_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
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
	.word	_Label_353
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_354
	.word	-12
	.word	4
	.word	0
_Label_353:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_136_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_136_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1932:
	push	r0
	sub	r1,1,r1
	bne	_Label_1932
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_355 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_359 == 0 then goto _Label_358		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_358
!	jmp	_Label_357
_Label_357:
! THEN...
	mov	1770,r13		! source line 1770
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_361 = *_temp_362  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_361) then goto _runtimeErrorNullPointer
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
	jmp	_Label_363
_Label_358:
! ELSE...
	mov	1772,r13		! source line 1772
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_364 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_363:
! SEND STATEMENT...
	mov	1774,r13		! source line 1774
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
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_136_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_365
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	0
_Label_365:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_366:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_355\0"
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
_Label_1933:
	push	r0
	sub	r1,1,r1
	bne	_Label_1933
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1806,r13		! source line 1806
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1934
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_374
_Label_1934:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_374
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_374
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_388,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_388:
	jmp	_Label_380	! 1:	
	jmp	_Label_387	! 2:	
	jmp	_Label_377	! 3:	
	jmp	_Label_376	! 4:	
	jmp	_Label_379	! 5:	
	jmp	_Label_378	! 6:	
	jmp	_Label_381	! 7:	
	jmp	_Label_382	! 8:	
	jmp	_Label_383	! 9:	
	jmp	_Label_384	! 10:	
	jmp	_Label_385	! 11:	
	jmp	_Label_386	! 12:	
! CASE 4...
_Label_376:
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0RE",r10
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_389  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_377:
! CALL STATEMENT...
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_378:
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_379:
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_380:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_381:
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_382:
! RETURN STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_383:
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
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
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_384:
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
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
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_395  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_385:
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_396  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_396  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_386:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_387:
! CALL STATEMENT...
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_374:
! CALL STATEMENT...
!   _temp_397 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_398 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1839,r13		! source line 1839
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_375:
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
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
	.word	_Label_399
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	12
	.word	4
	.word	_Label_402
	.word	16
	.word	4
	.word	_Label_403
	.word	20
	.word	4
	.word	_Label_404
	.word	24
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	_Label_406
	.word	-16
	.word	4
	.word	_Label_407
	.word	-20
	.word	4
	.word	_Label_408
	.word	-24
	.word	4
	.word	_Label_409
	.word	-28
	.word	4
	.word	_Label_410
	.word	-32
	.word	4
	.word	_Label_411
	.word	-36
	.word	4
	.word	_Label_412
	.word	-40
	.word	4
	.word	_Label_413
	.word	-44
	.word	4
	.word	_Label_414
	.word	-48
	.word	4
	.word	0
_Label_399:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_389\0"
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
	mov	1846,r13		! source line 1846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
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
	.word	_Label_415
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_416:
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
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
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
	.word	_Label_417
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_417:
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
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
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
	.word	_Label_418
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_418:
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
	mov	1864,r13		! source line 1864
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
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
	.word	_Label_419
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_419:
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
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
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
	.word	_Label_420
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_421:
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
	mov	1878,r13		! source line 1878
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
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
	.word	_Label_422
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_423:
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
	mov	1885,r13		! source line 1885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1887,r13		! source line 1887
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
	.word	_Label_424
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_425:
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
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
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
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_427:
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
	mov	1899,r13		! source line 1899
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
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
	.word	_Label_428
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_429
	.word	8
	.word	4
	.word	_Label_430
	.word	12
	.word	4
	.word	_Label_431
	.word	16
	.word	4
	.word	0
_Label_428:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_431:
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
	mov	1906,r13		! source line 1906
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1908,r13		! source line 1908
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
	.word	_Label_432
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_433
	.word	8
	.word	4
	.word	_Label_434
	.word	12
	.word	4
	.word	_Label_435
	.word	16
	.word	4
	.word	0
_Label_432:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_435:
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
	mov	1913,r13		! source line 1913
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
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
	.word	_Label_436
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_437
	.word	8
	.word	4
	.word	_Label_438
	.word	12
	.word	4
	.word	0
_Label_436:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_438:
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
	mov	1920,r13		! source line 1920
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1920,r13		! source line 1920
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
	.word	_Label_439
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_440
	.word	8
	.word	4
	.word	0
_Label_439:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_441
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_441:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_442
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_442:
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
_Label_1935:
	push	r0
	sub	r1,1,r1
	bne	_Label_1935
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_444		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_445 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
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
_Label_444:
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
	.word	_Label_447
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_449
	.word	12
	.word	4
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	0
_Label_447:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_448:
	.ascii	"Pself\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_445\0"
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
_Label_1936:
	push	r0
	sub	r1,1,r1
	bne	_Label_1936
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
!   if count != 2147483647 then goto _Label_453		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_453
!	jmp	_Label_452
_Label_452:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_454 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
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
_Label_453:
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
!   if count > 0 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_457 = &waitingThreads
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
!   _temp_458 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_458 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_459 = &_P_Kernel_readyList
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
_Label_456:
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
	.word	_Label_460
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	0
_Label_460:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_461:
	.ascii	"Pself\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_467:
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
_Label_1937:
	push	r0
	sub	r1,1,r1
	bne	_Label_1937
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
!   if count != -2147483648 then goto _Label_469		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_470 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
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
_Label_469:
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
!   if count >= 0 then goto _Label_472		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_473 = &waitingThreads
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
_Label_472:
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
	.word	_Label_474
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_476
	.word	-12
	.word	4
	.word	_Label_477
	.word	-16
	.word	4
	.word	_Label_478
	.word	-20
	.word	4
	.word	0
_Label_474:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_475:
	.ascii	"Pself\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_478:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_479
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_479:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_480
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_480:
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
_Label_1938:
	push	r0
	sub	r1,1,r1
	bne	_Label_1938
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
	.word	_Label_482
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_483:
	.ascii	"Pself\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_1939:
	push	r0
	sub	r1,1,r1
	bne	_Label_1939
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_486		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_486
!	jmp	_Label_485
_Label_485:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_487 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
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
_Label_486:
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
!   if heldBy == 0 then goto _Label_491		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_491
!   _temp_490 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_492
_Label_491:
!   _temp_490 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_492:
!   if _temp_490 then goto _Label_489 else goto _Label_488
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_488
	jmp	_Label_489
_Label_488:
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
	jmp	_Label_493
_Label_489:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_494 = &waitingThreads
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
_Label_493:
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
	.word	_Label_495
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_497
	.word	-16
	.word	4
	.word	_Label_498
	.word	-9
	.word	1
	.word	_Label_499
	.word	-20
	.word	4
	.word	_Label_500
	.word	-24
	.word	4
	.word	0
_Label_495:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_496:
	.ascii	"Pself\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_498:
	.byte	'C'
	.ascii	"_temp_490\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_500:
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
_Label_1940:
	push	r0
	sub	r1,1,r1
	bne	_Label_1940
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_502		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_502
!	jmp	_Label_501
_Label_501:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
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
_Label_502:
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
!   _temp_504 = &waitingThreads
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
!   if t == 0 then goto _Label_506		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_506
!	jmp	_Label_505
_Label_505:
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
!   _temp_507 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_507 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_508 = &_P_Kernel_readyList
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
	jmp	_Label_509
_Label_506:
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
_Label_509:
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
	.word	_Label_510
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-20
	.word	4
	.word	_Label_515
	.word	-24
	.word	4
	.word	_Label_516
	.word	-28
	.word	4
	.word	_Label_517
	.word	-32
	.word	4
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_516:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_517:
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
_Label_1941:
	push	r0
	sub	r1,1,r1
	bne	_Label_1941
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_520		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_520
!	jmp	_Label_519
_Label_519:
!   _temp_518 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_521
_Label_520:
!   _temp_518 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_521:
!   ReturnResult: _temp_518  (sizeInBytes=1)
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
	.word	_Label_522
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_524
	.word	-9
	.word	1
	.word	0
_Label_522:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_523:
	.ascii	"Pself\0"
	.align
_Label_524:
	.byte	'C'
	.ascii	"_temp_518\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_525
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	Transfer
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_6	! 24:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_525:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_526
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_526:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_1942:
	push	r0
	sub	r1,1,r1
	bne	_Label_1942
	mov	446,r13		! source line 446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
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
	mov	447,r13		! source line 447
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_530
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_529:
	.ascii	"Pself\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	5,r1
_Label_1943:
	push	r0
	sub	r1,1,r1
	bne	_Label_1943
	mov	452,r13		! source line 452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_534		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_534
!   _temp_533 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_535
_Label_534:
!   _temp_533 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_535:
!   if _temp_533 then goto _Label_532 else goto _Label_531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_531
	jmp	_Label_532
_Label_531:
! THEN...
	mov	460,r13		! source line 460
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_536
_Label_532:
! ELSE...
	mov	462,r13		! source line 462
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_538		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_538
!	jmp	_Label_537
_Label_537:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   heldBy = transfer		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_538:
! SEND STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0SE",r10
!   _temp_539 = &waitingThreads
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
	mov	466,r13		! source line 466
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
_Label_536:
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_540
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_542
	.word	12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-9
	.word	1
	.word	_Label_545
	.word	-20
	.word	4
	.word	0
_Label_540:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_541:
	.ascii	"Pself\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_544:
	.byte	'C'
	.ascii	"_temp_533\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_1944:
	push	r0
	sub	r1,1,r1
	bne	_Label_1944
	mov	473,r13		! source line 473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_547		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_547
!	jmp	_Label_546
_Label_546:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_548 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	478,r13		! source line 478
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_547:
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   _temp_549 = &waitingThreads
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
	mov	482,r13		! source line 482
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_551		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_551
!	jmp	_Label_550
_Label_550:
! THEN...
	mov	483,r13		! source line 483
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_552 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
!   _temp_553 = &_P_Kernel_readyList
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
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_554
_Label_551:
! ELSE...
	mov	487,r13		! source line 487
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_554:
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_555
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_557
	.word	-12
	.word	4
	.word	_Label_558
	.word	-16
	.word	4
	.word	_Label_559
	.word	-20
	.word	4
	.word	_Label_560
	.word	-24
	.word	4
	.word	_Label_561
	.word	-28
	.word	4
	.word	_Label_562
	.word	-32
	.word	4
	.word	0
_Label_555:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_556:
	.ascii	"Pself\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_562:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Transfer  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	2,r1
_Label_1945:
	push	r0
	sub	r1,1,r1
	bne	_Label_1945
	mov	494,r13		! source line 494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   heldBy = dest		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_563
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_565
	.word	12
	.word	4
	.word	_Label_566
	.word	-12
	.word	4
	.word	0
_Label_563:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Transfer\0"
	.align
_Label_564:
	.ascii	"Pself\0"
	.align
_Label_565:
	.byte	'P'
	.ascii	"dest\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	1,r1
_Label_1946:
	push	r0
	sub	r1,1,r1
	bne	_Label_1946
	mov	504,r13		! source line 504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_569		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_569
!	jmp	_Label_568
_Label_568:
!   _temp_567 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_570
_Label_569:
!   _temp_567 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_570:
!   ReturnResult: _temp_567  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_571
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_573
	.word	-9
	.word	1
	.word	0
_Label_571:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_572:
	.ascii	"Pself\0"
	.align
_Label_573:
	.byte	'C'
	.ascii	"_temp_567\0"
	.align
! 
! ===============  METHOD printHeldBy  ===============
! 
_Method_P_Kernel_HoareMutex_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_6,r1
	push	r1
	mov	3,r1
_Label_1947:
	push	r0
	sub	r1,1,r1
	bne	_Label_1947
	mov	508,r13		! source line 508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_574 = *_temp_575  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_6:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	0
_Label_576:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_577:
	.ascii	"Pself\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_580
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_580:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_581
	.word	_sourceFileName
	.word	168		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_581:
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
_Label_1948:
	push	r0
	sub	r1,1,r1
	bne	_Label_1948
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
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
	mov	382,r13		! source line 382
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
	.word	_Label_583
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_585
	.word	-12
	.word	4
	.word	0
_Label_583:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_584:
	.ascii	"Pself\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_582\0"
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
_Label_1949:
	push	r0
	sub	r1,1,r1
	bne	_Label_1949
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
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
!   Retrieve Result: targetName=_temp_588  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_588 then goto _Label_587 else goto _Label_586
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_586
	jmp	_Label_587
_Label_586:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_589 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_587:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
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
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_590 = &waitingThreads
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
	mov	397,r13		! source line 397
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
	mov	398,r13		! source line 398
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
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
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
	.word	_Label_591
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_593
	.word	12
	.word	4
	.word	_Label_594
	.word	-16
	.word	4
	.word	_Label_595
	.word	-20
	.word	4
	.word	_Label_596
	.word	-9
	.word	1
	.word	_Label_597
	.word	-24
	.word	4
	.word	0
_Label_591:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_592:
	.ascii	"Pself\0"
	.align
_Label_593:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_596:
	.byte	'C'
	.ascii	"_temp_588\0"
	.align
_Label_597:
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
_Label_1950:
	push	r0
	sub	r1,1,r1
	bne	_Label_1950
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
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
!   Retrieve Result: targetName=_temp_600  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_600 then goto _Label_599 else goto _Label_598
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_598
	jmp	_Label_599
_Label_598:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_601 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_599:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_602 = &waitingThreads
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
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_604		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_604
!	jmp	_Label_603
_Label_603:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_605 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_606 = &_P_Kernel_readyList
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
_Label_604:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
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
	.word	_Label_607
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_609
	.word	12
	.word	4
	.word	_Label_610
	.word	-16
	.word	4
	.word	_Label_611
	.word	-20
	.word	4
	.word	_Label_612
	.word	-24
	.word	4
	.word	_Label_613
	.word	-28
	.word	4
	.word	_Label_614
	.word	-9
	.word	1
	.word	_Label_615
	.word	-32
	.word	4
	.word	_Label_616
	.word	-36
	.word	4
	.word	0
_Label_607:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_608:
	.ascii	"Pself\0"
	.align
_Label_609:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_614:
	.byte	'C'
	.ascii	"_temp_600\0"
	.align
_Label_615:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_616:
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
_Label_1951:
	push	r0
	sub	r1,1,r1
	bne	_Label_1951
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
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
!   Retrieve Result: targetName=_temp_619  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_619 then goto _Label_618 else goto _Label_617
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_617
	jmp	_Label_618
_Label_617:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_620 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_620  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_618:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_621:
!	jmp	_Label_622
_Label_622:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_624 = &waitingThreads
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
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_625
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_625
	jmp	_Label_626
_Label_625:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_623
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_627 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_628 = &_P_Kernel_readyList
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
	jmp	_Label_621
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
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
	.word	_Label_629
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_631
	.word	12
	.word	4
	.word	_Label_632
	.word	-16
	.word	4
	.word	_Label_633
	.word	-20
	.word	4
	.word	_Label_634
	.word	-24
	.word	4
	.word	_Label_635
	.word	-28
	.word	4
	.word	_Label_636
	.word	-9
	.word	1
	.word	_Label_637
	.word	-32
	.word	4
	.word	_Label_638
	.word	-36
	.word	4
	.word	0
_Label_629:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_630:
	.ascii	"Pself\0"
	.align
_Label_631:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_636:
	.byte	'C'
	.ascii	"_temp_619\0"
	.align
_Label_637:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_638:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_639
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_639:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_640
	.word	_sourceFileName
	.word	182		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_640:
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
	mov	1,r1
_Label_1952:
	push	r0
	sub	r1,1,r1
	bne	_Label_1952
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
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
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_642
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_644
	.word	-12
	.word	4
	.word	0
_Label_642:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_643:
	.ascii	"Pself\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
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
	mov	6,r1
_Label_1953:
	push	r0
	sub	r1,1,r1
	bne	_Label_1953
	mov	524,r13		! source line 524
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0IF",r10
	mov	527,r13		! source line 527
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_647  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_647 then goto _Label_646 else goto _Label_645
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_645
	jmp	_Label_646
_Label_645:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_648 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	528,r13		! source line 528
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_646:
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
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
	mov	532,r13		! source line 532
	mov	"\0\0SE",r10
!   _temp_649 = &waitingThreads
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
	mov	533,r13		! source line 533
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
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_650
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_652
	.word	12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	_Label_655
	.word	-9
	.word	1
	.word	_Label_656
	.word	-24
	.word	4
	.word	0
_Label_650:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_651:
	.ascii	"Pself\0"
	.align
_Label_652:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_655:
	.byte	'C'
	.ascii	"_temp_647\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
	mov	9,r1
_Label_1954:
	push	r0
	sub	r1,1,r1
	bne	_Label_1954
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
	mov	543,r13		! source line 543
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_659  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_659 then goto _Label_658 else goto _Label_657
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_657
	jmp	_Label_658
_Label_657:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_660 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_658:
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   _temp_661 = &waitingThreads
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
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_663		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_663
!	jmp	_Label_662
_Label_662:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_664 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0SE",r10
!   _temp_665 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0SE",r10
!   if intIsZero (hMutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_663:
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_666
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_668
	.word	12
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
	.word	_Label_673
	.word	-9
	.word	1
	.word	_Label_674
	.word	-32
	.word	4
	.word	_Label_675
	.word	-36
	.word	4
	.word	0
_Label_666:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_667:
	.ascii	"Pself\0"
	.align
_Label_668:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_673:
	.byte	'C'
	.ascii	"_temp_659\0"
	.align
_Label_674:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_675:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_676
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
_Label_676:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_677
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_677:
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
_Label_1955:
	push	r0
	sub	r1,1,r1
	bne	_Label_1955
	mov	566,r13		! source line 566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   _temp_678 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_678) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_678 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	575,r13		! source line 575
	mov	"\0\0AS",r10
!   _temp_679 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_679 [0 ] into _temp_680
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
!   Data Move: *_temp_680 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0AS",r10
!   _temp_681 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_681 [999 ] into _temp_682
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
!   Data Move: *_temp_682 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0AS",r10
!   _temp_683 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_683 [999 ] into _temp_684
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
!   stackTop = _temp_684		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0AS",r10
!   _temp_685 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_687 = &_temp_686
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_687 = _temp_687 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_689:
!   Data Move: *_temp_687 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_687 = _temp_687 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_688 = _temp_688 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_688) then goto _Label_689
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_689
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_690 = &_temp_686
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1956
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1956:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_685 = *_temp_690  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1957:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1957
! ASSIGNMENT STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
!   _temp_691 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_693 = &_temp_692
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_693 = _temp_693 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_695:
!   Data Move: *_temp_693 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_693 = _temp_693 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_694 = _temp_694 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_694) then goto _Label_695
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_695
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_696 = &_temp_692
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1958
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1958:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_691 = *_temp_696  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1959:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1959
! RETURN STATEMENT...
	mov	580,r13		! source line 580
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
	.word	_Label_697
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_699
	.word	12
	.word	4
	.word	_Label_700
	.word	-12
	.word	4
	.word	_Label_701
	.word	-16
	.word	4
	.word	_Label_702
	.word	-20
	.word	4
	.word	_Label_703
	.word	-84
	.word	64
	.word	_Label_704
	.word	-88
	.word	4
	.word	_Label_705
	.word	-92
	.word	4
	.word	_Label_706
	.word	-96
	.word	4
	.word	_Label_707
	.word	-100
	.word	4
	.word	_Label_708
	.word	-156
	.word	56
	.word	_Label_709
	.word	-160
	.word	4
	.word	_Label_710
	.word	-164
	.word	4
	.word	_Label_711
	.word	-168
	.word	4
	.word	_Label_712
	.word	-172
	.word	4
	.word	_Label_713
	.word	-176
	.word	4
	.word	_Label_714
	.word	-180
	.word	4
	.word	_Label_715
	.word	-184
	.word	4
	.word	_Label_716
	.word	-188
	.word	4
	.word	0
_Label_697:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_698:
	.ascii	"Pself\0"
	.align
_Label_699:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_678\0"
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
_Label_1960:
	push	r0
	sub	r1,1,r1
	bne	_Label_1960
	mov	585,r13		! source line 585
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
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
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_717  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_719 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_718  sizeInBytes=4
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
	mov	604,r13		! source line 604
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	604,r13		! source line 604
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
	.word	_Label_720
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_721
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_722
	.word	12
	.word	4
	.word	_Label_723
	.word	16
	.word	4
	.word	_Label_724
	.word	-12
	.word	4
	.word	_Label_725
	.word	-16
	.word	4
	.word	_Label_726
	.word	-20
	.word	4
	.word	_Label_727
	.word	-24
	.word	4
	.word	_Label_728
	.word	-28
	.word	4
	.word	0
_Label_720:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_721:
	.ascii	"Pself\0"
	.align
_Label_722:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_728:
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
_Label_1961:
	push	r0
	sub	r1,1,r1
	bne	_Label_1961
	mov	609,r13		! source line 609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_731 == _P_Kernel_currentThread then goto _Label_730		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_730
!	jmp	_Label_729
_Label_729:
! THEN...
	mov	626,r13		! source line 626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_732 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	626,r13		! source line 626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_730:
! ASSIGNMENT STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0AS",r10
	mov	632,r13		! source line 632
	mov	"\0\0SE",r10
!   _temp_733 = &_P_Kernel_readyList
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
	mov	633,r13		! source line 633
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_735		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_735
!	jmp	_Label_734
_Label_734:
! THEN...
	mov	637,r13		! source line 637
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_737		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_737
!	jmp	_Label_736
_Label_736:
! THEN...
	mov	638,r13		! source line 638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_738 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	638,r13		! source line 638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_737:
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_740 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_739  sizeInBytes=4
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
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_735:
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	644,r13		! source line 644
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
	.word	_Label_741
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_743
	.word	-12
	.word	4
	.word	_Label_744
	.word	-16
	.word	4
	.word	_Label_745
	.word	-20
	.word	4
	.word	_Label_746
	.word	-24
	.word	4
	.word	_Label_747
	.word	-28
	.word	4
	.word	_Label_748
	.word	-32
	.word	4
	.word	_Label_749
	.word	-36
	.word	4
	.word	_Label_750
	.word	-40
	.word	4
	.word	_Label_751
	.word	-44
	.word	4
	.word	0
_Label_741:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_742:
	.ascii	"Pself\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_749:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_750:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_751:
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
_Label_1962:
	push	r0
	sub	r1,1,r1
	bne	_Label_1962
	mov	649,r13		! source line 649
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_753		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_753
!	jmp	_Label_752
_Label_752:
! THEN...
	mov	662,r13		! source line 662
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_754 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	662,r13		! source line 662
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_753:
! IF STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_757 == _P_Kernel_currentThread then goto _Label_756		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_756
!	jmp	_Label_755
_Label_755:
! THEN...
	mov	666,r13		! source line 666
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_758 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	666,r13		! source line 666
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_756:
! ASSIGNMENT STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
	mov	672,r13		! source line 672
	mov	"\0\0SE",r10
!   _temp_759 = &_P_Kernel_readyList
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
	mov	673,r13		! source line 673
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_760
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_760
	jmp	_Label_761
_Label_760:
! THEN...
	mov	674,r13		! source line 674
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_762 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	674,r13		! source line 674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_761:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	676,r13		! source line 676
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
	.word	_Label_763
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_765
	.word	-12
	.word	4
	.word	_Label_766
	.word	-16
	.word	4
	.word	_Label_767
	.word	-20
	.word	4
	.word	_Label_768
	.word	-24
	.word	4
	.word	_Label_769
	.word	-28
	.word	4
	.word	_Label_770
	.word	-32
	.word	4
	.word	0
_Label_763:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_764:
	.ascii	"Pself\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_770:
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
_Label_1963:
	push	r0
	sub	r1,1,r1
	bne	_Label_1963
	mov	681,r13		! source line 681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0IF",r10
!   _temp_774 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_774 [0 ] into _temp_775
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
!   Data Move: _temp_773 = *_temp_775  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_773 == 606348324 then goto _Label_772		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_772
!	jmp	_Label_771
_Label_771:
! THEN...
	mov	688,r13		! source line 688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_776 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	688,r13		! source line 688
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_777
_Label_772:
! ELSE...
	mov	689,r13		! source line 689
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
!   _temp_781 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_781 [999 ] into _temp_782
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
!   Data Move: _temp_780 = *_temp_782  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_780 == 606348324 then goto _Label_779		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_779
!	jmp	_Label_778
_Label_778:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_783 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	690,r13		! source line 690
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_779:
! END IF...
_Label_777:
! RETURN STATEMENT...
	mov	687,r13		! source line 687
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
	.word	_Label_784
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-28
	.word	4
	.word	_Label_791
	.word	-32
	.word	4
	.word	_Label_792
	.word	-36
	.word	4
	.word	_Label_793
	.word	-40
	.word	4
	.word	0
_Label_784:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_785:
	.ascii	"Pself\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_773\0"
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
_Label_1964:
	push	r0
	sub	r1,1,r1
	bne	_Label_1964
	mov	696,r13		! source line 696
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_794 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_795 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_797 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_798 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_803 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_804 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_803  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_799:
!   Perform the FOR-LOOP termination test
!   if i > _temp_804 then goto _Label_802		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_802
_Label_800:
	mov	709,r13		! source line 709
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_805 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_806 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_807 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_809 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_809 [i ] into _temp_810
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
!   Data Move: _temp_808 = *_temp_810  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_811 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_813 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_813 [i ] into _temp_814
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
!   Data Move: _temp_812 = *_temp_814  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_815 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_801:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_799
! END FOR
_Label_802:
! CALL STATEMENT...
!   _temp_816 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-116]
!   _temp_817 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_817  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_818 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-108]
!   _temp_820 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_820 [0 ] into _temp_821
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
!   _temp_819 = _temp_821		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_819  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	720,r13		! source line 720
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_824
	cmp	r1,2
	be	_Label_825
	cmp	r1,3
	be	_Label_826
	cmp	r1,4
	be	_Label_827
	cmp	r1,5
	be	_Label_828
	jmp	_Label_822
! CASE 1...
_Label_824:
! CALL STATEMENT...
!   _temp_829 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0BR",r10
	jmp	_Label_823
! CASE 2...
_Label_825:
! CALL STATEMENT...
!   _temp_830 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0BR",r10
	jmp	_Label_823
! CASE 3...
_Label_826:
! CALL STATEMENT...
!   _temp_831 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0BR",r10
	jmp	_Label_823
! CASE 4...
_Label_827:
! CALL STATEMENT...
!   _temp_832 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0BR",r10
	jmp	_Label_823
! CASE 5...
_Label_828:
! CALL STATEMENT...
!   _temp_833 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0BR",r10
	jmp	_Label_823
! DEFAULT CASE...
_Label_822:
! CALL STATEMENT...
!   _temp_834 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	737,r13		! source line 737
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_823:
! CALL STATEMENT...
!   _temp_835 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_836 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_841 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_842 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_841  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_837:
!   Perform the FOR-LOOP termination test
!   if i > _temp_842 then goto _Label_840		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_840
_Label_838:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_843 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_843  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_844 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_845 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_847 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_847 [i ] into _temp_848
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
!   Data Move: _temp_846 = *_temp_848  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_849 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_851 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_851 [i ] into _temp_852
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
!   Data Move: _temp_850 = *_temp_852  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_853 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_839:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_837
! END FOR
_Label_840:
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	752,r13		! source line 752
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
	.word	_Label_854
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_856
	.word	-12
	.word	4
	.word	_Label_857
	.word	-16
	.word	4
	.word	_Label_858
	.word	-20
	.word	4
	.word	_Label_859
	.word	-24
	.word	4
	.word	_Label_860
	.word	-28
	.word	4
	.word	_Label_861
	.word	-32
	.word	4
	.word	_Label_862
	.word	-36
	.word	4
	.word	_Label_863
	.word	-40
	.word	4
	.word	_Label_864
	.word	-44
	.word	4
	.word	_Label_865
	.word	-48
	.word	4
	.word	_Label_866
	.word	-52
	.word	4
	.word	_Label_867
	.word	-56
	.word	4
	.word	_Label_868
	.word	-60
	.word	4
	.word	_Label_869
	.word	-64
	.word	4
	.word	_Label_870
	.word	-68
	.word	4
	.word	_Label_871
	.word	-72
	.word	4
	.word	_Label_872
	.word	-76
	.word	4
	.word	_Label_873
	.word	-80
	.word	4
	.word	_Label_874
	.word	-84
	.word	4
	.word	_Label_875
	.word	-88
	.word	4
	.word	_Label_876
	.word	-92
	.word	4
	.word	_Label_877
	.word	-96
	.word	4
	.word	_Label_878
	.word	-100
	.word	4
	.word	_Label_879
	.word	-104
	.word	4
	.word	_Label_880
	.word	-108
	.word	4
	.word	_Label_881
	.word	-112
	.word	4
	.word	_Label_882
	.word	-116
	.word	4
	.word	_Label_883
	.word	-120
	.word	4
	.word	_Label_884
	.word	-124
	.word	4
	.word	_Label_885
	.word	-128
	.word	4
	.word	_Label_886
	.word	-132
	.word	4
	.word	_Label_887
	.word	-136
	.word	4
	.word	_Label_888
	.word	-140
	.word	4
	.word	_Label_889
	.word	-144
	.word	4
	.word	_Label_890
	.word	-148
	.word	4
	.word	_Label_891
	.word	-152
	.word	4
	.word	_Label_892
	.word	-156
	.word	4
	.word	_Label_893
	.word	-160
	.word	4
	.word	_Label_894
	.word	-164
	.word	4
	.word	_Label_895
	.word	-168
	.word	4
	.word	_Label_896
	.word	-172
	.word	4
	.word	_Label_897
	.word	-176
	.word	4
	.word	_Label_898
	.word	-180
	.word	4
	.word	_Label_899
	.word	-184
	.word	4
	.word	_Label_900
	.word	-188
	.word	4
	.word	_Label_901
	.word	-192
	.word	4
	.word	_Label_902
	.word	-196
	.word	4
	.word	0
_Label_854:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_855:
	.ascii	"Pself\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_903
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_903:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_904
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_904:
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
	mov	11506,r1
_Label_1965:
	push	r0
	sub	r1,1,r1
	bne	_Label_1965
	mov	807,r13		! source line 807
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_905 = _StringConst_77
	set	_StringConst_77,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	817,r13		! source line 817
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
!   threadManLock = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_907 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	820,r13		! source line 820
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_909 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	set	-46000,r2
	store	r1,[r14+r2]
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
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   _temp_910 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_912 = &_temp_911
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_912 = _temp_912 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_914 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_1966:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1966
!   _temp_914 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_916:
!   Data Move: *_temp_912 = _temp_914  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_1967:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1967
!   _temp_912 = _temp_912 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_913 = _temp_913 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_913) then goto _Label_916
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_916
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_917 = &_temp_911
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1968
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1968:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_910 = *_temp_917  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1969:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1969
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_918 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-168]
!   _temp_919 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_919 [0 ] into _temp_920
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
!   Prepare Argument: offset=12  value=_temp_918  sizeInBytes=4
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
	mov	826,r13		! source line 826
	mov	"\0\0SE",r10
!   _temp_921 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-156]
!   _temp_922 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_922 [1 ] into _temp_923
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
!   Prepare Argument: offset=12  value=_temp_921  sizeInBytes=4
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
	mov	827,r13		! source line 827
	mov	"\0\0SE",r10
!   _temp_924 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-144]
!   _temp_925 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_925 [2 ] into _temp_926
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
!   Prepare Argument: offset=12  value=_temp_924  sizeInBytes=4
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
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
!   _temp_927 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-132]
!   _temp_928 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_928 [3 ] into _temp_929
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
!   Prepare Argument: offset=12  value=_temp_927  sizeInBytes=4
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
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_930 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-120]
!   _temp_931 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_931 [4 ] into _temp_932
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
!   Prepare Argument: offset=12  value=_temp_930  sizeInBytes=4
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
	mov	830,r13		! source line 830
	mov	"\0\0SE",r10
!   _temp_933 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-108]
!   _temp_934 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_934 [5 ] into _temp_935
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
!   Prepare Argument: offset=12  value=_temp_933  sizeInBytes=4
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
	mov	831,r13		! source line 831
	mov	"\0\0SE",r10
!   _temp_936 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-96]
!   _temp_937 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_937 [6 ] into _temp_938
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
!   Prepare Argument: offset=12  value=_temp_936  sizeInBytes=4
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
	mov	832,r13		! source line 832
	mov	"\0\0SE",r10
!   _temp_939 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-84]
!   _temp_940 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_940 [7 ] into _temp_941
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
!   Prepare Argument: offset=12  value=_temp_939  sizeInBytes=4
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
	mov	833,r13		! source line 833
	mov	"\0\0SE",r10
!   _temp_942 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-72]
!   _temp_943 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_943 [8 ] into _temp_944
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
!   Prepare Argument: offset=12  value=_temp_942  sizeInBytes=4
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
	mov	834,r13		! source line 834
	mov	"\0\0SE",r10
!   _temp_945 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-60]
!   _temp_946 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_946 [9 ] into _temp_947
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
!   Prepare Argument: offset=12  value=_temp_945  sizeInBytes=4
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
	mov	836,r13		! source line 836
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41684,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41684,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46024,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_953 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_954 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_953  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_949:
!   Perform the FOR-LOOP termination test
!   if i > _temp_954 then goto _Label_952		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_952
_Label_950:
	mov	839,r13		! source line 839
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   _temp_955 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_955 [i ] into _temp_956
!     make sure index expr is >= 0
	set	-46020,r2
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
!   _temp_957 = _temp_956 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_957 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0SE",r10
!   _temp_959 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_959 [i ] into _temp_960
!     make sure index expr is >= 0
	set	-46020,r2
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
!   _temp_958 = _temp_960		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_961 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_958  sizeInBytes=4
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
_Label_951:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_949
! END FOR
_Label_952:
! RETURN STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0RE",r10
	set	46028,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_962
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_964
	.word	-12
	.word	4
	.word	_Label_965
	.word	-16
	.word	4
	.word	_Label_966
	.word	-20
	.word	4
	.word	_Label_967
	.word	-24
	.word	4
	.word	_Label_968
	.word	-28
	.word	4
	.word	_Label_969
	.word	-32
	.word	4
	.word	_Label_970
	.word	-36
	.word	4
	.word	_Label_971
	.word	-40
	.word	4
	.word	_Label_972
	.word	-44
	.word	4
	.word	_Label_973
	.word	-48
	.word	4
	.word	_Label_974
	.word	-52
	.word	4
	.word	_Label_975
	.word	-56
	.word	4
	.word	_Label_976
	.word	-60
	.word	4
	.word	_Label_977
	.word	-64
	.word	4
	.word	_Label_978
	.word	-68
	.word	4
	.word	_Label_979
	.word	-72
	.word	4
	.word	_Label_980
	.word	-76
	.word	4
	.word	_Label_981
	.word	-80
	.word	4
	.word	_Label_982
	.word	-84
	.word	4
	.word	_Label_983
	.word	-88
	.word	4
	.word	_Label_984
	.word	-92
	.word	4
	.word	_Label_985
	.word	-96
	.word	4
	.word	_Label_986
	.word	-100
	.word	4
	.word	_Label_987
	.word	-104
	.word	4
	.word	_Label_988
	.word	-108
	.word	4
	.word	_Label_989
	.word	-112
	.word	4
	.word	_Label_990
	.word	-116
	.word	4
	.word	_Label_991
	.word	-120
	.word	4
	.word	_Label_992
	.word	-124
	.word	4
	.word	_Label_993
	.word	-128
	.word	4
	.word	_Label_994
	.word	-132
	.word	4
	.word	_Label_995
	.word	-136
	.word	4
	.word	_Label_996
	.word	-140
	.word	4
	.word	_Label_997
	.word	-144
	.word	4
	.word	_Label_998
	.word	-148
	.word	4
	.word	_Label_999
	.word	-152
	.word	4
	.word	_Label_1000
	.word	-156
	.word	4
	.word	_Label_1001
	.word	-160
	.word	4
	.word	_Label_1002
	.word	-164
	.word	4
	.word	_Label_1003
	.word	-168
	.word	4
	.word	_Label_1004
	.word	-172
	.word	4
	.word	_Label_1005
	.word	-176
	.word	4
	.word	_Label_1006
	.word	-4340
	.word	4164
	.word	_Label_1007
	.word	-4344
	.word	4
	.word	_Label_1008
	.word	-4348
	.word	4
	.word	_Label_1009
	.word	-45992
	.word	41644
	.word	_Label_1010
	.word	-45996
	.word	4
	.word	_Label_1011
	.word	-46000
	.word	4
	.word	_Label_1012
	.word	-46004
	.word	4
	.word	_Label_1013
	.word	-46008
	.word	4
	.word	_Label_1014
	.word	-46012
	.word	4
	.word	_Label_1015
	.word	-46016
	.word	4
	.word	_Label_1016
	.word	-46020
	.word	4
	.word	_Label_1017
	.word	-46024
	.word	4
	.word	0
_Label_962:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_963:
	.ascii	"Pself\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_1016:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1017:
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
_Label_1970:
	push	r0
	sub	r1,1,r1
	bne	_Label_1970
	mov	848,r13		! source line 848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1018 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1023 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1024 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1023  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1019:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1024 then goto _Label_1022		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1022
_Label_1020:
	mov	857,r13		! source line 857
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1025 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1026 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1028 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1028 [i ] into _temp_1029
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
!   _temp_1027 = _temp_1029		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CA",r10
	call	_function_138_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1021:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1019
! END FOR
_Label_1022:
! CALL STATEMENT...
!   _temp_1030 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0SE",r10
!   _temp_1031 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1032 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1031  sizeInBytes=4
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
	mov	865,r13		! source line 865
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	866,r13		! source line 866
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
	.word	_Label_1033
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-24
	.word	4
	.word	_Label_1039
	.word	-28
	.word	4
	.word	_Label_1040
	.word	-32
	.word	4
	.word	_Label_1041
	.word	-36
	.word	4
	.word	_Label_1042
	.word	-40
	.word	4
	.word	_Label_1043
	.word	-44
	.word	4
	.word	_Label_1044
	.word	-48
	.word	4
	.word	_Label_1045
	.word	-52
	.word	4
	.word	_Label_1046
	.word	-56
	.word	4
	.word	_Label_1047
	.word	-60
	.word	4
	.word	0
_Label_1033:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1046:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1047:
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
	mov	11,r1
_Label_1971:
	push	r0
	sub	r1,1,r1
	bne	_Label_1971
	mov	871,r13		! source line 871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0SE",r10
!   _temp_1048 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0IF",r10
	mov	882,r13		! source line 882
	mov	"\0\0SE",r10
!   _temp_1052 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1051  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1053 = _temp_1051 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1053 then goto _Label_1050 else goto _Label_1049
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1049
	jmp	_Label_1050
_Label_1049:
! THEN...
	mov	883,r13		! source line 883
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0SE",r10
!   _temp_1054 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1055 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1054  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1050:
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_1056 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1057 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1058 = &threadManLock
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
! RETURN STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1059
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1061
	.word	-16
	.word	4
	.word	_Label_1062
	.word	-20
	.word	4
	.word	_Label_1063
	.word	-24
	.word	4
	.word	_Label_1064
	.word	-28
	.word	4
	.word	_Label_1065
	.word	-32
	.word	4
	.word	_Label_1066
	.word	-9
	.word	1
	.word	_Label_1067
	.word	-36
	.word	4
	.word	_Label_1068
	.word	-10
	.word	1
	.word	_Label_1069
	.word	-40
	.word	4
	.word	_Label_1070
	.word	-44
	.word	4
	.word	0
_Label_1059:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1060:
	.ascii	"Pself\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1066:
	.byte	'C'
	.ascii	"_temp_1053\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1068:
	.byte	'C'
	.ascii	"_temp_1051\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1070:
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
	mov	8,r1
_Label_1972:
	push	r0
	sub	r1,1,r1
	bne	_Label_1972
	mov	895,r13		! source line 895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1071 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1072 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1073 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_1074 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1075 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1074  sizeInBytes=4
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
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1076 = &threadManLock
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
! RETURN STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1077
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1079
	.word	12
	.word	4
	.word	_Label_1080
	.word	-12
	.word	4
	.word	_Label_1081
	.word	-16
	.word	4
	.word	_Label_1082
	.word	-20
	.word	4
	.word	_Label_1083
	.word	-24
	.word	4
	.word	_Label_1084
	.word	-28
	.word	4
	.word	_Label_1085
	.word	-32
	.word	4
	.word	0
_Label_1077:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1078:
	.ascii	"Pself\0"
	.align
_Label_1079:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1086
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1086:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1087
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1087:
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
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	917,r13		! source line 917
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1974:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1974
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1089 = &addrSpace
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
	mov	921,r13		! source line 921
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
	.word	_Label_1090
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	-12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	0
_Label_1090:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1088\0"
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
_Label_1975:
	push	r0
	sub	r1,1,r1
	bne	_Label_1975
	mov	931,r13		! source line 931
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1094) then goto _runtimeErrorNullPointer
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
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1095 = &addrSpace
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
!   _temp_1096 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CA",r10
	call	_function_138_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	949,r13		! source line 949
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
	.word	_Label_1097
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1099
	.word	-12
	.word	4
	.word	_Label_1100
	.word	-16
	.word	4
	.word	_Label_1101
	.word	-20
	.word	4
	.word	0
_Label_1097:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1098:
	.ascii	"Pself\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1094\0"
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
_Label_1976:
	push	r0
	sub	r1,1,r1
	bne	_Label_1976
	mov	954,r13		! source line 954
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1102 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1104 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1105 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1105  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	962,r13		! source line 962
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1107		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1107
!	jmp	_Label_1106
_Label_1106:
! THEN...
	mov	964,r13		! source line 964
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1108 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	964,r13		! source line 964
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1109
_Label_1107:
! ELSE...
	mov	965,r13		! source line 965
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1111		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1111
!	jmp	_Label_1110
_Label_1110:
! THEN...
	mov	966,r13		! source line 966
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1112 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1112  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1113
_Label_1111:
! ELSE...
	mov	967,r13		! source line 967
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1115		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1115
!	jmp	_Label_1114
_Label_1114:
! THEN...
	mov	968,r13		! source line 968
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1117
_Label_1115:
! ELSE...
	mov	970,r13		! source line 970
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1118 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	970,r13		! source line 970
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1117:
! END IF...
_Label_1113:
! END IF...
_Label_1109:
! CALL STATEMENT...
!   _temp_1119 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	973,r13		! source line 973
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1120 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	976,r13		! source line 976
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
	.word	_Label_1121
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1123
	.word	-12
	.word	4
	.word	_Label_1124
	.word	-16
	.word	4
	.word	_Label_1125
	.word	-20
	.word	4
	.word	_Label_1126
	.word	-24
	.word	4
	.word	_Label_1127
	.word	-28
	.word	4
	.word	_Label_1128
	.word	-32
	.word	4
	.word	_Label_1129
	.word	-36
	.word	4
	.word	_Label_1130
	.word	-40
	.word	4
	.word	_Label_1131
	.word	-44
	.word	4
	.word	_Label_1132
	.word	-48
	.word	4
	.word	0
_Label_1121:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1122:
	.ascii	"Pself\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1133
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1133:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1134
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1134:
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
	mov	368,r1
_Label_1977:
	push	r0
	sub	r1,1,r1
	bne	_Label_1977
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   _temp_1135 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1137 = &_temp_1136
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1137 = _temp_1137 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1139 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1978:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1978
!   _temp_1139 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1141:
!   Data Move: *_temp_1137 = _temp_1139  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1979:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1979
!   _temp_1137 = _temp_1137 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1138 = _temp_1138 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1138) then goto _Label_1141
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1141
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1142 = &_temp_1136
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1980
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1980:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1135 = *_temp_1142  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1981:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1981
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
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
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1144 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1146 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1149 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1154 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1155 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1154  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1150:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1155 then goto _Label_1153		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1153
_Label_1151:
	mov	1007,r13		! source line 1007
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1156 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1156 [i ] into _temp_1157
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1159 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1159 [i ] into _temp_1160
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
!   _temp_1158 = _temp_1160		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1161 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1158  sizeInBytes=4
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
_Label_1152:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1150
! END FOR
_Label_1153:
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   _temp_1162 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1162 [0 ] into _temp_1163
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
!   _temp_1164 = _temp_1163 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1164  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1165
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1167
	.word	-12
	.word	4
	.word	_Label_1168
	.word	-16
	.word	4
	.word	_Label_1169
	.word	-20
	.word	4
	.word	_Label_1170
	.word	-24
	.word	4
	.word	_Label_1171
	.word	-28
	.word	4
	.word	_Label_1172
	.word	-32
	.word	4
	.word	_Label_1173
	.word	-36
	.word	4
	.word	_Label_1174
	.word	-40
	.word	4
	.word	_Label_1175
	.word	-44
	.word	4
	.word	_Label_1176
	.word	-48
	.word	4
	.word	_Label_1177
	.word	-52
	.word	4
	.word	_Label_1178
	.word	-56
	.word	4
	.word	_Label_1179
	.word	-60
	.word	4
	.word	_Label_1180
	.word	-64
	.word	4
	.word	_Label_1181
	.word	-68
	.word	4
	.word	_Label_1182
	.word	-72
	.word	4
	.word	_Label_1183
	.word	-76
	.word	4
	.word	_Label_1184
	.word	-80
	.word	4
	.word	_Label_1185
	.word	-84
	.word	4
	.word	_Label_1186
	.word	-88
	.word	4
	.word	_Label_1187
	.word	-212
	.word	124
	.word	_Label_1188
	.word	-216
	.word	4
	.word	_Label_1189
	.word	-220
	.word	4
	.word	_Label_1190
	.word	-1464
	.word	1244
	.word	_Label_1191
	.word	-1468
	.word	4
	.word	_Label_1192
	.word	-1472
	.word	4
	.word	0
_Label_1165:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1166:
	.ascii	"Pself\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1192:
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
_Label_1982:
	push	r0
	sub	r1,1,r1
	bne	_Label_1982
	mov	1016,r13		! source line 1016
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1193 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1198 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1199 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1198  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1194:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1199 then goto _Label_1197		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1197
_Label_1195:
	mov	1025,r13		! source line 1025
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1200 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1201 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1202 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1202 [i ] into _temp_1203
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
_Label_1196:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1194
! END FOR
_Label_1197:
! CALL STATEMENT...
!   _temp_1204 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1205 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1206 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1205  sizeInBytes=4
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
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1034,r13		! source line 1034
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
	.word	_Label_1207
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1209
	.word	-12
	.word	4
	.word	_Label_1210
	.word	-16
	.word	4
	.word	_Label_1211
	.word	-20
	.word	4
	.word	_Label_1212
	.word	-24
	.word	4
	.word	_Label_1213
	.word	-28
	.word	4
	.word	_Label_1214
	.word	-32
	.word	4
	.word	_Label_1215
	.word	-36
	.word	4
	.word	_Label_1216
	.word	-40
	.word	4
	.word	_Label_1217
	.word	-44
	.word	4
	.word	_Label_1218
	.word	-48
	.word	4
	.word	_Label_1219
	.word	-52
	.word	4
	.word	_Label_1220
	.word	-56
	.word	4
	.word	0
_Label_1207:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1208:
	.ascii	"Pself\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1219:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1220:
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
_Label_1983:
	push	r0
	sub	r1,1,r1
	bne	_Label_1983
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1221 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1226 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1227 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1226  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1222:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1227 then goto _Label_1225		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1225
_Label_1223:
	mov	1048,r13		! source line 1048
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1229 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1229 [i ] into _temp_1230
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
_Label_1224:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1222
! END FOR
_Label_1225:
! CALL STATEMENT...
!   _temp_1231 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1232 = _function_137_PrintObjectAddr
	set	_function_137_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1233 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1232  sizeInBytes=4
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
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
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
	.word	_Label_1234
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1236
	.word	-12
	.word	4
	.word	_Label_1237
	.word	-16
	.word	4
	.word	_Label_1238
	.word	-20
	.word	4
	.word	_Label_1239
	.word	-24
	.word	4
	.word	_Label_1240
	.word	-28
	.word	4
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	_Label_1244
	.word	-44
	.word	4
	.word	_Label_1245
	.word	-48
	.word	4
	.word	_Label_1246
	.word	-52
	.word	4
	.word	0
_Label_1234:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1235:
	.ascii	"Pself\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1245:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1246:
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
	mov	16,r1
_Label_1984:
	push	r0
	sub	r1,1,r1
	bne	_Label_1984
	mov	1061,r13		! source line 1061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1247 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0WH",r10
_Label_1248:
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1252 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1251  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1253 = _temp_1251 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1253 then goto _Label_1250 else goto _Label_1249
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1249
	jmp	_Label_1250
_Label_1249:
	mov	1071,r13		! source line 1071
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   _temp_1254 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1255 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1254  sizeInBytes=4
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
	jmp	_Label_1248
_Label_1250:
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1256 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1257 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1257 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0IF",r10
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1261 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1262 = _temp_1260 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1262 then goto _Label_1259 else goto _Label_1258
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1258
	jmp	_Label_1259
_Label_1258:
! THEN...
	mov	1079,r13		! source line 1079
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1263 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1264  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1265 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_1266
_Label_1259:
! ELSE...
	mov	1083,r13		! source line 1083
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1266:
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1267 = &processManagerLock
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
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1268
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1270
	.word	-16
	.word	4
	.word	_Label_1271
	.word	-20
	.word	4
	.word	_Label_1272
	.word	-24
	.word	4
	.word	_Label_1273
	.word	-28
	.word	4
	.word	_Label_1274
	.word	-9
	.word	1
	.word	_Label_1275
	.word	-32
	.word	4
	.word	_Label_1276
	.word	-10
	.word	1
	.word	_Label_1277
	.word	-36
	.word	4
	.word	_Label_1278
	.word	-40
	.word	4
	.word	_Label_1279
	.word	-44
	.word	4
	.word	_Label_1280
	.word	-48
	.word	4
	.word	_Label_1281
	.word	-11
	.word	1
	.word	_Label_1282
	.word	-52
	.word	4
	.word	_Label_1283
	.word	-12
	.word	1
	.word	_Label_1284
	.word	-56
	.word	4
	.word	_Label_1285
	.word	-60
	.word	4
	.word	_Label_1286
	.word	-64
	.word	4
	.word	0
_Label_1268:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1269:
	.ascii	"Pself\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1274:
	.byte	'C'
	.ascii	"_temp_1262\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"_temp_1260\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1281:
	.byte	'C'
	.ascii	"_temp_1253\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1283:
	.byte	'C'
	.ascii	"_temp_1251\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1285:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1286:
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
	mov	11,r1
_Label_1985:
	push	r0
	sub	r1,1,r1
	bne	_Label_1985
	mov	1091,r13		! source line 1091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1287 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0IF",r10
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_1291 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1290  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1292 = _temp_1290 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1292 then goto _Label_1289 else goto _Label_1288
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1288
	jmp	_Label_1289
_Label_1288:
! THEN...
	mov	1098,r13		! source line 1098
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1293 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1293  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1289:
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1294 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1294 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1295 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1296 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1297 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1296  sizeInBytes=4
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
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1298 = &processManagerLock
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
! RETURN STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1299
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1301
	.word	12
	.word	4
	.word	_Label_1302
	.word	-16
	.word	4
	.word	_Label_1303
	.word	-20
	.word	4
	.word	_Label_1304
	.word	-24
	.word	4
	.word	_Label_1305
	.word	-28
	.word	4
	.word	_Label_1306
	.word	-32
	.word	4
	.word	_Label_1307
	.word	-36
	.word	4
	.word	_Label_1308
	.word	-9
	.word	1
	.word	_Label_1309
	.word	-40
	.word	4
	.word	_Label_1310
	.word	-10
	.word	1
	.word	_Label_1311
	.word	-44
	.word	4
	.word	0
_Label_1299:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1300:
	.ascii	"Pself\0"
	.align
_Label_1301:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1308:
	.byte	'C'
	.ascii	"_temp_1292\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1310:
	.byte	'C'
	.ascii	"_temp_1290\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1312
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1312:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1313
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1313:
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
_Label_1986:
	push	r0
	sub	r1,1,r1
	bne	_Label_1986
	mov	1136,r13		! source line 1136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1314 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1142,r13		! source line 1142
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
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
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1316 = &framesInUse
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
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
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
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1318 = &frameManagerLock
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
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
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
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1320 = &restOfLine
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
	mov	1151,r13		! source line 1151
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1322 = &newFramesAvailable
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
	mov	1158,r13		! source line 1158
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1327 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1328 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1327  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1323:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1328 then goto _Label_1326		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1326
_Label_1324:
	mov	1158,r13		! source line 1158
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1331 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1331) then goto _Label_1330
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1330
!	jmp	_Label_1329
_Label_1329:
! THEN...
	mov	1162,r13		! source line 1162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1332 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1162,r13		! source line 1162
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1330:
!   Increment the FOR-LOOP index variable and jump back
_Label_1325:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1323
! END FOR
_Label_1326:
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
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
	.word	_Label_1333
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1334
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1335
	.word	-12
	.word	4
	.word	_Label_1336
	.word	-16
	.word	4
	.word	_Label_1337
	.word	-20
	.word	4
	.word	_Label_1338
	.word	-24
	.word	4
	.word	_Label_1339
	.word	-28
	.word	4
	.word	_Label_1340
	.word	-32
	.word	4
	.word	_Label_1341
	.word	-36
	.word	4
	.word	_Label_1342
	.word	-40
	.word	4
	.word	_Label_1343
	.word	-44
	.word	4
	.word	_Label_1344
	.word	-48
	.word	4
	.word	_Label_1345
	.word	-52
	.word	4
	.word	_Label_1346
	.word	-56
	.word	4
	.word	_Label_1347
	.word	-60
	.word	4
	.word	_Label_1348
	.word	-64
	.word	4
	.word	0
_Label_1333:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1334:
	.ascii	"Pself\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1348:
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
_Label_1987:
	push	r0
	sub	r1,1,r1
	bne	_Label_1987
	mov	1169,r13		! source line 1169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_1349 = &frameManagerLock
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
!   _temp_1350 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1350  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1351 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1351  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1352 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1353 = &framesInUse
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
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_1354 = &frameManagerLock
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
	mov	1178,r13		! source line 1178
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
	.word	_Label_1355
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1356
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1357
	.word	-12
	.word	4
	.word	_Label_1358
	.word	-16
	.word	4
	.word	_Label_1359
	.word	-20
	.word	4
	.word	_Label_1360
	.word	-24
	.word	4
	.word	_Label_1361
	.word	-28
	.word	4
	.word	_Label_1362
	.word	-32
	.word	4
	.word	0
_Label_1355:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1356:
	.ascii	"Pself\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1349\0"
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
_Label_1988:
	push	r0
	sub	r1,1,r1
	bne	_Label_1988
	mov	1183,r13		! source line 1183
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_1363 = &frameManagerLock
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
	mov	1194,r13		! source line 1194
	mov	"\0\0WH",r10
_Label_1364:
!   if numberFreeFrames >= 1 then goto _Label_1366		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1366
!	jmp	_Label_1365
_Label_1365:
	mov	1194,r13		! source line 1194
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1367 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1368 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1367  sizeInBytes=4
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
	jmp	_Label_1364
_Label_1366:
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   _temp_1369 = &framesInUse
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
	mov	1200,r13		! source line 1200
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
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1370 = &frameManagerLock
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
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   _temp_1371 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1371		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1208,r13		! source line 1208
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
	.word	_Label_1372
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1374
	.word	-12
	.word	4
	.word	_Label_1375
	.word	-16
	.word	4
	.word	_Label_1376
	.word	-20
	.word	4
	.word	_Label_1377
	.word	-24
	.word	4
	.word	_Label_1378
	.word	-28
	.word	4
	.word	_Label_1379
	.word	-32
	.word	4
	.word	_Label_1380
	.word	-36
	.word	4
	.word	_Label_1381
	.word	-40
	.word	4
	.word	0
_Label_1372:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1373:
	.ascii	"Pself\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1380:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1381:
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
_Label_1989:
	push	r0
	sub	r1,1,r1
	bne	_Label_1989
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1382 = &frameManagerLock
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
	mov	1218,r13		! source line 1218
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
	mov	1219,r13		! source line 1219
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1384		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1384
!	jmp	_Label_1383
_Label_1383:
! THEN...
	mov	1220,r13		! source line 1220
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1385 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1386 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1385  sizeInBytes=4
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
_Label_1384:
! WHILE STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0WH",r10
_Label_1387:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1389		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1389
!	jmp	_Label_1388
_Label_1388:
	mov	1223,r13		! source line 1223
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_1390 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1391 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1390  sizeInBytes=4
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
	jmp	_Label_1387
_Label_1389:
! FOR STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1396 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1397 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1396  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1392:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1397 then goto _Label_1395		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1395
_Label_1393:
	mov	1227,r13		! source line 1227
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
!   _temp_1398 = &framesInUse
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
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
!   _temp_1399 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1399		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1230,r13		! source line 1230
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
_Label_1394:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1392
! END FOR
_Label_1395:
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
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
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1400 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
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
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1401 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1402 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1401  sizeInBytes=4
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
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1403 = &frameManagerLock
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
	mov	1238,r13		! source line 1238
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
	.word	_Label_1404
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1406
	.word	12
	.word	4
	.word	_Label_1407
	.word	16
	.word	4
	.word	_Label_1408
	.word	-12
	.word	4
	.word	_Label_1409
	.word	-16
	.word	4
	.word	_Label_1410
	.word	-20
	.word	4
	.word	_Label_1411
	.word	-24
	.word	4
	.word	_Label_1412
	.word	-28
	.word	4
	.word	_Label_1413
	.word	-32
	.word	4
	.word	_Label_1414
	.word	-36
	.word	4
	.word	_Label_1415
	.word	-40
	.word	4
	.word	_Label_1416
	.word	-44
	.word	4
	.word	_Label_1417
	.word	-48
	.word	4
	.word	_Label_1418
	.word	-52
	.word	4
	.word	_Label_1419
	.word	-56
	.word	4
	.word	_Label_1420
	.word	-60
	.word	4
	.word	_Label_1421
	.word	-64
	.word	4
	.word	_Label_1422
	.word	-68
	.word	4
	.word	0
_Label_1404:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1405:
	.ascii	"Pself\0"
	.align
_Label_1406:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1407:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1421:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1422:
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
_Label_1990:
	push	r0
	sub	r1,1,r1
	bne	_Label_1990
	mov	1243,r13		! source line 1243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_1423 = &frameManagerLock
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
	mov	1248,r13		! source line 1248
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1428 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1430 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1429 = _temp_1430 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1428  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1424:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1429 then goto _Label_1427		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1427
_Label_1425:
	mov	1248,r13		! source line 1248
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
	mov	1249,r13		! source line 1249
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
	mov	1250,r13		! source line 1250
	mov	"\0\0AS",r10
!   _temp_1432 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1432 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
!   _temp_1433 = &framesInUse
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
_Label_1426:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1424
! END FOR
_Label_1427:
! ASSIGNMENT STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1434 = *_temp_1435  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1434		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
!   _temp_1436 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1437 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1436  sizeInBytes=4
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
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1438 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1438 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1439 = &frameManagerLock
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
	mov	1258,r13		! source line 1258
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
	.word	_Label_1440
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1442
	.word	12
	.word	4
	.word	_Label_1443
	.word	-12
	.word	4
	.word	_Label_1444
	.word	-16
	.word	4
	.word	_Label_1445
	.word	-20
	.word	4
	.word	_Label_1446
	.word	-24
	.word	4
	.word	_Label_1447
	.word	-28
	.word	4
	.word	_Label_1448
	.word	-32
	.word	4
	.word	_Label_1449
	.word	-36
	.word	4
	.word	_Label_1450
	.word	-40
	.word	4
	.word	_Label_1451
	.word	-44
	.word	4
	.word	_Label_1452
	.word	-48
	.word	4
	.word	_Label_1453
	.word	-52
	.word	4
	.word	_Label_1454
	.word	-56
	.word	4
	.word	_Label_1455
	.word	-60
	.word	4
	.word	_Label_1456
	.word	-64
	.word	4
	.word	_Label_1457
	.word	-68
	.word	4
	.word	_Label_1458
	.word	-72
	.word	4
	.word	0
_Label_1440:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1441:
	.ascii	"Pself\0"
	.align
_Label_1442:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1456:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1457:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1458:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1459
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
_Label_1459:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1460
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1460:
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
_Label_1991:
	push	r0
	sub	r1,1,r1
	bne	_Label_1991
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0AS",r10
!   _temp_1461 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1463 = &_temp_1462
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1463 = _temp_1463 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1465:
!   Data Move: *_temp_1463 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1463 = _temp_1463 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1464 = _temp_1464 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1464) then goto _Label_1465
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1465
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1466 = &_temp_1462
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1992
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1992:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1461 = *_temp_1466  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1993:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1993
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
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
	.word	_Label_1467
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1469
	.word	-12
	.word	4
	.word	_Label_1470
	.word	-16
	.word	4
	.word	_Label_1471
	.word	-20
	.word	4
	.word	_Label_1472
	.word	-104
	.word	84
	.word	_Label_1473
	.word	-108
	.word	4
	.word	0
_Label_1467:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1468:
	.ascii	"Pself\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1461\0"
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
_Label_1994:
	push	r0
	sub	r1,1,r1
	bne	_Label_1994
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1474 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1475 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1480 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1481 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1480  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1476:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1481 then goto _Label_1479		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1479
_Label_1477:
	mov	1286,r13		! source line 1286
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1482 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1484 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1484 [i ] into _temp_1485
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
!   _temp_1483 = _temp_1485		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1486 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1488 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1488 [i ] into _temp_1489
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
!   Data Move: _temp_1487 = *_temp_1489  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1490 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1491 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1492 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1493  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1495 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0IF",r10
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1499) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1498) then goto _Label_1497
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1497
!	jmp	_Label_1496
_Label_1496:
! THEN...
	mov	1297,r13		! source line 1297
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1501) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1502
_Label_1497:
! ELSE...
	mov	1299,r13		! source line 1299
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1502:
! CALL STATEMENT...
!   _temp_1504 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0IF",r10
	mov	1302,r13		! source line 1302
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1505 else goto _Label_1506
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1506
	jmp	_Label_1505
_Label_1505:
! THEN...
	mov	1303,r13		! source line 1303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1509
_Label_1506:
! ELSE...
	mov	1305,r13		! source line 1305
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1305,r13		! source line 1305
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1509:
! CALL STATEMENT...
!   _temp_1511 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0IF",r10
	mov	1308,r13		! source line 1308
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1514) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1512 else goto _Label_1513
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1513
	jmp	_Label_1512
_Label_1512:
! THEN...
	mov	1309,r13		! source line 1309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1515 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1516
_Label_1513:
! ELSE...
	mov	1311,r13		! source line 1311
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1517 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1516:
! CALL STATEMENT...
!   _temp_1518 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0IF",r10
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1521) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1519 else goto _Label_1520
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1520
	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	1315,r13		! source line 1315
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1522 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1523
_Label_1520:
! ELSE...
	mov	1317,r13		! source line 1317
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1524 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1523:
! CALL STATEMENT...
!   _temp_1525 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1319,r13		! source line 1319
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0IF",r10
	mov	1320,r13		! source line 1320
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1528) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1526 else goto _Label_1527
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1527
	jmp	_Label_1526
_Label_1526:
! THEN...
	mov	1321,r13		! source line 1321
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1529 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1321,r13		! source line 1321
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1530
_Label_1527:
! ELSE...
	mov	1323,r13		! source line 1323
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1531 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1323,r13		! source line 1323
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1530:
! CALL STATEMENT...
!   Call the function
	mov	1325,r13		! source line 1325
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1478:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1476
! END FOR
_Label_1479:
! RETURN STATEMENT...
	mov	1286,r13		! source line 1286
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	_Label_1540
	.word	-36
	.word	4
	.word	_Label_1541
	.word	-40
	.word	4
	.word	_Label_1542
	.word	-44
	.word	4
	.word	_Label_1543
	.word	-48
	.word	4
	.word	_Label_1544
	.word	-52
	.word	4
	.word	_Label_1545
	.word	-56
	.word	4
	.word	_Label_1546
	.word	-60
	.word	4
	.word	_Label_1547
	.word	-64
	.word	4
	.word	_Label_1548
	.word	-68
	.word	4
	.word	_Label_1549
	.word	-72
	.word	4
	.word	_Label_1550
	.word	-76
	.word	4
	.word	_Label_1551
	.word	-80
	.word	4
	.word	_Label_1552
	.word	-84
	.word	4
	.word	_Label_1553
	.word	-88
	.word	4
	.word	_Label_1554
	.word	-92
	.word	4
	.word	_Label_1555
	.word	-96
	.word	4
	.word	_Label_1556
	.word	-100
	.word	4
	.word	_Label_1557
	.word	-104
	.word	4
	.word	_Label_1558
	.word	-108
	.word	4
	.word	_Label_1559
	.word	-112
	.word	4
	.word	_Label_1560
	.word	-116
	.word	4
	.word	_Label_1561
	.word	-120
	.word	4
	.word	_Label_1562
	.word	-124
	.word	4
	.word	_Label_1563
	.word	-128
	.word	4
	.word	_Label_1564
	.word	-132
	.word	4
	.word	_Label_1565
	.word	-136
	.word	4
	.word	_Label_1566
	.word	-140
	.word	4
	.word	_Label_1567
	.word	-144
	.word	4
	.word	_Label_1568
	.word	-148
	.word	4
	.word	_Label_1569
	.word	-152
	.word	4
	.word	_Label_1570
	.word	-156
	.word	4
	.word	_Label_1571
	.word	-160
	.word	4
	.word	_Label_1572
	.word	-164
	.word	4
	.word	_Label_1573
	.word	-168
	.word	4
	.word	0
_Label_1532:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1573:
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
_Label_1995:
	push	r0
	sub	r1,1,r1
	bne	_Label_1995
	mov	1331,r13		! source line 1331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0RE",r10
!   _temp_1576 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1576 [entry ] into _temp_1577
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
!   Data Move: _temp_1575 = *_temp_1577  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1574 = _temp_1575 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1574  (sizeInBytes=4)
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
	.word	_Label_1578
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1580
	.word	12
	.word	4
	.word	_Label_1581
	.word	-12
	.word	4
	.word	_Label_1582
	.word	-16
	.word	4
	.word	_Label_1583
	.word	-20
	.word	4
	.word	_Label_1584
	.word	-24
	.word	4
	.word	0
_Label_1578:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1579:
	.ascii	"Pself\0"
	.align
_Label_1580:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1574\0"
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
_Label_1996:
	push	r0
	sub	r1,1,r1
	bne	_Label_1996
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
!   _temp_1587 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1587 [entry ] into _temp_1588
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
!   Data Move: _temp_1586 = *_temp_1588  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1585 = _temp_1586 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1585  (sizeInBytes=4)
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
	.word	_Label_1589
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1591
	.word	12
	.word	4
	.word	_Label_1592
	.word	-12
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
	.word	0
_Label_1589:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1590:
	.ascii	"Pself\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1588\0"
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
_Label_1997:
	push	r0
	sub	r1,1,r1
	bne	_Label_1997
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   _temp_1596 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1596 [entry ] into _temp_1597
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
!   _temp_1601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1601 [entry ] into _temp_1602
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
!   Data Move: _temp_1600 = *_temp_1602  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1599 = _temp_1600 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1598 = _temp_1599 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1597 = _temp_1598  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
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
	.word	_Label_1603
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	16
	.word	4
	.word	_Label_1607
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1613
	.word	-36
	.word	4
	.word	0
_Label_1603:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1596\0"
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
_Label_1998:
	push	r0
	sub	r1,1,r1
	bne	_Label_1998
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0RE",r10
!   _temp_1617 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1617 [entry ] into _temp_1618
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
!   Data Move: _temp_1616 = *_temp_1618  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1615 = _temp_1616 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1615) then goto _Label_1619
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1619
!   _temp_1614 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1620
_Label_1619:
!   _temp_1614 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1620:
!   ReturnResult: _temp_1614  (sizeInBytes=1)
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
	.word	_Label_1621
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1623
	.word	12
	.word	4
	.word	_Label_1624
	.word	-16
	.word	4
	.word	_Label_1625
	.word	-20
	.word	4
	.word	_Label_1626
	.word	-24
	.word	4
	.word	_Label_1627
	.word	-28
	.word	4
	.word	_Label_1628
	.word	-9
	.word	1
	.word	0
_Label_1621:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1622:
	.ascii	"Pself\0"
	.align
_Label_1623:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1628:
	.byte	'C'
	.ascii	"_temp_1614\0"
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
_Label_1999:
	push	r0
	sub	r1,1,r1
	bne	_Label_1999
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0RE",r10
!   _temp_1632 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1632 [entry ] into _temp_1633
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
!   Data Move: _temp_1631 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1630 = _temp_1631 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1630) then goto _Label_1634
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1634
!   _temp_1629 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1635
_Label_1634:
!   _temp_1629 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1635:
!   ReturnResult: _temp_1629  (sizeInBytes=1)
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
	.word	_Label_1636
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1638
	.word	12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-9
	.word	1
	.word	0
_Label_1636:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1637:
	.ascii	"Pself\0"
	.align
_Label_1638:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1643:
	.byte	'C'
	.ascii	"_temp_1629\0"
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
_Label_2000:
	push	r0
	sub	r1,1,r1
	bne	_Label_2000
	mov	1378,r13		! source line 1378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0RE",r10
!   _temp_1647 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1647 [entry ] into _temp_1648
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
!   Data Move: _temp_1646 = *_temp_1648  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1645 = _temp_1646 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1645) then goto _Label_1649
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1649
!   _temp_1644 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1650
_Label_1649:
!   _temp_1644 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1650:
!   ReturnResult: _temp_1644  (sizeInBytes=1)
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
	.word	_Label_1651
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1653
	.word	12
	.word	4
	.word	_Label_1654
	.word	-16
	.word	4
	.word	_Label_1655
	.word	-20
	.word	4
	.word	_Label_1656
	.word	-24
	.word	4
	.word	_Label_1657
	.word	-28
	.word	4
	.word	_Label_1658
	.word	-9
	.word	1
	.word	0
_Label_1651:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1652:
	.ascii	"Pself\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1658:
	.byte	'C'
	.ascii	"_temp_1644\0"
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
_Label_2001:
	push	r0
	sub	r1,1,r1
	bne	_Label_2001
	mov	1387,r13		! source line 1387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0RE",r10
!   _temp_1662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1662 [entry ] into _temp_1663
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
!   Data Move: _temp_1661 = *_temp_1663  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1660 = _temp_1661 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1660) then goto _Label_1664
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1664
!   _temp_1659 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1665
_Label_1664:
!   _temp_1659 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1665:
!   ReturnResult: _temp_1659  (sizeInBytes=1)
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
	.word	_Label_1666
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-9
	.word	1
	.word	0
_Label_1666:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"_temp_1659\0"
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
_Label_2002:
	push	r0
	sub	r1,1,r1
	bne	_Label_2002
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   _temp_1674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1674 [entry ] into _temp_1675
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
!   _temp_1678 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1678 [entry ] into _temp_1679
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
!   Data Move: _temp_1677 = *_temp_1679  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1676 = _temp_1677 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1675 = _temp_1676  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
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
	.word	_Label_1680
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1682
	.word	12
	.word	4
	.word	_Label_1683
	.word	-12
	.word	4
	.word	_Label_1684
	.word	-16
	.word	4
	.word	_Label_1685
	.word	-20
	.word	4
	.word	_Label_1686
	.word	-24
	.word	4
	.word	_Label_1687
	.word	-28
	.word	4
	.word	_Label_1688
	.word	-32
	.word	4
	.word	0
_Label_1680:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1681:
	.ascii	"Pself\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1674\0"
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
_Label_2003:
	push	r0
	sub	r1,1,r1
	bne	_Label_2003
	mov	1405,r13		! source line 1405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   _temp_1689 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1689 [entry ] into _temp_1690
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
!   _temp_1693 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1693 [entry ] into _temp_1694
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
!   Data Move: _temp_1692 = *_temp_1694  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1691 = _temp_1692 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1690 = _temp_1691  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
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
	.word	_Label_1695
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1697
	.word	12
	.word	4
	.word	_Label_1698
	.word	-12
	.word	4
	.word	_Label_1699
	.word	-16
	.word	4
	.word	_Label_1700
	.word	-20
	.word	4
	.word	_Label_1701
	.word	-24
	.word	4
	.word	_Label_1702
	.word	-28
	.word	4
	.word	_Label_1703
	.word	-32
	.word	4
	.word	0
_Label_1695:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1696:
	.ascii	"Pself\0"
	.align
_Label_1697:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1689\0"
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
_Label_2004:
	push	r0
	sub	r1,1,r1
	bne	_Label_2004
	mov	1414,r13		! source line 1414
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   _temp_1704 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1704 [entry ] into _temp_1705
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
!   _temp_1708 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1708 [entry ] into _temp_1709
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
!   Data Move: _temp_1707 = *_temp_1709  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1706 = _temp_1707 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1705 = _temp_1706  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
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
	.word	_Label_1710
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1711
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1712
	.word	12
	.word	4
	.word	_Label_1713
	.word	-12
	.word	4
	.word	_Label_1714
	.word	-16
	.word	4
	.word	_Label_1715
	.word	-20
	.word	4
	.word	_Label_1716
	.word	-24
	.word	4
	.word	_Label_1717
	.word	-28
	.word	4
	.word	_Label_1718
	.word	-32
	.word	4
	.word	0
_Label_1710:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1711:
	.ascii	"Pself\0"
	.align
_Label_1712:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1704\0"
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
_Label_2005:
	push	r0
	sub	r1,1,r1
	bne	_Label_2005
	mov	1423,r13		! source line 1423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   _temp_1719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1719 [entry ] into _temp_1720
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
!   _temp_1723 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1723 [entry ] into _temp_1724
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
!   Data Move: _temp_1722 = *_temp_1724  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1721 = _temp_1722 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1720 = _temp_1721  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
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
	.word	_Label_1725
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1727
	.word	12
	.word	4
	.word	_Label_1728
	.word	-12
	.word	4
	.word	_Label_1729
	.word	-16
	.word	4
	.word	_Label_1730
	.word	-20
	.word	4
	.word	_Label_1731
	.word	-24
	.word	4
	.word	_Label_1732
	.word	-28
	.word	4
	.word	_Label_1733
	.word	-32
	.word	4
	.word	0
_Label_1725:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1726:
	.ascii	"Pself\0"
	.align
_Label_1727:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1719\0"
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
_Label_2006:
	push	r0
	sub	r1,1,r1
	bne	_Label_2006
	mov	1432,r13		! source line 1432
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   _temp_1734 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1734 [entry ] into _temp_1735
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
!   _temp_1738 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1738 [entry ] into _temp_1739
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
!   Data Move: _temp_1737 = *_temp_1739  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1736 = _temp_1737 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1735 = _temp_1736  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
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
	.word	_Label_1740
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1741
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1742
	.word	12
	.word	4
	.word	_Label_1743
	.word	-12
	.word	4
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	0
_Label_1740:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1741:
	.ascii	"Pself\0"
	.align
_Label_1742:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1734\0"
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
_Label_2007:
	push	r0
	sub	r1,1,r1
	bne	_Label_2007
	mov	1441,r13		! source line 1441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   _temp_1749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1749 [entry ] into _temp_1750
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
!   _temp_1753 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1753 [entry ] into _temp_1754
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
!   Data Move: _temp_1752 = *_temp_1754  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1751 = _temp_1752 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1750 = _temp_1751  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
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
	.word	_Label_1755
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1756
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1757
	.word	12
	.word	4
	.word	_Label_1758
	.word	-12
	.word	4
	.word	_Label_1759
	.word	-16
	.word	4
	.word	_Label_1760
	.word	-20
	.word	4
	.word	_Label_1761
	.word	-24
	.word	4
	.word	_Label_1762
	.word	-28
	.word	4
	.word	_Label_1763
	.word	-32
	.word	4
	.word	0
_Label_1755:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1756:
	.ascii	"Pself\0"
	.align
_Label_1757:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1749\0"
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
_Label_2008:
	push	r0
	sub	r1,1,r1
	bne	_Label_2008
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   _temp_1764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1764 [entry ] into _temp_1765
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
!   _temp_1768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1768 [entry ] into _temp_1769
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
!   Data Move: _temp_1767 = *_temp_1769  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1766 = _temp_1767 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1765 = _temp_1766  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
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
	.word	_Label_1770
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1772
	.word	12
	.word	4
	.word	_Label_1773
	.word	-12
	.word	4
	.word	_Label_1774
	.word	-16
	.word	4
	.word	_Label_1775
	.word	-20
	.word	4
	.word	_Label_1776
	.word	-24
	.word	4
	.word	_Label_1777
	.word	-28
	.word	4
	.word	_Label_1778
	.word	-32
	.word	4
	.word	0
_Label_1770:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1771:
	.ascii	"Pself\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1764\0"
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
_Label_2009:
	push	r0
	sub	r1,1,r1
	bne	_Label_2009
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   _temp_1779 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1779 [entry ] into _temp_1780
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
!   _temp_1783 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1783 [entry ] into _temp_1784
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
!   Data Move: _temp_1782 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1781 = _temp_1782 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1780 = _temp_1781  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1463,r13		! source line 1463
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
	.word	_Label_1785
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1787
	.word	12
	.word	4
	.word	_Label_1788
	.word	-12
	.word	4
	.word	_Label_1789
	.word	-16
	.word	4
	.word	_Label_1790
	.word	-20
	.word	4
	.word	_Label_1791
	.word	-24
	.word	4
	.word	_Label_1792
	.word	-28
	.word	4
	.word	_Label_1793
	.word	-32
	.word	4
	.word	0
_Label_1785:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1786:
	.ascii	"Pself\0"
	.align
_Label_1787:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1779\0"
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
_Label_2010:
	push	r0
	sub	r1,1,r1
	bne	_Label_2010
	mov	1468,r13		! source line 1468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1795 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1795 [0 ] into _temp_1796
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
!   _temp_1794 = _temp_1796		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1797 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1474,r13		! source line 1474
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
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
	.word	_Label_1798
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1800
	.word	-12
	.word	4
	.word	_Label_1801
	.word	-16
	.word	4
	.word	_Label_1802
	.word	-20
	.word	4
	.word	_Label_1803
	.word	-24
	.word	4
	.word	0
_Label_1798:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1799:
	.ascii	"Pself\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1794\0"
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
_Label_2011:
	push	r0
	sub	r1,1,r1
	bne	_Label_2011
	mov	1479,r13		! source line 1479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1804
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1804
	jmp	_Label_1805
_Label_1804:
! THEN...
	mov	1495,r13		! source line 1495
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1806
_Label_1805:
! ELSE...
	mov	1496,r13		! source line 1496
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1808		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1808
!	jmp	_Label_1807
_Label_1807:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1808:
! END IF...
_Label_1806:
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
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
	mov	1500,r13		! source line 1500
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
	mov	1503,r13		! source line 1503
	mov	"\0\0WH",r10
_Label_1809:
!	jmp	_Label_1810
_Label_1810:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1813		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1813
!	jmp	_Label_1812
_Label_1812:
! THEN...
	mov	1505,r13		! source line 1505
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1814 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1505,r13		! source line 1505
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1813:
! IF STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0IF",r10
	mov	1508,r13		! source line 1508
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1818) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1817  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1817 then goto _Label_1816 else goto _Label_1815
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1815
	jmp	_Label_1816
_Label_1815:
! THEN...
	mov	1509,r13		! source line 1509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1819 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1816:
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
	mov	1512,r13		! source line 1512
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1821) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1820  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1820 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0WH",r10
_Label_1822:
!   if offset >= 8192 then goto _Label_1824		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1824
!	jmp	_Label_1823
_Label_1823:
	mov	1514,r13		! source line 1514
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1825 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1825  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1827		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1827
!	jmp	_Label_1826
_Label_1826:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1827:
! END WHILE...
	jmp	_Label_1822
_Label_1824:
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1809
_Label_1811:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1828
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1830
	.word	12
	.word	4
	.word	_Label_1831
	.word	16
	.word	4
	.word	_Label_1832
	.word	20
	.word	4
	.word	_Label_1833
	.word	-9
	.word	1
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-10
	.word	1
	.word	_Label_1839
	.word	-32
	.word	4
	.word	_Label_1840
	.word	-36
	.word	4
	.word	_Label_1841
	.word	-40
	.word	4
	.word	_Label_1842
	.word	-44
	.word	4
	.word	_Label_1843
	.word	-48
	.word	4
	.word	0
_Label_1828:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1829:
	.ascii	"Pself\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1831:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1832:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1833:
	.byte	'C'
	.ascii	"_temp_1825\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1838:
	.byte	'C'
	.ascii	"_temp_1817\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1843:
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
_Label_2012:
	push	r0
	sub	r1,1,r1
	bne	_Label_2012
	mov	1533,r13		! source line 1533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1844
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1844
	jmp	_Label_1845
_Label_1844:
! THEN...
	mov	1545,r13		! source line 1545
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1846
_Label_1845:
! ELSE...
	mov	1546,r13		! source line 1546
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1848		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1848
!	jmp	_Label_1847
_Label_1847:
! THEN...
	mov	1547,r13		! source line 1547
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1848:
! END IF...
_Label_1846:
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
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
	mov	1550,r13		! source line 1550
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
	mov	1551,r13		! source line 1551
	mov	"\0\0WH",r10
_Label_1849:
!	jmp	_Label_1850
_Label_1850:
	mov	1551,r13		! source line 1551
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1855		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1855
	jmp	_Label_1852
_Label_1855:
	mov	1553,r13		! source line 1553
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1857) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1856  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1856 then goto _Label_1854 else goto _Label_1852
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1852
	jmp	_Label_1854
_Label_1854:
	mov	1554,r13		! source line 1554
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1859) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1858  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1858 then goto _Label_1853 else goto _Label_1852
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1852
	jmp	_Label_1853
_Label_1852:
! THEN...
	mov	1555,r13		! source line 1555
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1853:
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
	mov	1557,r13		! source line 1557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1861) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1860  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1860 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0WH",r10
_Label_1862:
!   if offset >= 8192 then goto _Label_1864		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1864
!	jmp	_Label_1863
_Label_1863:
	mov	1558,r13		! source line 1558
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1865 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1865  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1867		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1867
!	jmp	_Label_1866
_Label_1866:
! THEN...
	mov	1565,r13		! source line 1565
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1867:
! END WHILE...
	jmp	_Label_1862
_Label_1864:
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1849
_Label_1851:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1868
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1870
	.word	12
	.word	4
	.word	_Label_1871
	.word	16
	.word	4
	.word	_Label_1872
	.word	20
	.word	4
	.word	_Label_1873
	.word	-9
	.word	1
	.word	_Label_1874
	.word	-16
	.word	4
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	_Label_1877
	.word	-10
	.word	1
	.word	_Label_1878
	.word	-28
	.word	4
	.word	_Label_1879
	.word	-11
	.word	1
	.word	_Label_1880
	.word	-32
	.word	4
	.word	_Label_1881
	.word	-36
	.word	4
	.word	_Label_1882
	.word	-40
	.word	4
	.word	_Label_1883
	.word	-44
	.word	4
	.word	0
_Label_1868:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1869:
	.ascii	"Pself\0"
	.align
_Label_1870:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1871:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1873:
	.byte	'C'
	.ascii	"_temp_1865\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1877:
	.byte	'C'
	.ascii	"_temp_1858\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1879:
	.byte	'C'
	.ascii	"_temp_1856\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1882:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1883:
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
_Label_2013:
	push	r0
	sub	r1,1,r1
	bne	_Label_2013
	mov	1575,r13		! source line 1575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0IF",r10
	mov	1599,r13		! source line 1599
	mov	"\0\0SE",r10
!   _temp_1887 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1888) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1887  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1886  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1886 >= 4 then goto _Label_1885		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1885
!	jmp	_Label_1884
_Label_1884:
! THEN...
	mov	1602,r13		! source line 1602
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1885:
! IF STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1890		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1890
!	jmp	_Label_1889
_Label_1889:
! THEN...
	mov	1607,r13		! source line 1607
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1890:
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
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
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
	mov	1612,r13		! source line 1612
	mov	"\0\0SE",r10
!   _temp_1893 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1892 = _temp_1893 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1894 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1895) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1892  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1894  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1891  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1891  (sizeInBytes=4)
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
	.word	_Label_1896
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	12
	.word	4
	.word	_Label_1899
	.word	16
	.word	4
	.word	_Label_1900
	.word	20
	.word	4
	.word	_Label_1901
	.word	-12
	.word	4
	.word	_Label_1902
	.word	-16
	.word	4
	.word	_Label_1903
	.word	-20
	.word	4
	.word	_Label_1904
	.word	-24
	.word	4
	.word	_Label_1905
	.word	-28
	.word	4
	.word	_Label_1906
	.word	-32
	.word	4
	.word	_Label_1907
	.word	-36
	.word	4
	.word	_Label_1908
	.word	-40
	.word	4
	.word	_Label_1909
	.word	-44
	.word	4
	.word	0
_Label_1896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1899:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1909:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

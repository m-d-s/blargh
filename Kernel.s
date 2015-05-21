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
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
	.align
! String constants
_StringConst_137:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_136:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_130:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_123:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_122:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_116:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_115:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_114:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_113:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_112:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_111:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_110:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_107:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_106:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_103:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_102:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_101:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_100:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_99:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_98:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_97:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_96:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_95:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_94:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_93:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_92:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_90:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_89:
	.word	2			! length
	.ascii	"T9"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"T8"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"T7"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"T6"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"T5"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"T4"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"T3"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"T2"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"T1"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	"T0"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_78:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_77:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_76:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_75:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_68:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_67:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_66:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_64:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_62:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_61:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_60:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_56:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_54:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_52:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_49:
	.word	20			! length
	.ascii	"\nNO WAITING THREADS\n"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"HoareTest called by a thread other than current thread"
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
	set	0x3dd87987,r4		! myHashVal = 1037597063
	cmp	r3,r4
	be	_Label_142
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
_Label_142:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_143
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_143
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_143
_Label_143:
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
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_144 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_144  sizeInBytes=4
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
_Label_1929:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1929
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_148 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_149 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_148  sizeInBytes=4
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
!   _temp_150 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_151 = _temp_150 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_151 = 3  (sizeInBytes=4)
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
_Label_1930:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1930
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_153 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_154 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
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
!   _temp_155 = _function_141_IdleFunction
	set	_function_141_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_156 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_155  sizeInBytes=4
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
	.word	_Label_157
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_158
	.word	-12
	.word	4
	.word	_Label_159
	.word	-16
	.word	4
	.word	_Label_160
	.word	-20
	.word	4
	.word	_Label_161
	.word	-24
	.word	4
	.word	_Label_162
	.word	-28
	.word	4
	.word	_Label_163
	.word	-32
	.word	4
	.word	_Label_164
	.word	-36
	.word	4
	.word	_Label_165
	.word	-40
	.word	4
	.word	_Label_166
	.word	-44
	.word	4
	.word	_Label_167
	.word	-48
	.word	4
	.word	_Label_168
	.word	-52
	.word	4
	.word	_Label_169
	.word	-56
	.word	4
	.word	_Label_170
	.word	-60
	.word	4
	.word	0
_Label_157:
	.ascii	"InitializeScheduler\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_141_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_141_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1931:
	push	r0
	sub	r1,1,r1
	bne	_Label_1931
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_171:
!	jmp	_Label_172
_Label_172:
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
!   _temp_176 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_174 else goto _Label_175
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_175
	jmp	_Label_174
_Label_174:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_177
_Label_175:
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
_Label_177:
! END WHILE...
	jmp	_Label_171
_Label_173:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_141_IdleFunction:
	.word	_sourceFileName
	.word	_Label_178
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_179
	.word	8
	.word	4
	.word	_Label_180
	.word	-12
	.word	4
	.word	_Label_181
	.word	-16
	.word	4
	.word	0
_Label_178:
	.ascii	"IdleFunction\0"
	.align
_Label_179:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_181:
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
_Label_1932:
	push	r0
	sub	r1,1,r1
	bne	_Label_1932
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
!   _temp_184 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_186 [0 ] into _temp_187
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
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_183:
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
!   _temp_188 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_188 = 3  (sizeInBytes=4)
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
_Label_189:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_193 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_192  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_192 then goto _Label_191 else goto _Label_190
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_190
	jmp	_Label_191
_Label_190:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_194 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_195 = &_P_Kernel_threadManager
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
	jmp	_Label_189
_Label_191:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_198 ) then goto _Label_197		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_197
!	jmp	_Label_196
_Label_196:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_200 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_200 [0 ] into _temp_201
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
!   _temp_199 = _temp_201		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_199  sizeInBytes=4
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
!   _temp_203 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_202 = *_temp_203  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_202) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_204 = _temp_202 + 32
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
_Label_197:
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
	.word	_Label_205
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_206
	.word	8
	.word	4
	.word	_Label_207
	.word	-16
	.word	4
	.word	_Label_208
	.word	-20
	.word	4
	.word	_Label_209
	.word	-24
	.word	4
	.word	_Label_210
	.word	-28
	.word	4
	.word	_Label_211
	.word	-32
	.word	4
	.word	_Label_212
	.word	-36
	.word	4
	.word	_Label_213
	.word	-40
	.word	4
	.word	_Label_214
	.word	-44
	.word	4
	.word	_Label_215
	.word	-48
	.word	4
	.word	_Label_216
	.word	-52
	.word	4
	.word	_Label_217
	.word	-9
	.word	1
	.word	_Label_218
	.word	-56
	.word	4
	.word	_Label_219
	.word	-60
	.word	4
	.word	_Label_220
	.word	-64
	.word	4
	.word	_Label_221
	.word	-68
	.word	4
	.word	_Label_222
	.word	-72
	.word	4
	.word	_Label_223
	.word	-76
	.word	4
	.word	_Label_224
	.word	-80
	.word	4
	.word	0
_Label_205:
	.ascii	"Run\0"
	.align
_Label_206:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_217:
	.byte	'C'
	.ascii	"_temp_192\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_223:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_224:
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
_Label_1933:
	push	r0
	sub	r1,1,r1
	bne	_Label_1933
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
!   _temp_225 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_226 = _function_140_ThreadPrintShort
	set	_function_140_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_227 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
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
	.word	_Label_228
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_229
	.word	-12
	.word	4
	.word	_Label_230
	.word	-16
	.word	4
	.word	_Label_231
	.word	-20
	.word	4
	.word	_Label_232
	.word	-24
	.word	4
	.word	0
_Label_228:
	.ascii	"PrintReadyList\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_232:
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
_Label_1934:
	push	r0
	sub	r1,1,r1
	bne	_Label_1934
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
!   _temp_233 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_233  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_234 = *_temp_235  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
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
!   _temp_236 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
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
	.word	_Label_237
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	0
_Label_237:
	.ascii	"ThreadStartMain\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_243:
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
_Label_1935:
	push	r0
	sub	r1,1,r1
	bne	_Label_1935
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
!   _temp_244 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_245 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
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
	.word	_Label_246
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	0
_Label_246:
	.ascii	"ThreadFinish\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_249:
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
_Label_1936:
	push	r0
	sub	r1,1,r1
	bne	_Label_1936
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
!   _temp_250 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_252		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_252
!	jmp	_Label_251
_Label_251:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_253 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
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
!   _temp_255 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_254 = *_temp_255  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_252:
! CALL STATEMENT...
!   _temp_256 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
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
!   _temp_257 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_257  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_258 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_258  sizeInBytes=4
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
	.word	_Label_259
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_260
	.word	8
	.word	4
	.word	_Label_261
	.word	-12
	.word	4
	.word	_Label_262
	.word	-16
	.word	4
	.word	_Label_263
	.word	-20
	.word	4
	.word	_Label_264
	.word	-24
	.word	4
	.word	_Label_265
	.word	-28
	.word	4
	.word	_Label_266
	.word	-32
	.word	4
	.word	_Label_267
	.word	-36
	.word	4
	.word	_Label_268
	.word	-40
	.word	4
	.word	0
_Label_259:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_260:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_268:
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
_Label_1937:
	push	r0
	sub	r1,1,r1
	bne	_Label_1937
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
!   if newStatus != 1 then goto _Label_270		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_270
!	jmp	_Label_269
_Label_269:
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
	jmp	_Label_271
_Label_270:
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
_Label_271:
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
	.word	_Label_272
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-12
	.word	4
	.word	0
_Label_272:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_273:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_274:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_140_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_140_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1938:
	push	r0
	sub	r1,1,r1
	bne	_Label_1938
	mov	825,r13		! source line 825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_278		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_278
!   _temp_277 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_279
_Label_278:
!   _temp_277 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_279:
!   if _temp_277 then goto _Label_276 else goto _Label_275
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_275
	jmp	_Label_276
_Label_275:
! THEN...
	mov	834,r13		! source line 834
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_280 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_276:
! CALL STATEMENT...
!   _temp_281 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_282 = *_temp_283  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_284 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	840,r13		! source line 840
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_292 = *_temp_293  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_287
	cmp	r1,2
	be	_Label_288
	cmp	r1,3
	be	_Label_289
	cmp	r1,4
	be	_Label_290
	cmp	r1,5
	be	_Label_291
	jmp	_Label_285
! CASE 1...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0BR",r10
	jmp	_Label_286
! CASE 2...
_Label_288:
! CALL STATEMENT...
!   _temp_295 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0BR",r10
	jmp	_Label_286
! CASE 3...
_Label_289:
! CALL STATEMENT...
!   _temp_296 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0BR",r10
	jmp	_Label_286
! CASE 4...
_Label_290:
! CALL STATEMENT...
!   _temp_297 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0BR",r10
	jmp	_Label_286
! CASE 5...
_Label_291:
! CALL STATEMENT...
!   _temp_298 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0BR",r10
	jmp	_Label_286
! DEFAULT CASE...
_Label_285:
! CALL STATEMENT...
!   _temp_299 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	857,r13		! source line 857
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_286:
! CALL STATEMENT...
!   _temp_300 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_301 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_302 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_140_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_303
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_304
	.word	8
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	_Label_308
	.word	-28
	.word	4
	.word	_Label_309
	.word	-32
	.word	4
	.word	_Label_310
	.word	-36
	.word	4
	.word	_Label_311
	.word	-40
	.word	4
	.word	_Label_312
	.word	-44
	.word	4
	.word	_Label_313
	.word	-48
	.word	4
	.word	_Label_314
	.word	-52
	.word	4
	.word	_Label_315
	.word	-56
	.word	4
	.word	_Label_316
	.word	-60
	.word	4
	.word	_Label_317
	.word	-64
	.word	4
	.word	_Label_318
	.word	-68
	.word	4
	.word	_Label_319
	.word	-72
	.word	4
	.word	_Label_320
	.word	-76
	.word	4
	.word	_Label_321
	.word	-9
	.word	1
	.word	_Label_322
	.word	-80
	.word	4
	.word	0
_Label_303:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_321:
	.byte	'C'
	.ascii	"_temp_277\0"
	.align
_Label_322:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_139_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_139_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1939:
	push	r0
	sub	r1,1,r1
	bne	_Label_1939
	mov	1193,r13		! source line 1193
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_323 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_139_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_324
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_324:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_325:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
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
_Label_1940:
	push	r0
	sub	r1,1,r1
	bne	_Label_1940
	mov	1203,r13		! source line 1203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_327 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1209,r13		! source line 1209
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1209,r13		! source line 1209
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
	.word	_Label_328
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	8
	.word	4
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"ProcessFinish\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_327\0"
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
_Label_1941:
	push	r0
	sub	r1,1,r1
	bne	_Label_1941
	mov	1712,r13		! source line 1712
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1724,r13		! source line 1724
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
	mov	1725,r13		! source line 1725
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
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
	.word	_Label_331
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_331:
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
_Label_1942:
	push	r0
	sub	r1,1,r1
	bne	_Label_1942
	mov	1730,r13		! source line 1730
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_332 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1740,r13		! source line 1740
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
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
	.word	_Label_333
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_334
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
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
	mov	1752,r13		! source line 1752
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
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
	.word	_Label_335
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_335:
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
_Label_1943:
	push	r0
	sub	r1,1,r1
	bne	_Label_1943
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_336 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1773,r13		! source line 1773
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
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
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
_Label_1944:
	push	r0
	sub	r1,1,r1
	bne	_Label_1944
	mov	1778,r13		! source line 1778
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
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
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
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
_Label_1945:
	push	r0
	sub	r1,1,r1
	bne	_Label_1945
	mov	1790,r13		! source line 1790
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_342 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
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
	.word	_Label_343
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_343:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
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
_Label_1946:
	push	r0
	sub	r1,1,r1
	bne	_Label_1946
	mov	1802,r13		! source line 1802
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_345 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
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
	.word	_Label_346
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_347
	.word	-12
	.word	4
	.word	0
_Label_346:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_345\0"
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
_Label_1947:
	push	r0
	sub	r1,1,r1
	bne	_Label_1947
	mov	1814,r13		! source line 1814
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_348 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
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
	.word	_Label_349
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_350
	.word	-12
	.word	4
	.word	0
_Label_349:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_348\0"
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
_Label_1948:
	push	r0
	sub	r1,1,r1
	bne	_Label_1948
	mov	1826,r13		! source line 1826
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_351 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
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
	.word	_Label_352
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_353
	.word	-12
	.word	4
	.word	0
_Label_352:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_351\0"
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
_Label_1949:
	push	r0
	sub	r1,1,r1
	bne	_Label_1949
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_354 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CA",r10
	call	_function_138_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
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
	.word	_Label_355
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_356
	.word	-12
	.word	4
	.word	0
_Label_355:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_138_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_138_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1950:
	push	r0
	sub	r1,1,r1
	bne	_Label_1950
	mov	1850,r13		! source line 1850
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_357 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_361 = *_temp_362  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_361 == 0 then goto _Label_360		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_360
!	jmp	_Label_359
_Label_359:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_364 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_363 = *_temp_364  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_363) then goto _runtimeErrorNullPointer
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
	jmp	_Label_365
_Label_360:
! ELSE...
	mov	1863,r13		! source line 1863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_366 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_365:
! SEND STATEMENT...
	mov	1865,r13		! source line 1865
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
	mov	1871,r13		! source line 1871
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_138_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_367
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_368
	.word	8
	.word	4
	.word	_Label_369
	.word	-12
	.word	4
	.word	_Label_370
	.word	-16
	.word	4
	.word	_Label_371
	.word	-20
	.word	4
	.word	_Label_372
	.word	-24
	.word	4
	.word	_Label_373
	.word	-28
	.word	4
	.word	_Label_374
	.word	-32
	.word	4
	.word	_Label_375
	.word	-36
	.word	4
	.word	0
_Label_367:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_368:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_357\0"
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
_Label_1951:
	push	r0
	sub	r1,1,r1
	bne	_Label_1951
	mov	1876,r13		! source line 1876
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1897,r13		! source line 1897
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1952
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_376
_Label_1952:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_376
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_376
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_390,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_390:
	jmp	_Label_382	! 1:	
	jmp	_Label_389	! 2:	
	jmp	_Label_379	! 3:	
	jmp	_Label_378	! 4:	
	jmp	_Label_381	! 5:	
	jmp	_Label_380	! 6:	
	jmp	_Label_383	! 7:	
	jmp	_Label_384	! 8:	
	jmp	_Label_385	! 9:	
	jmp	_Label_386	! 10:	
	jmp	_Label_387	! 11:	
	jmp	_Label_388	! 12:	
! CASE 4...
_Label_378:
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_379:
! CALL STATEMENT...
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_380:
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_381:
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_382:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_383:
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_384:
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_395  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_385:
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
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
	mov	1915,r13		! source line 1915
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_396  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_396  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_386:
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
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
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_397  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_397  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_387:
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_398  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_398  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_388:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_389:
! CALL STATEMENT...
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_376:
! CALL STATEMENT...
!   _temp_399 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1929,r13		! source line 1929
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_400 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1930,r13		! source line 1930
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_377:
! RETURN STATEMENT...
	mov	1932,r13		! source line 1932
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
	.word	_Label_401
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_402
	.word	8
	.word	4
	.word	_Label_403
	.word	12
	.word	4
	.word	_Label_404
	.word	16
	.word	4
	.word	_Label_405
	.word	20
	.word	4
	.word	_Label_406
	.word	24
	.word	4
	.word	_Label_407
	.word	-12
	.word	4
	.word	_Label_408
	.word	-16
	.word	4
	.word	_Label_409
	.word	-20
	.word	4
	.word	_Label_410
	.word	-24
	.word	4
	.word	_Label_411
	.word	-28
	.word	4
	.word	_Label_412
	.word	-32
	.word	4
	.word	_Label_413
	.word	-36
	.word	4
	.word	_Label_414
	.word	-40
	.word	4
	.word	_Label_415
	.word	-44
	.word	4
	.word	_Label_416
	.word	-48
	.word	4
	.word	0
_Label_401:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_405:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_406:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_391\0"
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
	mov	1937,r13		! source line 1937
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1937,r13		! source line 1937
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
	.word	_Label_417
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_418
	.word	8
	.word	4
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_418:
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
	mov	1943,r13		! source line 1943
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
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
	.word	_Label_419
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_419:
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
	mov	1949,r13		! source line 1949
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
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
	.word	_Label_420
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_420:
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
	mov	1955,r13		! source line 1955
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1957,r13		! source line 1957
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
	.word	_Label_421
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_421:
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
	mov	1962,r13		! source line 1962
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
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
	.word	_Label_422
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_423:
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
	mov	1969,r13		! source line 1969
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
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
	.word	_Label_424
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_425:
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
	mov	1976,r13		! source line 1976
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
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
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_427:
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
	mov	1983,r13		! source line 1983
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
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
	.word	_Label_428
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_429
	.word	8
	.word	4
	.word	0
_Label_428:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_429:
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
	mov	1990,r13		! source line 1990
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1992,r13		! source line 1992
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
	.word	_Label_430
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_431
	.word	8
	.word	4
	.word	_Label_432
	.word	12
	.word	4
	.word	_Label_433
	.word	16
	.word	4
	.word	0
_Label_430:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_432:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_433:
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
	mov	1997,r13		! source line 1997
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1999,r13		! source line 1999
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
	.word	_Label_434
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_435
	.word	8
	.word	4
	.word	_Label_436
	.word	12
	.word	4
	.word	_Label_437
	.word	16
	.word	4
	.word	0
_Label_434:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_436:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_437:
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
	mov	2004,r13		! source line 2004
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2006,r13		! source line 2006
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
	.word	_Label_438
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_439
	.word	8
	.word	4
	.word	_Label_440
	.word	12
	.word	4
	.word	0
_Label_438:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_440:
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
	mov	2011,r13		! source line 2011
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
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
	.word	_Label_441
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_442
	.word	8
	.word	4
	.word	0
_Label_441:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_442:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_443
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_443:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_444
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_444:
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
_Label_1953:
	push	r0
	sub	r1,1,r1
	bne	_Label_1953
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_446		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_446
!	jmp	_Label_445
_Label_445:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_447 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
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
_Label_446:
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
	.word	_Label_449
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_451
	.word	12
	.word	4
	.word	_Label_452
	.word	-12
	.word	4
	.word	_Label_453
	.word	-16
	.word	4
	.word	0
_Label_449:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_450:
	.ascii	"Pself\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_1954:
	push	r0
	sub	r1,1,r1
	bne	_Label_1954
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
!   if count != 2147483647 then goto _Label_455		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_455
!	jmp	_Label_454
_Label_454:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_456 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
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
_Label_455:
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
!   if count > 0 then goto _Label_458		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_458
!	jmp	_Label_457
_Label_457:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_459 = &waitingThreads
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
!   _temp_460 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_460 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_461 = &_P_Kernel_readyList
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
_Label_458:
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
	.word	_Label_462
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	_Label_467
	.word	-24
	.word	4
	.word	_Label_468
	.word	-28
	.word	4
	.word	_Label_469
	.word	-32
	.word	4
	.word	0
_Label_462:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_469:
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
_Label_1955:
	push	r0
	sub	r1,1,r1
	bne	_Label_1955
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
!   if count != -2147483648 then goto _Label_471		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_471
!	jmp	_Label_470
_Label_470:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_472 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
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
_Label_471:
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
!   if count >= 0 then goto _Label_474		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_475 = &waitingThreads
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
_Label_474:
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
	.word	_Label_476
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_478
	.word	-12
	.word	4
	.word	_Label_479
	.word	-16
	.word	4
	.word	_Label_480
	.word	-20
	.word	4
	.word	0
_Label_476:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_477:
	.ascii	"Pself\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_480:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_481
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_481:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_482
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_482:
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
_Label_1956:
	push	r0
	sub	r1,1,r1
	bne	_Label_1956
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
	.word	_Label_484
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_485:
	.ascii	"Pself\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_483\0"
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
_Label_1957:
	push	r0
	sub	r1,1,r1
	bne	_Label_1957
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_488		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_488
!	jmp	_Label_487
_Label_487:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_489 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
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
_Label_488:
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
!   if heldBy == 0 then goto _Label_493		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!   _temp_492 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_494
_Label_493:
!   _temp_492 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_494:
!   if _temp_492 then goto _Label_491 else goto _Label_490
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_490
	jmp	_Label_491
_Label_490:
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
	jmp	_Label_495
_Label_491:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_496 = &waitingThreads
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
_Label_495:
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
	.word	_Label_497
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-9
	.word	1
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	0
_Label_497:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_498:
	.ascii	"Pself\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_500:
	.byte	'C'
	.ascii	"_temp_492\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_502:
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
_Label_1958:
	push	r0
	sub	r1,1,r1
	bne	_Label_1958
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_504		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_504
!	jmp	_Label_503
_Label_503:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_505 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
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
_Label_504:
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
!   _temp_506 = &waitingThreads
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
!   if t == 0 then goto _Label_508		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_508
!	jmp	_Label_507
_Label_507:
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
!   _temp_509 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_509 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_510 = &_P_Kernel_readyList
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
	jmp	_Label_511
_Label_508:
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
_Label_511:
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
	.word	_Label_512
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_514
	.word	-12
	.word	4
	.word	_Label_515
	.word	-16
	.word	4
	.word	_Label_516
	.word	-20
	.word	4
	.word	_Label_517
	.word	-24
	.word	4
	.word	_Label_518
	.word	-28
	.word	4
	.word	_Label_519
	.word	-32
	.word	4
	.word	0
_Label_512:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_513:
	.ascii	"Pself\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_518:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_519:
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
_Label_1959:
	push	r0
	sub	r1,1,r1
	bne	_Label_1959
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_522		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_522
!	jmp	_Label_521
_Label_521:
!   _temp_520 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_523
_Label_522:
!   _temp_520 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_523:
!   ReturnResult: _temp_520  (sizeInBytes=1)
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
	.word	_Label_524
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_526
	.word	-9
	.word	1
	.word	0
_Label_524:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_525:
	.ascii	"Pself\0"
	.align
_Label_526:
	.byte	'C'
	.ascii	"_temp_520\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_527
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	printHeldBy
	.word	0
! 
! Class descriptor:
! 
_Label_527:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_528
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_528:
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
_Label_1960:
	push	r0
	sub	r1,1,r1
	bne	_Label_1960
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
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
	mov	467,r13		! source line 467
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
	.word	_Label_530
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_531
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_532
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_531:
	.ascii	"Pself\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_1961:
	push	r0
	sub	r1,1,r1
	bne	_Label_1961
	mov	475,r13		! source line 475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_536		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_536
!   _temp_535 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_537
_Label_536:
!   _temp_535 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_537:
!   if _temp_535 then goto _Label_534 else goto _Label_533
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_534
_Label_533:
! THEN...
	mov	485,r13		! source line 485
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_538
_Label_534:
! ELSE...
	mov	487,r13		! source line 487
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_540		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_540
!	jmp	_Label_539
_Label_539:
! THEN...
	mov	488,r13		! source line 488
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   heldBy = transfer		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_540:
! SEND STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0SE",r10
!   _temp_541 = &waitingThreads
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
	mov	491,r13		! source line 491
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
_Label_538:
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	493,r13		! source line 493
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
	.word	_Label_542
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_544
	.word	12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-9
	.word	1
	.word	_Label_547
	.word	-20
	.word	4
	.word	0
_Label_542:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_543:
	.ascii	"Pself\0"
	.align
_Label_544:
	.byte	'P'
	.ascii	"transfer\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_546:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_547:
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
_Label_1962:
	push	r0
	sub	r1,1,r1
	bne	_Label_1962
	mov	498,r13		! source line 498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_549		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_549
!	jmp	_Label_548
_Label_548:
! THEN...
	mov	503,r13		! source line 503
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_550 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	503,r13		! source line 503
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_549:
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
	mov	506,r13		! source line 506
	mov	"\0\0SE",r10
!   _temp_551 = &waitingThreads
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
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_553		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_553
!	jmp	_Label_552
_Label_552:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_554 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0SE",r10
!   _temp_555 = &_P_Kernel_readyList
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
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_556
_Label_553:
! ELSE...
	mov	512,r13		! source line 512
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_556:
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	514,r13		! source line 514
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
	.word	_Label_557
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	0
_Label_557:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_558:
	.ascii	"Pself\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_564:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_1963:
	push	r0
	sub	r1,1,r1
	bne	_Label_1963
	mov	519,r13		! source line 519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_567		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_567
!	jmp	_Label_566
_Label_566:
!   _temp_565 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_568
_Label_567:
!   _temp_565 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_568:
!   ReturnResult: _temp_565  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_569
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_571
	.word	-9
	.word	1
	.word	0
_Label_569:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_570:
	.ascii	"Pself\0"
	.align
_Label_571:
	.byte	'C'
	.ascii	"_temp_565\0"
	.align
! 
! ===============  METHOD printHeldBy  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	3,r1
_Label_1964:
	push	r0
	sub	r1,1,r1
	bne	_Label_1964
	mov	523,r13		! source line 523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (heldBy) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = heldBy + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_572 = *_temp_573  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_574
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_576
	.word	-12
	.word	4
	.word	_Label_577
	.word	-16
	.word	4
	.word	0
_Label_574:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"printHeldBy\0"
	.align
_Label_575:
	.ascii	"Pself\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_578
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_578:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_579
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_579:
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
_Label_1965:
	push	r0
	sub	r1,1,r1
	bne	_Label_1965
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
	.word	_Label_581
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_583
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_582:
	.ascii	"Pself\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_580\0"
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
_Label_1966:
	push	r0
	sub	r1,1,r1
	bne	_Label_1966
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
!   Retrieve Result: targetName=_temp_586  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_586 then goto _Label_585 else goto _Label_584
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_584
	jmp	_Label_585
_Label_584:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
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
_Label_585:
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
!   _temp_588 = &waitingThreads
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
	.word	_Label_589
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_591
	.word	12
	.word	4
	.word	_Label_592
	.word	-16
	.word	4
	.word	_Label_593
	.word	-20
	.word	4
	.word	_Label_594
	.word	-9
	.word	1
	.word	_Label_595
	.word	-24
	.word	4
	.word	0
_Label_589:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_590:
	.ascii	"Pself\0"
	.align
_Label_591:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_594:
	.byte	'C'
	.ascii	"_temp_586\0"
	.align
_Label_595:
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
_Label_1967:
	push	r0
	sub	r1,1,r1
	bne	_Label_1967
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
!   Retrieve Result: targetName=_temp_598  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_598 then goto _Label_597 else goto _Label_596
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_596
	jmp	_Label_597
_Label_596:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_599 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
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
_Label_597:
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
!   _temp_600 = &waitingThreads
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
!   if t == 0 then goto _Label_602		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_602
!	jmp	_Label_601
_Label_601:
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
!   _temp_603 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_603 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_604 = &_P_Kernel_readyList
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
_Label_602:
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
	.word	_Label_605
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_607
	.word	12
	.word	4
	.word	_Label_608
	.word	-16
	.word	4
	.word	_Label_609
	.word	-20
	.word	4
	.word	_Label_610
	.word	-24
	.word	4
	.word	_Label_611
	.word	-28
	.word	4
	.word	_Label_612
	.word	-9
	.word	1
	.word	_Label_613
	.word	-32
	.word	4
	.word	_Label_614
	.word	-36
	.word	4
	.word	0
_Label_605:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_606:
	.ascii	"Pself\0"
	.align
_Label_607:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_612:
	.byte	'C'
	.ascii	"_temp_598\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_614:
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
_Label_1968:
	push	r0
	sub	r1,1,r1
	bne	_Label_1968
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
!   Retrieve Result: targetName=_temp_617  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_617 then goto _Label_616 else goto _Label_615
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_615
	jmp	_Label_616
_Label_615:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_618 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
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
_Label_616:
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
_Label_619:
!	jmp	_Label_620
_Label_620:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_622 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_623
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_623
	jmp	_Label_624
_Label_623:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_621
! END IF...
_Label_624:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_625 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_626 = &_P_Kernel_readyList
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
	jmp	_Label_619
_Label_621:
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
	.word	_Label_627
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_629
	.word	12
	.word	4
	.word	_Label_630
	.word	-16
	.word	4
	.word	_Label_631
	.word	-20
	.word	4
	.word	_Label_632
	.word	-24
	.word	4
	.word	_Label_633
	.word	-28
	.word	4
	.word	_Label_634
	.word	-9
	.word	1
	.word	_Label_635
	.word	-32
	.word	4
	.word	_Label_636
	.word	-36
	.word	4
	.word	0
_Label_627:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_628:
	.ascii	"Pself\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_634:
	.byte	'C'
	.ascii	"_temp_617\0"
	.align
_Label_635:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_636:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_637
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	HoareTest
	.word	0
! 
! Class descriptor:
! 
_Label_637:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_638
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_638:
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
_Label_1969:
	push	r0
	sub	r1,1,r1
	bne	_Label_1969
	mov	550,r13		! source line 550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
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
	mov	551,r13		! source line 551
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
	.word	_Label_640
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_642
	.word	-12
	.word	4
	.word	0
_Label_640:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_641:
	.ascii	"Pself\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_639\0"
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
_Label_1970:
	push	r0
	sub	r1,1,r1
	bne	_Label_1970
	mov	560,r13		! source line 560
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0IF",r10
	mov	563,r13		! source line 563
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
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_645  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_645 then goto _Label_644 else goto _Label_643
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_643
	jmp	_Label_644
_Label_643:
! THEN...
	mov	564,r13		! source line 564
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_646 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	564,r13		! source line 564
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_644:
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	568,r13		! source line 568
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
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
!   _temp_647 = &waitingThreads
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
	mov	570,r13		! source line 570
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
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	574,r13		! source line 574
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
	.word	_Label_648
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_650
	.word	12
	.word	4
	.word	_Label_651
	.word	-16
	.word	4
	.word	_Label_652
	.word	-20
	.word	4
	.word	_Label_653
	.word	-9
	.word	1
	.word	_Label_654
	.word	-24
	.word	4
	.word	0
_Label_648:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_649:
	.ascii	"Pself\0"
	.align
_Label_650:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_653:
	.byte	'C'
	.ascii	"_temp_645\0"
	.align
_Label_654:
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
_Label_1971:
	push	r0
	sub	r1,1,r1
	bne	_Label_1971
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0IF",r10
	mov	583,r13		! source line 583
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
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_657  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_657 then goto _Label_656 else goto _Label_655
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_655
	jmp	_Label_656
_Label_655:
! THEN...
	mov	584,r13		! source line 584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	584,r13		! source line 584
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_656:
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
	mov	587,r13		! source line 587
	mov	"\0\0SE",r10
!   _temp_659 = &waitingThreads
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
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_661		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_662 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0SE",r10
!   _temp_663 = &_P_Kernel_readyList
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
	mov	591,r13		! source line 591
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
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	595,r13		! source line 595
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
	.word	_Label_664
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_666
	.word	12
	.word	4
	.word	_Label_667
	.word	-16
	.word	4
	.word	_Label_668
	.word	-20
	.word	4
	.word	_Label_669
	.word	-24
	.word	4
	.word	_Label_670
	.word	-28
	.word	4
	.word	_Label_671
	.word	-9
	.word	1
	.word	_Label_672
	.word	-32
	.word	4
	.word	_Label_673
	.word	-36
	.word	4
	.word	0
_Label_664:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_665:
	.ascii	"Pself\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"hMutex\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_671:
	.byte	'C'
	.ascii	"_temp_657\0"
	.align
_Label_672:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_673:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD HoareTest  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	6,r1
_Label_1972:
	push	r0
	sub	r1,1,r1
	bne	_Label_1972
	mov	606,r13		! source line 606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   if test == _P_Kernel_currentThread then goto _Label_675		(int)
	load	[r14+12],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_675
!	jmp	_Label_674
_Label_674:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_676 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	610,r13		! source line 610
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_675:
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! CALL STATEMENT...
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CA",r10
	call	_P_System_nl
! IF STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0IF",r10
	mov	616,r13		! source line 616
	mov	"\0\0SE",r10
!   _temp_680 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_679  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_681 = _temp_679 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_681 then goto _Label_678 else goto _Label_677
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_677
	jmp	_Label_678
_Label_677:
! THEN...
	mov	617,r13		! source line 617
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_682 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_683
_Label_678:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=test  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_function_140_ThreadPrintShort
! END IF...
_Label_683:
! ASSIGNMENT STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_684
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_686
	.word	12
	.word	4
	.word	_Label_687
	.word	16
	.word	4
	.word	_Label_688
	.word	-16
	.word	4
	.word	_Label_689
	.word	-9
	.word	1
	.word	_Label_690
	.word	-20
	.word	4
	.word	_Label_691
	.word	-10
	.word	1
	.word	_Label_692
	.word	-24
	.word	4
	.word	_Label_693
	.word	-28
	.word	4
	.word	0
_Label_684:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"HoareTest\0"
	.align
_Label_685:
	.ascii	"Pself\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"test\0"
	.align
_Label_687:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_689:
	.byte	'C'
	.ascii	"_temp_681\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_691:
	.byte	'C'
	.ascii	"_temp_679\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_693:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_694
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
_Label_694:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_695
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_695:
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
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	632,r13		! source line 632
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_696 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_696) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_696 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_697 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_697 [0 ] into _temp_698
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
!   Data Move: *_temp_698 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_699 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_699 [999 ] into _temp_700
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
!   Data Move: *_temp_700 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_701 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_701 [999 ] into _temp_702
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
!   stackTop = _temp_702		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   _temp_703 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_705 = &_temp_704
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_705 = _temp_705 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_707:
!   Data Move: *_temp_705 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_705 = _temp_705 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_706 = _temp_706 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_706) then goto _Label_707
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_707
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_708 = &_temp_704
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1974
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1974:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_703 = *_temp_708  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1975:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1975
! ASSIGNMENT STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   _temp_709 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_711 = &_temp_710
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_711 = _temp_711 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_713:
!   Data Move: *_temp_711 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_711 = _temp_711 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_712 = _temp_712 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_712) then goto _Label_713
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_713
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_714 = &_temp_710
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1976
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1976:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_709 = *_temp_714  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1977:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1977
! RETURN STATEMENT...
	mov	646,r13		! source line 646
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
	.word	_Label_715
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_717
	.word	12
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	_Label_721
	.word	-84
	.word	64
	.word	_Label_722
	.word	-88
	.word	4
	.word	_Label_723
	.word	-92
	.word	4
	.word	_Label_724
	.word	-96
	.word	4
	.word	_Label_725
	.word	-100
	.word	4
	.word	_Label_726
	.word	-156
	.word	56
	.word	_Label_727
	.word	-160
	.word	4
	.word	_Label_728
	.word	-164
	.word	4
	.word	_Label_729
	.word	-168
	.word	4
	.word	_Label_730
	.word	-172
	.word	4
	.word	_Label_731
	.word	-176
	.word	4
	.word	_Label_732
	.word	-180
	.word	4
	.word	_Label_733
	.word	-184
	.word	4
	.word	_Label_734
	.word	-188
	.word	4
	.word	0
_Label_715:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_716:
	.ascii	"Pself\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_696\0"
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
_Label_1978:
	push	r0
	sub	r1,1,r1
	bne	_Label_1978
	mov	651,r13		! source line 651
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
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
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_735  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_737 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_736  sizeInBytes=4
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
	mov	670,r13		! source line 670
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	670,r13		! source line 670
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
	.word	_Label_738
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_740
	.word	12
	.word	4
	.word	_Label_741
	.word	16
	.word	4
	.word	_Label_742
	.word	-12
	.word	4
	.word	_Label_743
	.word	-16
	.word	4
	.word	_Label_744
	.word	-20
	.word	4
	.word	_Label_745
	.word	-24
	.word	4
	.word	_Label_746
	.word	-28
	.word	4
	.word	0
_Label_738:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_739:
	.ascii	"Pself\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_746:
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
_Label_1979:
	push	r0
	sub	r1,1,r1
	bne	_Label_1979
	mov	675,r13		! source line 675
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_749 == _P_Kernel_currentThread then goto _Label_748		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_748
!	jmp	_Label_747
_Label_747:
! THEN...
	mov	692,r13		! source line 692
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_750 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	692,r13		! source line 692
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_748:
! ASSIGNMENT STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
	mov	698,r13		! source line 698
	mov	"\0\0SE",r10
!   _temp_751 = &_P_Kernel_readyList
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
	mov	699,r13		! source line 699
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_753		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_753
!	jmp	_Label_752
_Label_752:
! THEN...
	mov	703,r13		! source line 703
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_755		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_755
!	jmp	_Label_754
_Label_754:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_756 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	704,r13		! source line 704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_755:
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_758 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_757  sizeInBytes=4
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
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_753:
! ASSIGNMENT STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	710,r13		! source line 710
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
	.word	_Label_759
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	_Label_764
	.word	-24
	.word	4
	.word	_Label_765
	.word	-28
	.word	4
	.word	_Label_766
	.word	-32
	.word	4
	.word	_Label_767
	.word	-36
	.word	4
	.word	_Label_768
	.word	-40
	.word	4
	.word	_Label_769
	.word	-44
	.word	4
	.word	0
_Label_759:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_760:
	.ascii	"Pself\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_767:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_768:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_769:
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
_Label_1980:
	push	r0
	sub	r1,1,r1
	bne	_Label_1980
	mov	715,r13		! source line 715
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_771		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_771
!	jmp	_Label_770
_Label_770:
! THEN...
	mov	728,r13		! source line 728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_772 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	728,r13		! source line 728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_771:
! IF STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_775 == _P_Kernel_currentThread then goto _Label_774		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_774
!	jmp	_Label_773
_Label_773:
! THEN...
	mov	732,r13		! source line 732
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_776 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	732,r13		! source line 732
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_774:
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
	mov	738,r13		! source line 738
	mov	"\0\0SE",r10
!   _temp_777 = &_P_Kernel_readyList
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
	mov	739,r13		! source line 739
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_778
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_778
	jmp	_Label_779
_Label_778:
! THEN...
	mov	740,r13		! source line 740
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	740,r13		! source line 740
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_779:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	742,r13		! source line 742
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
	.word	_Label_781
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_783
	.word	-12
	.word	4
	.word	_Label_784
	.word	-16
	.word	4
	.word	_Label_785
	.word	-20
	.word	4
	.word	_Label_786
	.word	-24
	.word	4
	.word	_Label_787
	.word	-28
	.word	4
	.word	_Label_788
	.word	-32
	.word	4
	.word	0
_Label_781:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_782:
	.ascii	"Pself\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_788:
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
_Label_1981:
	push	r0
	sub	r1,1,r1
	bne	_Label_1981
	mov	747,r13		! source line 747
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0IF",r10
!   _temp_792 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_792 [0 ] into _temp_793
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
!   Data Move: _temp_791 = *_temp_793  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_791 == 606348324 then goto _Label_790		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	754,r13		! source line 754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	754,r13		! source line 754
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_795
_Label_790:
! ELSE...
	mov	755,r13		! source line 755
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0IF",r10
!   _temp_799 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_799 [999 ] into _temp_800
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
!   Data Move: _temp_798 = *_temp_800  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_798 == 606348324 then goto _Label_797		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_797
!	jmp	_Label_796
_Label_796:
! THEN...
	mov	756,r13		! source line 756
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_801 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	756,r13		! source line 756
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_797:
! END IF...
_Label_795:
! RETURN STATEMENT...
	mov	753,r13		! source line 753
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
	.word	_Label_802
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_804
	.word	-12
	.word	4
	.word	_Label_805
	.word	-16
	.word	4
	.word	_Label_806
	.word	-20
	.word	4
	.word	_Label_807
	.word	-24
	.word	4
	.word	_Label_808
	.word	-28
	.word	4
	.word	_Label_809
	.word	-32
	.word	4
	.word	_Label_810
	.word	-36
	.word	4
	.word	_Label_811
	.word	-40
	.word	4
	.word	0
_Label_802:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_803:
	.ascii	"Pself\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_791\0"
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
_Label_1982:
	push	r0
	sub	r1,1,r1
	bne	_Label_1982
	mov	762,r13		! source line 762
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_812 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_813 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_815 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_816 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_821 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_822 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_821  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_817:
!   Perform the FOR-LOOP termination test
!   if i > _temp_822 then goto _Label_820		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_820
_Label_818:
	mov	775,r13		! source line 775
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_823 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_824 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_825 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_827 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_827 [i ] into _temp_828
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
!   Data Move: _temp_826 = *_temp_828  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_829 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_831 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_831 [i ] into _temp_832
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
!   Data Move: _temp_830 = *_temp_832  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_833 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_819:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_817
! END FOR
_Label_820:
! CALL STATEMENT...
!   _temp_834 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_835 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_835  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_836 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_838 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_838 [0 ] into _temp_839
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
!   _temp_837 = _temp_839		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	786,r13		! source line 786
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_842
	cmp	r1,2
	be	_Label_843
	cmp	r1,3
	be	_Label_844
	cmp	r1,4
	be	_Label_845
	cmp	r1,5
	be	_Label_846
	jmp	_Label_840
! CASE 1...
_Label_842:
! CALL STATEMENT...
!   _temp_847 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0BR",r10
	jmp	_Label_841
! CASE 2...
_Label_843:
! CALL STATEMENT...
!   _temp_848 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0BR",r10
	jmp	_Label_841
! CASE 3...
_Label_844:
! CALL STATEMENT...
!   _temp_849 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0BR",r10
	jmp	_Label_841
! CASE 4...
_Label_845:
! CALL STATEMENT...
!   _temp_850 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0BR",r10
	jmp	_Label_841
! CASE 5...
_Label_846:
! CALL STATEMENT...
!   _temp_851 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0BR",r10
	jmp	_Label_841
! DEFAULT CASE...
_Label_840:
! CALL STATEMENT...
!   _temp_852 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	803,r13		! source line 803
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_841:
! CALL STATEMENT...
!   _temp_853 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_854 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_859 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_860 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_859  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_855:
!   Perform the FOR-LOOP termination test
!   if i > _temp_860 then goto _Label_858		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_858
_Label_856:
	mov	809,r13		! source line 809
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_861 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_862 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_863 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_865 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_865 [i ] into _temp_866
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
!   Data Move: _temp_864 = *_temp_866  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_867 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_869 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_869 [i ] into _temp_870
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
!   Data Move: _temp_868 = *_temp_870  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_871 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_857:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_855
! END FOR
_Label_858:
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	818,r13		! source line 818
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
	.word	_Label_872
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_874
	.word	-12
	.word	4
	.word	_Label_875
	.word	-16
	.word	4
	.word	_Label_876
	.word	-20
	.word	4
	.word	_Label_877
	.word	-24
	.word	4
	.word	_Label_878
	.word	-28
	.word	4
	.word	_Label_879
	.word	-32
	.word	4
	.word	_Label_880
	.word	-36
	.word	4
	.word	_Label_881
	.word	-40
	.word	4
	.word	_Label_882
	.word	-44
	.word	4
	.word	_Label_883
	.word	-48
	.word	4
	.word	_Label_884
	.word	-52
	.word	4
	.word	_Label_885
	.word	-56
	.word	4
	.word	_Label_886
	.word	-60
	.word	4
	.word	_Label_887
	.word	-64
	.word	4
	.word	_Label_888
	.word	-68
	.word	4
	.word	_Label_889
	.word	-72
	.word	4
	.word	_Label_890
	.word	-76
	.word	4
	.word	_Label_891
	.word	-80
	.word	4
	.word	_Label_892
	.word	-84
	.word	4
	.word	_Label_893
	.word	-88
	.word	4
	.word	_Label_894
	.word	-92
	.word	4
	.word	_Label_895
	.word	-96
	.word	4
	.word	_Label_896
	.word	-100
	.word	4
	.word	_Label_897
	.word	-104
	.word	4
	.word	_Label_898
	.word	-108
	.word	4
	.word	_Label_899
	.word	-112
	.word	4
	.word	_Label_900
	.word	-116
	.word	4
	.word	_Label_901
	.word	-120
	.word	4
	.word	_Label_902
	.word	-124
	.word	4
	.word	_Label_903
	.word	-128
	.word	4
	.word	_Label_904
	.word	-132
	.word	4
	.word	_Label_905
	.word	-136
	.word	4
	.word	_Label_906
	.word	-140
	.word	4
	.word	_Label_907
	.word	-144
	.word	4
	.word	_Label_908
	.word	-148
	.word	4
	.word	_Label_909
	.word	-152
	.word	4
	.word	_Label_910
	.word	-156
	.word	4
	.word	_Label_911
	.word	-160
	.word	4
	.word	_Label_912
	.word	-164
	.word	4
	.word	_Label_913
	.word	-168
	.word	4
	.word	_Label_914
	.word	-172
	.word	4
	.word	_Label_915
	.word	-176
	.word	4
	.word	_Label_916
	.word	-180
	.word	4
	.word	_Label_917
	.word	-184
	.word	4
	.word	_Label_918
	.word	-188
	.word	4
	.word	_Label_919
	.word	-192
	.word	4
	.word	_Label_920
	.word	-196
	.word	4
	.word	0
_Label_872:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_873:
	.ascii	"Pself\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_920:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_921
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_921:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_922
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_922:
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
_Label_1983:
	push	r0
	sub	r1,1,r1
	bne	_Label_1983
	mov	877,r13		! source line 877
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_923 = _StringConst_79
	set	_StringConst_79,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
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
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_925 = &threadManLock
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
	mov	890,r13		! source line 890
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
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_927 = &threadBecameFree
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
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   _temp_928 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_930 = &_temp_929
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_930 = _temp_930 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_932 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_1984:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1984
!   _temp_932 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_934:
!   Data Move: *_temp_930 = _temp_932  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_1985:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1985
!   _temp_930 = _temp_930 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_931 = _temp_931 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_931) then goto _Label_934
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_934
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_935 = &_temp_929
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1986
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1986:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_928 = *_temp_935  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1987:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1987
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_936 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-168]
!   _temp_937 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_937 [0 ] into _temp_938
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
!   Prepare Argument: offset=12  value=_temp_936  sizeInBytes=4
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
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_939 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-156]
!   _temp_940 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_940 [1 ] into _temp_941
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
!   Prepare Argument: offset=12  value=_temp_939  sizeInBytes=4
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
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_942 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-144]
!   _temp_943 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_943 [2 ] into _temp_944
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
!   Prepare Argument: offset=12  value=_temp_942  sizeInBytes=4
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
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_945 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-132]
!   _temp_946 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_946 [3 ] into _temp_947
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
!   Prepare Argument: offset=12  value=_temp_945  sizeInBytes=4
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
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_948 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-120]
!   _temp_949 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_949 [4 ] into _temp_950
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
!   Prepare Argument: offset=12  value=_temp_948  sizeInBytes=4
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
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_951 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-108]
!   _temp_952 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_952 [5 ] into _temp_953
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
!   Prepare Argument: offset=12  value=_temp_951  sizeInBytes=4
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_954 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-96]
!   _temp_955 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_955 [6 ] into _temp_956
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
!   Prepare Argument: offset=12  value=_temp_954  sizeInBytes=4
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
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_957 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-84]
!   _temp_958 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_958 [7 ] into _temp_959
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
!   Prepare Argument: offset=12  value=_temp_957  sizeInBytes=4
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
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_960 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-72]
!   _temp_961 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_961 [8 ] into _temp_962
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
!   Prepare Argument: offset=12  value=_temp_960  sizeInBytes=4
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
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_963 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-60]
!   _temp_964 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_964 [9 ] into _temp_965
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
!   Prepare Argument: offset=12  value=_temp_963  sizeInBytes=4
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
	mov	906,r13		! source line 906
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
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46024,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_971 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_972 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_971  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_967:
!   Perform the FOR-LOOP termination test
!   if i > _temp_972 then goto _Label_970		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_970
_Label_968:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   _temp_973 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_973 [i ] into _temp_974
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
!   _temp_975 = _temp_974 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_975 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_977 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_977 [i ] into _temp_978
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
!   _temp_976 = _temp_978		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_979 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_976  sizeInBytes=4
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
_Label_969:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_967
! END FOR
_Label_970:
! RETURN STATEMENT...
	mov	909,r13		! source line 909
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
	.word	_Label_980
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_981
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_982
	.word	-12
	.word	4
	.word	_Label_983
	.word	-16
	.word	4
	.word	_Label_984
	.word	-20
	.word	4
	.word	_Label_985
	.word	-24
	.word	4
	.word	_Label_986
	.word	-28
	.word	4
	.word	_Label_987
	.word	-32
	.word	4
	.word	_Label_988
	.word	-36
	.word	4
	.word	_Label_989
	.word	-40
	.word	4
	.word	_Label_990
	.word	-44
	.word	4
	.word	_Label_991
	.word	-48
	.word	4
	.word	_Label_992
	.word	-52
	.word	4
	.word	_Label_993
	.word	-56
	.word	4
	.word	_Label_994
	.word	-60
	.word	4
	.word	_Label_995
	.word	-64
	.word	4
	.word	_Label_996
	.word	-68
	.word	4
	.word	_Label_997
	.word	-72
	.word	4
	.word	_Label_998
	.word	-76
	.word	4
	.word	_Label_999
	.word	-80
	.word	4
	.word	_Label_1000
	.word	-84
	.word	4
	.word	_Label_1001
	.word	-88
	.word	4
	.word	_Label_1002
	.word	-92
	.word	4
	.word	_Label_1003
	.word	-96
	.word	4
	.word	_Label_1004
	.word	-100
	.word	4
	.word	_Label_1005
	.word	-104
	.word	4
	.word	_Label_1006
	.word	-108
	.word	4
	.word	_Label_1007
	.word	-112
	.word	4
	.word	_Label_1008
	.word	-116
	.word	4
	.word	_Label_1009
	.word	-120
	.word	4
	.word	_Label_1010
	.word	-124
	.word	4
	.word	_Label_1011
	.word	-128
	.word	4
	.word	_Label_1012
	.word	-132
	.word	4
	.word	_Label_1013
	.word	-136
	.word	4
	.word	_Label_1014
	.word	-140
	.word	4
	.word	_Label_1015
	.word	-144
	.word	4
	.word	_Label_1016
	.word	-148
	.word	4
	.word	_Label_1017
	.word	-152
	.word	4
	.word	_Label_1018
	.word	-156
	.word	4
	.word	_Label_1019
	.word	-160
	.word	4
	.word	_Label_1020
	.word	-164
	.word	4
	.word	_Label_1021
	.word	-168
	.word	4
	.word	_Label_1022
	.word	-172
	.word	4
	.word	_Label_1023
	.word	-176
	.word	4
	.word	_Label_1024
	.word	-4340
	.word	4164
	.word	_Label_1025
	.word	-4344
	.word	4
	.word	_Label_1026
	.word	-4348
	.word	4
	.word	_Label_1027
	.word	-45992
	.word	41644
	.word	_Label_1028
	.word	-45996
	.word	4
	.word	_Label_1029
	.word	-46000
	.word	4
	.word	_Label_1030
	.word	-46004
	.word	4
	.word	_Label_1031
	.word	-46008
	.word	4
	.word	_Label_1032
	.word	-46012
	.word	4
	.word	_Label_1033
	.word	-46016
	.word	4
	.word	_Label_1034
	.word	-46020
	.word	4
	.word	_Label_1035
	.word	-46024
	.word	4
	.word	0
_Label_980:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_981:
	.ascii	"Pself\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_1034:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1035:
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
_Label_1988:
	push	r0
	sub	r1,1,r1
	bne	_Label_1988
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1036 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1041 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1042 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1041  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1037:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1042 then goto _Label_1040		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1040
_Label_1038:
	mov	927,r13		! source line 927
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1043 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1044 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1046 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_1046 [i ] into _temp_1047
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
!   _temp_1045 = _temp_1047		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_function_140_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1039:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1037
! END FOR
_Label_1040:
! CALL STATEMENT...
!   _temp_1048 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1049 = _function_139_PrintObjectAddr
	set	_function_139_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1050 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1049  sizeInBytes=4
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
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	936,r13		! source line 936
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
	.word	_Label_1051
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1053
	.word	-12
	.word	4
	.word	_Label_1054
	.word	-16
	.word	4
	.word	_Label_1055
	.word	-20
	.word	4
	.word	_Label_1056
	.word	-24
	.word	4
	.word	_Label_1057
	.word	-28
	.word	4
	.word	_Label_1058
	.word	-32
	.word	4
	.word	_Label_1059
	.word	-36
	.word	4
	.word	_Label_1060
	.word	-40
	.word	4
	.word	_Label_1061
	.word	-44
	.word	4
	.word	_Label_1062
	.word	-48
	.word	4
	.word	_Label_1063
	.word	-52
	.word	4
	.word	_Label_1064
	.word	-56
	.word	4
	.word	_Label_1065
	.word	-60
	.word	4
	.word	0
_Label_1051:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
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
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1064:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1065:
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
_Label_1989:
	push	r0
	sub	r1,1,r1
	bne	_Label_1989
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1066 = &threadManLock
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
	mov	952,r13		! source line 952
	mov	"\0\0IF",r10
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1070 = &freeList
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
!   Retrieve Result: targetName=_temp_1069  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1071 = _temp_1069 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1071 then goto _Label_1068 else goto _Label_1067
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1067
	jmp	_Label_1068
_Label_1067:
! THEN...
	mov	953,r13		! source line 953
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1072 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_1073 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1072  sizeInBytes=4
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
_Label_1068:
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1074 = &freeList
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
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1075 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1076 = &threadManLock
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
	mov	962,r13		! source line 962
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
	.word	_Label_1077
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1079
	.word	-16
	.word	4
	.word	_Label_1080
	.word	-20
	.word	4
	.word	_Label_1081
	.word	-24
	.word	4
	.word	_Label_1082
	.word	-28
	.word	4
	.word	_Label_1083
	.word	-32
	.word	4
	.word	_Label_1084
	.word	-9
	.word	1
	.word	_Label_1085
	.word	-36
	.word	4
	.word	_Label_1086
	.word	-10
	.word	1
	.word	_Label_1087
	.word	-40
	.word	4
	.word	_Label_1088
	.word	-44
	.word	4
	.word	0
_Label_1077:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1078:
	.ascii	"Pself\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1084:
	.byte	'C'
	.ascii	"_temp_1071\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1086:
	.byte	'C'
	.ascii	"_temp_1069\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1088:
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
_Label_1990:
	push	r0
	sub	r1,1,r1
	bne	_Label_1990
	mov	967,r13		! source line 967
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1089 = &threadManLock
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
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1090 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1091 = &freeList
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
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1092 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1093 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1092  sizeInBytes=4
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
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1094 = &threadManLock
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
	mov	981,r13		! source line 981
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
	.word	_Label_1095
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1097
	.word	12
	.word	4
	.word	_Label_1098
	.word	-12
	.word	4
	.word	_Label_1099
	.word	-16
	.word	4
	.word	_Label_1100
	.word	-20
	.word	4
	.word	_Label_1101
	.word	-24
	.word	4
	.word	_Label_1102
	.word	-28
	.word	4
	.word	_Label_1103
	.word	-32
	.word	4
	.word	0
_Label_1095:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1096:
	.ascii	"Pself\0"
	.align
_Label_1097:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1104
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1104:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1105
	.word	_sourceFileName
	.word	242		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1105:
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
_Label_1991:
	push	r0
	sub	r1,1,r1
	bne	_Label_1991
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1992:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1992
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1107 = &addrSpace
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
	mov	998,r13		! source line 998
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
	.word	_Label_1108
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1110
	.word	-12
	.word	4
	.word	_Label_1111
	.word	-16
	.word	4
	.word	0
_Label_1108:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1109:
	.ascii	"Pself\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1106\0"
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
_Label_1993:
	push	r0
	sub	r1,1,r1
	bne	_Label_1993
	mov	1008,r13		! source line 1008
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1112) then goto _runtimeErrorNullPointer
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
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_1113 = &addrSpace
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
!   _temp_1114 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CA",r10
	call	_function_140_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1026,r13		! source line 1026
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
	.word	_Label_1115
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1117
	.word	-12
	.word	4
	.word	_Label_1118
	.word	-16
	.word	4
	.word	_Label_1119
	.word	-20
	.word	4
	.word	0
_Label_1115:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1116:
	.ascii	"Pself\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1112\0"
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
_Label_1994:
	push	r0
	sub	r1,1,r1
	bne	_Label_1994
	mov	1031,r13		! source line 1031
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1120 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1122 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1123 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1125		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1125
!	jmp	_Label_1124
_Label_1124:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1126 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1127
_Label_1125:
! ELSE...
	mov	1042,r13		! source line 1042
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1129		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1129
!	jmp	_Label_1128
_Label_1128:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1130 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1131
_Label_1129:
! ELSE...
	mov	1044,r13		! source line 1044
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1133		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	1045,r13		! source line 1045
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1135
_Label_1133:
! ELSE...
	mov	1047,r13		! source line 1047
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1136 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1047,r13		! source line 1047
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1135:
! END IF...
_Label_1131:
! END IF...
_Label_1127:
! CALL STATEMENT...
!   _temp_1137 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1138 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1051,r13		! source line 1051
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1052,r13		! source line 1052
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1053,r13		! source line 1053
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
	.word	_Label_1139
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1141
	.word	-12
	.word	4
	.word	_Label_1142
	.word	-16
	.word	4
	.word	_Label_1143
	.word	-20
	.word	4
	.word	_Label_1144
	.word	-24
	.word	4
	.word	_Label_1145
	.word	-28
	.word	4
	.word	_Label_1146
	.word	-32
	.word	4
	.word	_Label_1147
	.word	-36
	.word	4
	.word	_Label_1148
	.word	-40
	.word	4
	.word	_Label_1149
	.word	-44
	.word	4
	.word	_Label_1150
	.word	-48
	.word	4
	.word	0
_Label_1139:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1140:
	.ascii	"Pself\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1151
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1151:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1152
	.word	_sourceFileName
	.word	262		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1152:
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
_Label_1995:
	push	r0
	sub	r1,1,r1
	bne	_Label_1995
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   _temp_1153 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1155 = &_temp_1154
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1155 = _temp_1155 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1157 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1996:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1996
!   _temp_1157 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1159:
!   Data Move: *_temp_1155 = _temp_1157  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1997:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1997
!   _temp_1155 = _temp_1155 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1156 = _temp_1156 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1156) then goto _Label_1159
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1159
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1160 = &_temp_1154
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1998
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1998:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1153 = *_temp_1160  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1999:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1999
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
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
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1162 = &processManagerLock
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
	mov	1081,r13		! source line 1081
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
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1164 = &aProcessBecameFree
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
	mov	1084,r13		! source line 1084
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
	mov	1086,r13		! source line 1086
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
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1167 = &aProcessDied
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
	mov	1089,r13		! source line 1089
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1172  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1173 then goto _Label_1171		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1171
_Label_1169:
	mov	1089,r13		! source line 1089
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1174 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1174 [i ] into _temp_1175
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
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1177 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1177 [i ] into _temp_1178
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
!   _temp_1176 = _temp_1178		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1179 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1176  sizeInBytes=4
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
_Label_1170:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1168
! END FOR
_Label_1171:
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   _temp_1180 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1180 [0 ] into _temp_1181
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
!   _temp_1182 = _temp_1181 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1182  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	1093,r13		! source line 1093
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
	.word	_Label_1183
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1185
	.word	-12
	.word	4
	.word	_Label_1186
	.word	-16
	.word	4
	.word	_Label_1187
	.word	-20
	.word	4
	.word	_Label_1188
	.word	-24
	.word	4
	.word	_Label_1189
	.word	-28
	.word	4
	.word	_Label_1190
	.word	-32
	.word	4
	.word	_Label_1191
	.word	-36
	.word	4
	.word	_Label_1192
	.word	-40
	.word	4
	.word	_Label_1193
	.word	-44
	.word	4
	.word	_Label_1194
	.word	-48
	.word	4
	.word	_Label_1195
	.word	-52
	.word	4
	.word	_Label_1196
	.word	-56
	.word	4
	.word	_Label_1197
	.word	-60
	.word	4
	.word	_Label_1198
	.word	-64
	.word	4
	.word	_Label_1199
	.word	-68
	.word	4
	.word	_Label_1200
	.word	-72
	.word	4
	.word	_Label_1201
	.word	-76
	.word	4
	.word	_Label_1202
	.word	-80
	.word	4
	.word	_Label_1203
	.word	-84
	.word	4
	.word	_Label_1204
	.word	-88
	.word	4
	.word	_Label_1205
	.word	-212
	.word	124
	.word	_Label_1206
	.word	-216
	.word	4
	.word	_Label_1207
	.word	-220
	.word	4
	.word	_Label_1208
	.word	-1464
	.word	1244
	.word	_Label_1209
	.word	-1468
	.word	4
	.word	_Label_1210
	.word	-1472
	.word	4
	.word	0
_Label_1183:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1184:
	.ascii	"Pself\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1210:
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
_Label_2000:
	push	r0
	sub	r1,1,r1
	bne	_Label_2000
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1211 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1216 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1217 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1216  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1212:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1217 then goto _Label_1215		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1215
_Label_1213:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1218 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1219 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_1220 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1220 [i ] into _temp_1221
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
_Label_1214:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1212
! END FOR
_Label_1215:
! CALL STATEMENT...
!   _temp_1222 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_1223 = _function_139_PrintObjectAddr
	set	_function_139_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1224 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1223  sizeInBytes=4
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
	mov	1115,r13		! source line 1115
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1116,r13		! source line 1116
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1116,r13		! source line 1116
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
	.word	_Label_1225
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	_Label_1233
	.word	-36
	.word	4
	.word	_Label_1234
	.word	-40
	.word	4
	.word	_Label_1235
	.word	-44
	.word	4
	.word	_Label_1236
	.word	-48
	.word	4
	.word	_Label_1237
	.word	-52
	.word	4
	.word	_Label_1238
	.word	-56
	.word	4
	.word	0
_Label_1225:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1238:
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
_Label_2001:
	push	r0
	sub	r1,1,r1
	bne	_Label_2001
	mov	1121,r13		! source line 1121
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1239 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1245 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1244  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1245 then goto _Label_1243		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1243
_Label_1241:
	mov	1130,r13		! source line 1130
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1246 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1247 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1247 [i ] into _temp_1248
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
_Label_1242:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1240
! END FOR
_Label_1243:
! CALL STATEMENT...
!   _temp_1249 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1250 = _function_139_PrintObjectAddr
	set	_function_139_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1251 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1250  sizeInBytes=4
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
	mov	1137,r13		! source line 1137
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1138,r13		! source line 1138
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1138,r13		! source line 1138
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
	.word	_Label_1252
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1253
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1254
	.word	-12
	.word	4
	.word	_Label_1255
	.word	-16
	.word	4
	.word	_Label_1256
	.word	-20
	.word	4
	.word	_Label_1257
	.word	-24
	.word	4
	.word	_Label_1258
	.word	-28
	.word	4
	.word	_Label_1259
	.word	-32
	.word	4
	.word	_Label_1260
	.word	-36
	.word	4
	.word	_Label_1261
	.word	-40
	.word	4
	.word	_Label_1262
	.word	-44
	.word	4
	.word	_Label_1263
	.word	-48
	.word	4
	.word	_Label_1264
	.word	-52
	.word	4
	.word	0
_Label_1252:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1253:
	.ascii	"Pself\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1264:
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
_Label_2002:
	push	r0
	sub	r1,1,r1
	bne	_Label_2002
	mov	1143,r13		! source line 1143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1265 = &processManagerLock
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
	mov	1153,r13		! source line 1153
	mov	"\0\0WH",r10
_Label_1266:
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1270 = &freeList
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
!   Retrieve Result: targetName=_temp_1269  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1271 = _temp_1269 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1271 then goto _Label_1268 else goto _Label_1267
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1267
	jmp	_Label_1268
_Label_1267:
	mov	1153,r13		! source line 1153
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1272 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1273 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
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
	jmp	_Label_1266
_Label_1268:
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_1274 = &freeList
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
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1275 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1275 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0IF",r10
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_1279 = &freeList
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
!   Retrieve Result: targetName=_temp_1278  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1280 = _temp_1278 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1280 then goto _Label_1277 else goto _Label_1276
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1276
	jmp	_Label_1277
_Label_1276:
! THEN...
	mov	1161,r13		! source line 1161
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1281 = &freeList
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
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1282  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1283 = &freeList
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
	jmp	_Label_1284
_Label_1277:
! ELSE...
	mov	1165,r13		! source line 1165
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1284:
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1285 = &processManagerLock
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
	mov	1168,r13		! source line 1168
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
	.word	_Label_1286
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1288
	.word	-16
	.word	4
	.word	_Label_1289
	.word	-20
	.word	4
	.word	_Label_1290
	.word	-24
	.word	4
	.word	_Label_1291
	.word	-28
	.word	4
	.word	_Label_1292
	.word	-9
	.word	1
	.word	_Label_1293
	.word	-32
	.word	4
	.word	_Label_1294
	.word	-10
	.word	1
	.word	_Label_1295
	.word	-36
	.word	4
	.word	_Label_1296
	.word	-40
	.word	4
	.word	_Label_1297
	.word	-44
	.word	4
	.word	_Label_1298
	.word	-48
	.word	4
	.word	_Label_1299
	.word	-11
	.word	1
	.word	_Label_1300
	.word	-52
	.word	4
	.word	_Label_1301
	.word	-12
	.word	1
	.word	_Label_1302
	.word	-56
	.word	4
	.word	_Label_1303
	.word	-60
	.word	4
	.word	_Label_1304
	.word	-64
	.word	4
	.word	0
_Label_1286:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1287:
	.ascii	"Pself\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1292:
	.byte	'C'
	.ascii	"_temp_1280\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1294:
	.byte	'C'
	.ascii	"_temp_1278\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1299:
	.byte	'C'
	.ascii	"_temp_1271\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1301:
	.byte	'C'
	.ascii	"_temp_1269\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1303:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1304:
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
_Label_2003:
	push	r0
	sub	r1,1,r1
	bne	_Label_2003
	mov	1173,r13		! source line 1173
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_1305 = &processManagerLock
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
	mov	1179,r13		! source line 1179
	mov	"\0\0IF",r10
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1309 = &freeList
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
!   Retrieve Result: targetName=_temp_1308  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1310 = _temp_1308 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1310 then goto _Label_1307 else goto _Label_1306
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1306
	jmp	_Label_1307
_Label_1306:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1311 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1311  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1307:
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1312 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1313 = &freeList
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
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1314 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1315 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1314  sizeInBytes=4
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
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_1316 = &processManagerLock
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
	mov	1185,r13		! source line 1185
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
	.word	_Label_1317
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1319
	.word	12
	.word	4
	.word	_Label_1320
	.word	-16
	.word	4
	.word	_Label_1321
	.word	-20
	.word	4
	.word	_Label_1322
	.word	-24
	.word	4
	.word	_Label_1323
	.word	-28
	.word	4
	.word	_Label_1324
	.word	-32
	.word	4
	.word	_Label_1325
	.word	-36
	.word	4
	.word	_Label_1326
	.word	-9
	.word	1
	.word	_Label_1327
	.word	-40
	.word	4
	.word	_Label_1328
	.word	-10
	.word	1
	.word	_Label_1329
	.word	-44
	.word	4
	.word	0
_Label_1317:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1318:
	.ascii	"Pself\0"
	.align
_Label_1319:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1326:
	.byte	'C'
	.ascii	"_temp_1310\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1328:
	.byte	'C'
	.ascii	"_temp_1308\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1330
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1330:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1331
	.word	_sourceFileName
	.word	285		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1331:
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
_Label_2004:
	push	r0
	sub	r1,1,r1
	bne	_Label_2004
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1332 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
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
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1334 = &framesInUse
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
	mov	1236,r13		! source line 1236
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
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
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1336 = &frameManagerLock
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
	mov	1239,r13		! source line 1239
	mov	"\0\0AS",r10
!   waiting = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
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
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
!   _temp_1338 = &restOfLine
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
	mov	1242,r13		! source line 1242
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
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
!   _temp_1340 = &newFramesAvailable
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
	mov	1249,r13		! source line 1249
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1345 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1346 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1345  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1341:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1346 then goto _Label_1344		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1344
_Label_1342:
	mov	1249,r13		! source line 1249
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1349 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1349) then goto _Label_1348
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1348
!	jmp	_Label_1347
_Label_1347:
! THEN...
	mov	1253,r13		! source line 1253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1350 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1253,r13		! source line 1253
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1348:
!   Increment the FOR-LOOP index variable and jump back
_Label_1343:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1341
! END FOR
_Label_1344:
! RETURN STATEMENT...
	mov	1249,r13		! source line 1249
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
	.word	_Label_1351
	.word	4		! total size of parameters
	.word	64		! frame size = 64
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
	.word	_Label_1361
	.word	-44
	.word	4
	.word	_Label_1362
	.word	-48
	.word	4
	.word	_Label_1363
	.word	-52
	.word	4
	.word	_Label_1364
	.word	-56
	.word	4
	.word	_Label_1365
	.word	-60
	.word	4
	.word	_Label_1366
	.word	-64
	.word	4
	.word	0
_Label_1351:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1346\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1366:
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
_Label_2005:
	push	r0
	sub	r1,1,r1
	bne	_Label_2005
	mov	1260,r13		! source line 1260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0SE",r10
!   _temp_1367 = &frameManagerLock
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
!   _temp_1368 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1368  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1369 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1369  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1370 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1370  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
!   _temp_1371 = &framesInUse
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
	mov	1269,r13		! source line 1269
	mov	"\0\0SE",r10
!   _temp_1372 = &frameManagerLock
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
	mov	1269,r13		! source line 1269
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
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	_Label_1378
	.word	-24
	.word	4
	.word	_Label_1379
	.word	-28
	.word	4
	.word	_Label_1380
	.word	-32
	.word	4
	.word	0
_Label_1373:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1374:
	.ascii	"Pself\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1367\0"
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
_Label_2006:
	push	r0
	sub	r1,1,r1
	bne	_Label_2006
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_1381 = &frameManagerLock
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
	mov	1285,r13		! source line 1285
	mov	"\0\0WH",r10
_Label_1382:
!   if numberFreeFrames >= 1 then goto _Label_1384		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1384
!	jmp	_Label_1383
_Label_1383:
	mov	1285,r13		! source line 1285
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
!   _temp_1385 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1386 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1385  sizeInBytes=4
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
	jmp	_Label_1382
_Label_1384:
! ASSIGNMENT STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0AS",r10
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   _temp_1387 = &framesInUse
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
	mov	1291,r13		! source line 1291
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
	mov	1294,r13		! source line 1294
	mov	"\0\0SE",r10
!   _temp_1388 = &frameManagerLock
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
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_1389 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1389		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1299,r13		! source line 1299
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
	.word	_Label_1390
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1392
	.word	-12
	.word	4
	.word	_Label_1393
	.word	-16
	.word	4
	.word	_Label_1394
	.word	-20
	.word	4
	.word	_Label_1395
	.word	-24
	.word	4
	.word	_Label_1396
	.word	-28
	.word	4
	.word	_Label_1397
	.word	-32
	.word	4
	.word	_Label_1398
	.word	-36
	.word	4
	.word	_Label_1399
	.word	-40
	.word	4
	.word	0
_Label_1390:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1391:
	.ascii	"Pself\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1398:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1399:
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
_Label_2007:
	push	r0
	sub	r1,1,r1
	bne	_Label_2007
	mov	1304,r13		! source line 1304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_1400 = &frameManagerLock
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
	mov	1309,r13		! source line 1309
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
	mov	1310,r13		! source line 1310
	mov	"\0\0IF",r10
!   if waiting <= 1 then goto _Label_1402		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1402
!	jmp	_Label_1401
_Label_1401:
! THEN...
	mov	1311,r13		! source line 1311
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1403 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1404 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1403  sizeInBytes=4
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
_Label_1402:
! WHILE STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0WH",r10
_Label_1405:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1407		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1407
!	jmp	_Label_1406
_Label_1406:
	mov	1314,r13		! source line 1314
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0SE",r10
!   _temp_1408 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1409 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1408  sizeInBytes=4
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
	jmp	_Label_1405
_Label_1407:
! FOR STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1414 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1415 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1414  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1410:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1415 then goto _Label_1413		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1413
_Label_1411:
	mov	1318,r13		! source line 1318
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1416 = &framesInUse
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
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   _temp_1417 = frameAddr * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1417		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1321,r13		! source line 1321
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
_Label_1412:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1410
! END FOR
_Label_1413:
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
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
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1418 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1326,r13		! source line 1326
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
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_1419 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1420 = &restOfLine
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1419  sizeInBytes=4
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
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1421 = &frameManagerLock
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
	mov	1329,r13		! source line 1329
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
	.word	_Label_1422
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1424
	.word	12
	.word	4
	.word	_Label_1425
	.word	16
	.word	4
	.word	_Label_1426
	.word	-12
	.word	4
	.word	_Label_1427
	.word	-16
	.word	4
	.word	_Label_1428
	.word	-20
	.word	4
	.word	_Label_1429
	.word	-24
	.word	4
	.word	_Label_1430
	.word	-28
	.word	4
	.word	_Label_1431
	.word	-32
	.word	4
	.word	_Label_1432
	.word	-36
	.word	4
	.word	_Label_1433
	.word	-40
	.word	4
	.word	_Label_1434
	.word	-44
	.word	4
	.word	_Label_1435
	.word	-48
	.word	4
	.word	_Label_1436
	.word	-52
	.word	4
	.word	_Label_1437
	.word	-56
	.word	4
	.word	_Label_1438
	.word	-60
	.word	4
	.word	_Label_1439
	.word	-64
	.word	4
	.word	_Label_1440
	.word	-68
	.word	4
	.word	0
_Label_1422:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1423:
	.ascii	"Pself\0"
	.align
_Label_1424:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1425:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1440:
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
_Label_2008:
	push	r0
	sub	r1,1,r1
	bne	_Label_2008
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0SE",r10
!   _temp_1441 = &frameManagerLock
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
	mov	1339,r13		! source line 1339
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1446 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1449 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1448 = *_temp_1449  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1447 = _temp_1448 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1446  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1442:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1447 then goto _Label_1445		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1445
_Label_1443:
	mov	1339,r13		! source line 1339
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
	mov	1340,r13		! source line 1340
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
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_1450 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1450 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0SE",r10
!   _temp_1451 = &framesInUse
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
_Label_1444:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1442
! END FOR
_Label_1445:
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1452 = *_temp_1453  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1452		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1454 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1455 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1454  sizeInBytes=4
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
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1456 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0SE",r10
!   _temp_1457 = &frameManagerLock
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
	mov	1349,r13		! source line 1349
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
	.word	_Label_1458
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1460
	.word	12
	.word	4
	.word	_Label_1461
	.word	-12
	.word	4
	.word	_Label_1462
	.word	-16
	.word	4
	.word	_Label_1463
	.word	-20
	.word	4
	.word	_Label_1464
	.word	-24
	.word	4
	.word	_Label_1465
	.word	-28
	.word	4
	.word	_Label_1466
	.word	-32
	.word	4
	.word	_Label_1467
	.word	-36
	.word	4
	.word	_Label_1468
	.word	-40
	.word	4
	.word	_Label_1469
	.word	-44
	.word	4
	.word	_Label_1470
	.word	-48
	.word	4
	.word	_Label_1471
	.word	-52
	.word	4
	.word	_Label_1472
	.word	-56
	.word	4
	.word	_Label_1473
	.word	-60
	.word	4
	.word	_Label_1474
	.word	-64
	.word	4
	.word	_Label_1475
	.word	-68
	.word	4
	.word	_Label_1476
	.word	-72
	.word	4
	.word	0
_Label_1458:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1459:
	.ascii	"Pself\0"
	.align
_Label_1460:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1474:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1476:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1477
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
_Label_1477:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1478
	.word	_sourceFileName
	.word	306		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1478:
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
_Label_2009:
	push	r0
	sub	r1,1,r1
	bne	_Label_2009
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_1479 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1481 = &_temp_1480
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1481 = _temp_1481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1483:
!   Data Move: *_temp_1481 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1481 = _temp_1481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1482 = _temp_1482 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1482) then goto _Label_1483
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1483
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1484 = &_temp_1480
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2010
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2010:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1479 = *_temp_1484  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2011:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2011
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
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
	.word	_Label_1485
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1487
	.word	-12
	.word	4
	.word	_Label_1488
	.word	-16
	.word	4
	.word	_Label_1489
	.word	-20
	.word	4
	.word	_Label_1490
	.word	-104
	.word	84
	.word	_Label_1491
	.word	-108
	.word	4
	.word	0
_Label_1485:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1486:
	.ascii	"Pself\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1479\0"
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
_Label_2012:
	push	r0
	sub	r1,1,r1
	bne	_Label_2012
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1492 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1493 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1498 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1499 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1498  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1494:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1499 then goto _Label_1497		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1497
_Label_1495:
	mov	1377,r13		! source line 1377
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1500 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1502 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1502 [i ] into _temp_1503
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
!   _temp_1501 = _temp_1503		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1504 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1506 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1506 [i ] into _temp_1507
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
!   Data Move: _temp_1505 = *_temp_1507  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1508 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1509 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1510 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1512) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1511  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1385,r13		! source line 1385
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1513 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0IF",r10
	mov	1387,r13		! source line 1387
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1517) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1516  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1516) then goto _Label_1515
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1515
!	jmp	_Label_1514
_Label_1514:
! THEN...
	mov	1388,r13		! source line 1388
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1519) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1518  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1520
_Label_1515:
! ELSE...
	mov	1390,r13		! source line 1390
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1521 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1520:
! CALL STATEMENT...
!   _temp_1522 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0IF",r10
	mov	1393,r13		! source line 1393
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1525) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1523 else goto _Label_1524
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1524
	jmp	_Label_1523
_Label_1523:
! THEN...
	mov	1394,r13		! source line 1394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1526 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1527
_Label_1524:
! ELSE...
	mov	1396,r13		! source line 1396
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1528 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1527:
! CALL STATEMENT...
!   _temp_1529 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0IF",r10
	mov	1399,r13		! source line 1399
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1532) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1530 else goto _Label_1531
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1531
	jmp	_Label_1530
_Label_1530:
! THEN...
	mov	1400,r13		! source line 1400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1533 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1533  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1534
_Label_1531:
! ELSE...
	mov	1402,r13		! source line 1402
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1535 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1534:
! CALL STATEMENT...
!   _temp_1536 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1536  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
	mov	1405,r13		! source line 1405
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1539) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1537 else goto _Label_1538
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1538
	jmp	_Label_1537
_Label_1537:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1540 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1540  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1541
_Label_1538:
! ELSE...
	mov	1408,r13		! source line 1408
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1542 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1541:
! CALL STATEMENT...
!   _temp_1543 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
	mov	1411,r13		! source line 1411
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1546) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1544 else goto _Label_1545
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1545
	jmp	_Label_1544
_Label_1544:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1547 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1548
_Label_1545:
! ELSE...
	mov	1414,r13		! source line 1414
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1549 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1548:
! CALL STATEMENT...
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1496:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1494
! END FOR
_Label_1497:
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
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
	.word	_Label_1550
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	_Label_1558
	.word	-36
	.word	4
	.word	_Label_1559
	.word	-40
	.word	4
	.word	_Label_1560
	.word	-44
	.word	4
	.word	_Label_1561
	.word	-48
	.word	4
	.word	_Label_1562
	.word	-52
	.word	4
	.word	_Label_1563
	.word	-56
	.word	4
	.word	_Label_1564
	.word	-60
	.word	4
	.word	_Label_1565
	.word	-64
	.word	4
	.word	_Label_1566
	.word	-68
	.word	4
	.word	_Label_1567
	.word	-72
	.word	4
	.word	_Label_1568
	.word	-76
	.word	4
	.word	_Label_1569
	.word	-80
	.word	4
	.word	_Label_1570
	.word	-84
	.word	4
	.word	_Label_1571
	.word	-88
	.word	4
	.word	_Label_1572
	.word	-92
	.word	4
	.word	_Label_1573
	.word	-96
	.word	4
	.word	_Label_1574
	.word	-100
	.word	4
	.word	_Label_1575
	.word	-104
	.word	4
	.word	_Label_1576
	.word	-108
	.word	4
	.word	_Label_1577
	.word	-112
	.word	4
	.word	_Label_1578
	.word	-116
	.word	4
	.word	_Label_1579
	.word	-120
	.word	4
	.word	_Label_1580
	.word	-124
	.word	4
	.word	_Label_1581
	.word	-128
	.word	4
	.word	_Label_1582
	.word	-132
	.word	4
	.word	_Label_1583
	.word	-136
	.word	4
	.word	_Label_1584
	.word	-140
	.word	4
	.word	_Label_1585
	.word	-144
	.word	4
	.word	_Label_1586
	.word	-148
	.word	4
	.word	_Label_1587
	.word	-152
	.word	4
	.word	_Label_1588
	.word	-156
	.word	4
	.word	_Label_1589
	.word	-160
	.word	4
	.word	_Label_1590
	.word	-164
	.word	4
	.word	_Label_1591
	.word	-168
	.word	4
	.word	0
_Label_1550:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1591:
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
_Label_2013:
	push	r0
	sub	r1,1,r1
	bne	_Label_2013
	mov	1422,r13		! source line 1422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   _temp_1594 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1594 [entry ] into _temp_1595
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
!   Data Move: _temp_1593 = *_temp_1595  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1592 = _temp_1593 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1592  (sizeInBytes=4)
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
	.word	_Label_1596
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1598
	.word	12
	.word	4
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-24
	.word	4
	.word	0
_Label_1596:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1597:
	.ascii	"Pself\0"
	.align
_Label_1598:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1592\0"
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
_Label_2014:
	push	r0
	sub	r1,1,r1
	bne	_Label_2014
	mov	1432,r13		! source line 1432
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
!   _temp_1605 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1605 [entry ] into _temp_1606
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
!   Data Move: _temp_1604 = *_temp_1606  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1603 = _temp_1604 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1603  (sizeInBytes=4)
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
	.word	_Label_1607
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1609
	.word	12
	.word	4
	.word	_Label_1610
	.word	-12
	.word	4
	.word	_Label_1611
	.word	-16
	.word	4
	.word	_Label_1612
	.word	-20
	.word	4
	.word	_Label_1613
	.word	-24
	.word	4
	.word	0
_Label_1607:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1608:
	.ascii	"Pself\0"
	.align
_Label_1609:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1603\0"
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
_Label_2015:
	push	r0
	sub	r1,1,r1
	bne	_Label_2015
	mov	1441,r13		! source line 1441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   _temp_1614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1614 [entry ] into _temp_1615
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
!   _temp_1619 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1619 [entry ] into _temp_1620
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
!   Data Move: _temp_1618 = *_temp_1620  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1617 = _temp_1618 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1616 = _temp_1617 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1615 = _temp_1616  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
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
	.word	_Label_1621
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1623
	.word	12
	.word	4
	.word	_Label_1624
	.word	16
	.word	4
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	0
_Label_1621:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1622:
	.ascii	"Pself\0"
	.align
_Label_1623:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1614\0"
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
_Label_2016:
	push	r0
	sub	r1,1,r1
	bne	_Label_2016
	mov	1451,r13		! source line 1451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0RE",r10
!   _temp_1635 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1635 [entry ] into _temp_1636
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
!   Data Move: _temp_1634 = *_temp_1636  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1633 = _temp_1634 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1633) then goto _Label_1637
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1637
!   _temp_1632 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1638
_Label_1637:
!   _temp_1632 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1638:
!   ReturnResult: _temp_1632  (sizeInBytes=1)
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
	.word	_Label_1639
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1641
	.word	12
	.word	4
	.word	_Label_1642
	.word	-16
	.word	4
	.word	_Label_1643
	.word	-20
	.word	4
	.word	_Label_1644
	.word	-24
	.word	4
	.word	_Label_1645
	.word	-28
	.word	4
	.word	_Label_1646
	.word	-9
	.word	1
	.word	0
_Label_1639:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1640:
	.ascii	"Pself\0"
	.align
_Label_1641:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1646:
	.byte	'C'
	.ascii	"_temp_1632\0"
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
_Label_2017:
	push	r0
	sub	r1,1,r1
	bne	_Label_2017
	mov	1460,r13		! source line 1460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
!   _temp_1650 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1650 [entry ] into _temp_1651
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
!   Data Move: _temp_1649 = *_temp_1651  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1648 = _temp_1649 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1648) then goto _Label_1652
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1652
!   _temp_1647 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1653
_Label_1652:
!   _temp_1647 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1653:
!   ReturnResult: _temp_1647  (sizeInBytes=1)
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
	.word	_Label_1654
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1656
	.word	12
	.word	4
	.word	_Label_1657
	.word	-16
	.word	4
	.word	_Label_1658
	.word	-20
	.word	4
	.word	_Label_1659
	.word	-24
	.word	4
	.word	_Label_1660
	.word	-28
	.word	4
	.word	_Label_1661
	.word	-9
	.word	1
	.word	0
_Label_1654:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1655:
	.ascii	"Pself\0"
	.align
_Label_1656:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1661:
	.byte	'C'
	.ascii	"_temp_1647\0"
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
_Label_2018:
	push	r0
	sub	r1,1,r1
	bne	_Label_2018
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_1665 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1665 [entry ] into _temp_1666
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
!   Data Move: _temp_1664 = *_temp_1666  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1663 = _temp_1664 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1663) then goto _Label_1667
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1667
!   _temp_1662 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1668
_Label_1667:
!   _temp_1662 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1668:
!   ReturnResult: _temp_1662  (sizeInBytes=1)
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
	.word	_Label_1669
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1671
	.word	12
	.word	4
	.word	_Label_1672
	.word	-16
	.word	4
	.word	_Label_1673
	.word	-20
	.word	4
	.word	_Label_1674
	.word	-24
	.word	4
	.word	_Label_1675
	.word	-28
	.word	4
	.word	_Label_1676
	.word	-9
	.word	1
	.word	0
_Label_1669:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1670:
	.ascii	"Pself\0"
	.align
_Label_1671:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1676:
	.byte	'C'
	.ascii	"_temp_1662\0"
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
_Label_2019:
	push	r0
	sub	r1,1,r1
	bne	_Label_2019
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_1680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1680 [entry ] into _temp_1681
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
!   Data Move: _temp_1679 = *_temp_1681  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1678 = _temp_1679 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1678) then goto _Label_1682
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1682
!   _temp_1677 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1683
_Label_1682:
!   _temp_1677 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1683:
!   ReturnResult: _temp_1677  (sizeInBytes=1)
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
	.word	_Label_1684
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1686
	.word	12
	.word	4
	.word	_Label_1687
	.word	-16
	.word	4
	.word	_Label_1688
	.word	-20
	.word	4
	.word	_Label_1689
	.word	-24
	.word	4
	.word	_Label_1690
	.word	-28
	.word	4
	.word	_Label_1691
	.word	-9
	.word	1
	.word	0
_Label_1684:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1685:
	.ascii	"Pself\0"
	.align
_Label_1686:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1691:
	.byte	'C'
	.ascii	"_temp_1677\0"
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
_Label_2020:
	push	r0
	sub	r1,1,r1
	bne	_Label_2020
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   _temp_1692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1692 [entry ] into _temp_1693
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
!   _temp_1696 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1696 [entry ] into _temp_1697
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
!   Data Move: _temp_1695 = *_temp_1697  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1694 = _temp_1695 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1693 = _temp_1694  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
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
	.word	_Label_1698
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1700
	.word	12
	.word	4
	.word	_Label_1701
	.word	-12
	.word	4
	.word	_Label_1702
	.word	-16
	.word	4
	.word	_Label_1703
	.word	-20
	.word	4
	.word	_Label_1704
	.word	-24
	.word	4
	.word	_Label_1705
	.word	-28
	.word	4
	.word	_Label_1706
	.word	-32
	.word	4
	.word	0
_Label_1698:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1699:
	.ascii	"Pself\0"
	.align
_Label_1700:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1692\0"
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
_Label_2021:
	push	r0
	sub	r1,1,r1
	bne	_Label_2021
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   _temp_1707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1707 [entry ] into _temp_1708
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
!   _temp_1711 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1711 [entry ] into _temp_1712
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
!   Data Move: _temp_1710 = *_temp_1712  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1709 = _temp_1710 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1708 = _temp_1709  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
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
	.word	_Label_1713
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1714
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1715
	.word	12
	.word	4
	.word	_Label_1716
	.word	-12
	.word	4
	.word	_Label_1717
	.word	-16
	.word	4
	.word	_Label_1718
	.word	-20
	.word	4
	.word	_Label_1719
	.word	-24
	.word	4
	.word	_Label_1720
	.word	-28
	.word	4
	.word	_Label_1721
	.word	-32
	.word	4
	.word	0
_Label_1713:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1714:
	.ascii	"Pself\0"
	.align
_Label_1715:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1707\0"
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
_Label_2022:
	push	r0
	sub	r1,1,r1
	bne	_Label_2022
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_1722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1722 [entry ] into _temp_1723
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
!   _temp_1726 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1726 [entry ] into _temp_1727
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
!   Data Move: _temp_1725 = *_temp_1727  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1724 = _temp_1725 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1723 = _temp_1724  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
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
	.word	_Label_1728
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1730
	.word	12
	.word	4
	.word	_Label_1731
	.word	-12
	.word	4
	.word	_Label_1732
	.word	-16
	.word	4
	.word	_Label_1733
	.word	-20
	.word	4
	.word	_Label_1734
	.word	-24
	.word	4
	.word	_Label_1735
	.word	-28
	.word	4
	.word	_Label_1736
	.word	-32
	.word	4
	.word	0
_Label_1728:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1729:
	.ascii	"Pself\0"
	.align
_Label_1730:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1722\0"
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
_Label_2023:
	push	r0
	sub	r1,1,r1
	bne	_Label_2023
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_1737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1737 [entry ] into _temp_1738
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
!   _temp_1741 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1741 [entry ] into _temp_1742
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
!   Data Move: _temp_1740 = *_temp_1742  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1739 = _temp_1740 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1738 = _temp_1739  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
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
	.word	_Label_1743
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1745
	.word	12
	.word	4
	.word	_Label_1746
	.word	-12
	.word	4
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-24
	.word	4
	.word	_Label_1750
	.word	-28
	.word	4
	.word	_Label_1751
	.word	-32
	.word	4
	.word	0
_Label_1743:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1744:
	.ascii	"Pself\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1737\0"
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
_Label_2024:
	push	r0
	sub	r1,1,r1
	bne	_Label_2024
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_1752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1752 [entry ] into _temp_1753
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
!   _temp_1756 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1756 [entry ] into _temp_1757
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
!   Data Move: _temp_1755 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1754 = _temp_1755 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1753 = _temp_1754  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
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
	.word	_Label_1758
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1760
	.word	12
	.word	4
	.word	_Label_1761
	.word	-12
	.word	4
	.word	_Label_1762
	.word	-16
	.word	4
	.word	_Label_1763
	.word	-20
	.word	4
	.word	_Label_1764
	.word	-24
	.word	4
	.word	_Label_1765
	.word	-28
	.word	4
	.word	_Label_1766
	.word	-32
	.word	4
	.word	0
_Label_1758:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1759:
	.ascii	"Pself\0"
	.align
_Label_1760:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1752\0"
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
_Label_2025:
	push	r0
	sub	r1,1,r1
	bne	_Label_2025
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_1767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1767 [entry ] into _temp_1768
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
!   _temp_1771 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1771 [entry ] into _temp_1772
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
!   Data Move: _temp_1770 = *_temp_1772  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1769 = _temp_1770 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1768 = _temp_1769  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
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
	.word	_Label_1773
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1775
	.word	12
	.word	4
	.word	_Label_1776
	.word	-12
	.word	4
	.word	_Label_1777
	.word	-16
	.word	4
	.word	_Label_1778
	.word	-20
	.word	4
	.word	_Label_1779
	.word	-24
	.word	4
	.word	_Label_1780
	.word	-28
	.word	4
	.word	_Label_1781
	.word	-32
	.word	4
	.word	0
_Label_1773:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1774:
	.ascii	"Pself\0"
	.align
_Label_1775:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1767\0"
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
_Label_2026:
	push	r0
	sub	r1,1,r1
	bne	_Label_2026
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_1782 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1782 [entry ] into _temp_1783
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
!   _temp_1786 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1786 [entry ] into _temp_1787
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
!   Data Move: _temp_1785 = *_temp_1787  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1784 = _temp_1785 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1783 = _temp_1784  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
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
	.word	_Label_1788
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1790
	.word	12
	.word	4
	.word	_Label_1791
	.word	-12
	.word	4
	.word	_Label_1792
	.word	-16
	.word	4
	.word	_Label_1793
	.word	-20
	.word	4
	.word	_Label_1794
	.word	-24
	.word	4
	.word	_Label_1795
	.word	-28
	.word	4
	.word	_Label_1796
	.word	-32
	.word	4
	.word	0
_Label_1788:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1789:
	.ascii	"Pself\0"
	.align
_Label_1790:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1782\0"
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
_Label_2027:
	push	r0
	sub	r1,1,r1
	bne	_Label_2027
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_1797 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1797 [entry ] into _temp_1798
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
!   _temp_1801 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1801 [entry ] into _temp_1802
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
!   Data Move: _temp_1800 = *_temp_1802  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1799 = _temp_1800 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1798 = _temp_1799  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
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
	.word	_Label_1803
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1805
	.word	12
	.word	4
	.word	_Label_1806
	.word	-12
	.word	4
	.word	_Label_1807
	.word	-16
	.word	4
	.word	_Label_1808
	.word	-20
	.word	4
	.word	_Label_1809
	.word	-24
	.word	4
	.word	_Label_1810
	.word	-28
	.word	4
	.word	_Label_1811
	.word	-32
	.word	4
	.word	0
_Label_1803:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1804:
	.ascii	"Pself\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1797\0"
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
_Label_2028:
	push	r0
	sub	r1,1,r1
	bne	_Label_2028
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1813 [0 ] into _temp_1814
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
!   _temp_1812 = _temp_1814		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1815 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1815  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
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
	.word	_Label_1816
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1818
	.word	-12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	0
_Label_1816:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1817:
	.ascii	"Pself\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1812\0"
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
_Label_2029:
	push	r0
	sub	r1,1,r1
	bne	_Label_2029
	mov	1570,r13		! source line 1570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1822
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1822
	jmp	_Label_1823
_Label_1822:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1824
_Label_1823:
! ELSE...
	mov	1587,r13		! source line 1587
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1826		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1826
!	jmp	_Label_1825
_Label_1825:
! THEN...
	mov	1588,r13		! source line 1588
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1826:
! END IF...
_Label_1824:
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
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
	mov	1591,r13		! source line 1591
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
	mov	1594,r13		! source line 1594
	mov	"\0\0WH",r10
_Label_1827:
!	jmp	_Label_1828
_Label_1828:
	mov	1594,r13		! source line 1594
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1831		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1831
!	jmp	_Label_1830
_Label_1830:
! THEN...
	mov	1596,r13		! source line 1596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1832 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1832  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1596,r13		! source line 1596
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1831:
! IF STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0IF",r10
	mov	1599,r13		! source line 1599
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1836) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1835  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1835 then goto _Label_1834 else goto _Label_1833
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1833
	jmp	_Label_1834
_Label_1833:
! THEN...
	mov	1600,r13		! source line 1600
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1837 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1837  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1834:
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1839) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1838  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1838 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0WH",r10
_Label_1840:
!   if offset >= 8192 then goto _Label_1842		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1842
!	jmp	_Label_1841
_Label_1841:
	mov	1605,r13		! source line 1605
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1843 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1843  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1845		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1845
!	jmp	_Label_1844
_Label_1844:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1845:
! END WHILE...
	jmp	_Label_1840
_Label_1842:
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1827
_Label_1829:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1846
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1848
	.word	12
	.word	4
	.word	_Label_1849
	.word	16
	.word	4
	.word	_Label_1850
	.word	20
	.word	4
	.word	_Label_1851
	.word	-9
	.word	1
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-24
	.word	4
	.word	_Label_1855
	.word	-28
	.word	4
	.word	_Label_1856
	.word	-10
	.word	1
	.word	_Label_1857
	.word	-32
	.word	4
	.word	_Label_1858
	.word	-36
	.word	4
	.word	_Label_1859
	.word	-40
	.word	4
	.word	_Label_1860
	.word	-44
	.word	4
	.word	_Label_1861
	.word	-48
	.word	4
	.word	0
_Label_1846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1847:
	.ascii	"Pself\0"
	.align
_Label_1848:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1849:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1851:
	.byte	'C'
	.ascii	"_temp_1843\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1856:
	.byte	'C'
	.ascii	"_temp_1835\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1858:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1859:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1861:
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
_Label_2030:
	push	r0
	sub	r1,1,r1
	bne	_Label_2030
	mov	1624,r13		! source line 1624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1862
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1862
	jmp	_Label_1863
_Label_1862:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1864
_Label_1863:
! ELSE...
	mov	1637,r13		! source line 1637
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1866		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	1638,r13		! source line 1638
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1866:
! END IF...
_Label_1864:
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
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
	mov	1641,r13		! source line 1641
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
	mov	1642,r13		! source line 1642
	mov	"\0\0WH",r10
_Label_1867:
!	jmp	_Label_1868
_Label_1868:
	mov	1642,r13		! source line 1642
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1873		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1873
	jmp	_Label_1870
_Label_1873:
	mov	1644,r13		! source line 1644
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1875) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1874 then goto _Label_1872 else goto _Label_1870
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1870
	jmp	_Label_1872
_Label_1872:
	mov	1645,r13		! source line 1645
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1877) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1876  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1876 then goto _Label_1871 else goto _Label_1870
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1870
	jmp	_Label_1871
_Label_1870:
! THEN...
	mov	1646,r13		! source line 1646
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1871:
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1879) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1878  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1878 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0WH",r10
_Label_1880:
!   if offset >= 8192 then goto _Label_1882		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1882
!	jmp	_Label_1881
_Label_1881:
	mov	1649,r13		! source line 1649
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1883 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1883  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1885		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1885
!	jmp	_Label_1884
_Label_1884:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1885:
! END WHILE...
	jmp	_Label_1880
_Label_1882:
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1867
_Label_1869:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1886
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1888
	.word	12
	.word	4
	.word	_Label_1889
	.word	16
	.word	4
	.word	_Label_1890
	.word	20
	.word	4
	.word	_Label_1891
	.word	-9
	.word	1
	.word	_Label_1892
	.word	-16
	.word	4
	.word	_Label_1893
	.word	-20
	.word	4
	.word	_Label_1894
	.word	-24
	.word	4
	.word	_Label_1895
	.word	-10
	.word	1
	.word	_Label_1896
	.word	-28
	.word	4
	.word	_Label_1897
	.word	-11
	.word	1
	.word	_Label_1898
	.word	-32
	.word	4
	.word	_Label_1899
	.word	-36
	.word	4
	.word	_Label_1900
	.word	-40
	.word	4
	.word	_Label_1901
	.word	-44
	.word	4
	.word	0
_Label_1886:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1887:
	.ascii	"Pself\0"
	.align
_Label_1888:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1890:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1891:
	.byte	'C'
	.ascii	"_temp_1883\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1895:
	.byte	'C'
	.ascii	"_temp_1876\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1897:
	.byte	'C'
	.ascii	"_temp_1874\0"
	.align
_Label_1898:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1899:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1901:
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
_Label_2031:
	push	r0
	sub	r1,1,r1
	bne	_Label_2031
	mov	1666,r13		! source line 1666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0IF",r10
	mov	1690,r13		! source line 1690
	mov	"\0\0SE",r10
!   _temp_1905 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1906) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1905  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1904  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1904 >= 4 then goto _Label_1903		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1903
!	jmp	_Label_1902
_Label_1902:
! THEN...
	mov	1693,r13		! source line 1693
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1903:
! IF STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1908		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1908
!	jmp	_Label_1907
_Label_1907:
! THEN...
	mov	1698,r13		! source line 1698
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1908:
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
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
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
	mov	1703,r13		! source line 1703
	mov	"\0\0SE",r10
!   _temp_1911 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1910 = _temp_1911 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1912 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1913) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1910  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1912  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1909  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1909  (sizeInBytes=4)
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
	.word	_Label_1914
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1916
	.word	12
	.word	4
	.word	_Label_1917
	.word	16
	.word	4
	.word	_Label_1918
	.word	20
	.word	4
	.word	_Label_1919
	.word	-12
	.word	4
	.word	_Label_1920
	.word	-16
	.word	4
	.word	_Label_1921
	.word	-20
	.word	4
	.word	_Label_1922
	.word	-24
	.word	4
	.word	_Label_1923
	.word	-28
	.word	4
	.word	_Label_1924
	.word	-32
	.word	4
	.word	_Label_1925
	.word	-36
	.word	4
	.word	_Label_1926
	.word	-40
	.word	4
	.word	_Label_1927
	.word	-44
	.word	4
	.word	0
_Label_1914:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1915:
	.ascii	"Pself\0"
	.align
_Label_1916:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1927:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

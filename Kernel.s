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
	set	0x0452285a,r4		! myHashVal = 72493146
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
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
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
_Label_1809:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1809
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
_Label_1810:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1810
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
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
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
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
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
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
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
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
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
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
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
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
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
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
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
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
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
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_275 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
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
	mov	652,r13		! source line 652
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
	mov	653,r13		! source line 653
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
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
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
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
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
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
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
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
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
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
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
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
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
	mov	672,r13		! source line 672
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
	mov	674,r13		! source line 674
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
	mov	675,r13		! source line 675
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
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
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
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	994,r13		! source line 994
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
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	999,r13		! source line 999
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
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	1004,r13		! source line 1004
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
	mov	1010,r13		! source line 1010
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
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
_Label_1821:
	push	r0
	sub	r1,1,r1
	bne	_Label_1821
	mov	1488,r13		! source line 1488
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1500,r13		! source line 1500
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
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
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
_Label_1822:
	push	r0
	sub	r1,1,r1
	bne	_Label_1822
	mov	1506,r13		! source line 1506
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
	mov	1516,r13		! source line 1516
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
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
	mov	1528,r13		! source line 1528
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
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
_Label_1823:
	push	r0
	sub	r1,1,r1
	bne	_Label_1823
	mov	1542,r13		! source line 1542
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
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
	mov	1549,r13		! source line 1549
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
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
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	1554,r13		! source line 1554
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
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
	mov	1561,r13		! source line 1561
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
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
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	1566,r13		! source line 1566
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
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
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1573,r13		! source line 1573
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
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	1578,r13		! source line 1578
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
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
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
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
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	1590,r13		! source line 1590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1596,r13		! source line 1596
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
	mov	1597,r13		! source line 1597
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
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
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	1602,r13		! source line 1602
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
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
	mov	1609,r13		! source line 1609
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
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
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	1614,r13		! source line 1614
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
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
	mov	1621,r13		! source line 1621
	mov	"\0\0CA",r10
	call	_function_133_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
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
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	1626,r13		! source line 1626
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
	mov	1631,r13		! source line 1631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
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
	mov	1633,r13		! source line 1633
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1636,r13		! source line 1636
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
	mov	1637,r13		! source line 1637
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1637,r13		! source line 1637
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
	mov	1639,r13		! source line 1639
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_361 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_360:
! SEND STATEMENT...
	mov	1641,r13		! source line 1641
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
	mov	1647,r13		! source line 1647
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
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
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	1652,r13		! source line 1652
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1673,r13		! source line 1673
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1832
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_371
_Label_1832:
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
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
!   Call the function
	mov	1675,r13		! source line 1675
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
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
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
	mov	1680,r13		! source line 1680
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1680,r13		! source line 1680
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
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
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
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
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
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1687,r13		! source line 1687
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
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
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
	mov	1691,r13		! source line 1691
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
	mov	1691,r13		! source line 1691
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
	mov	1693,r13		! source line 1693
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
	mov	1693,r13		! source line 1693
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
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1695,r13		! source line 1695
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
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
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
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1705,r13		! source line 1705
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
	mov	1706,r13		! source line 1706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_372:
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1713,r13		! source line 1713
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
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
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
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
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
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
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
	mov	1738,r13		! source line 1738
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
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
	mov	1745,r13		! source line 1745
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
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
	mov	1752,r13		! source line 1752
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
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
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
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
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
	mov	1773,r13		! source line 1773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
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
	mov	1787,r13		! source line 1787
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
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
_Label_1833:
	push	r0
	sub	r1,1,r1
	bne	_Label_1833
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
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
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
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
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
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
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
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
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
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
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
_Label_1839:
	push	r0
	sub	r1,1,r1
	bne	_Label_1839
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
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
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
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
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
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_531 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_529:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
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
	mov	394,r13		! source line 394
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
	mov	395,r13		! source line 395
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
	mov	396,r13		! source line 396
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
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
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
_Label_1842:
	push	r0
	sub	r1,1,r1
	bne	_Label_1842
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
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
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_543 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_541:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
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
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_546		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_546
!	jmp	_Label_545
_Label_545:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
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
	mov	413,r13		! source line 413
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
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
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
_Label_1843:
	push	r0
	sub	r1,1,r1
	bne	_Label_1843
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
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
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_562 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_560:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_563:
!	jmp	_Label_564
_Label_564:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
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
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_567
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_567
	jmp	_Label_568
_Label_567:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_565
! END IF...
_Label_568:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
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
	mov	434,r13		! source line 434
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
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
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
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_581
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
_Label_581:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_582
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_582:
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
_Label_1844:
	push	r0
	sub	r1,1,r1
	bne	_Label_1844
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_583 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_583) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_583 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_584 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_584 [0 ] into _temp_585
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
!   Data Move: *_temp_585 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_586 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_586 [999 ] into _temp_587
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
!   Data Move: *_temp_587 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_588 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_588 [999 ] into _temp_589
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
!   stackTop = _temp_589		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_590 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_592 = &_temp_591
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_592 = _temp_592 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_594:
!   Data Move: *_temp_592 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_592 = _temp_592 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_593 = _temp_593 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_593) then goto _Label_594
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_594
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_595 = &_temp_591
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1845:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_590 = *_temp_595  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1846
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_596 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_598 = &_temp_597
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_598 = _temp_598 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_600:
!   Data Move: *_temp_598 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_598 = _temp_598 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_599 = _temp_599 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_599) then goto _Label_600
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_600
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_601 = &_temp_597
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1847
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1847:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_596 = *_temp_601  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1848:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1848
! RETURN STATEMENT...
	mov	461,r13		! source line 461
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
	.word	_Label_602
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_604
	.word	12
	.word	4
	.word	_Label_605
	.word	-12
	.word	4
	.word	_Label_606
	.word	-16
	.word	4
	.word	_Label_607
	.word	-20
	.word	4
	.word	_Label_608
	.word	-84
	.word	64
	.word	_Label_609
	.word	-88
	.word	4
	.word	_Label_610
	.word	-92
	.word	4
	.word	_Label_611
	.word	-96
	.word	4
	.word	_Label_612
	.word	-100
	.word	4
	.word	_Label_613
	.word	-156
	.word	56
	.word	_Label_614
	.word	-160
	.word	4
	.word	_Label_615
	.word	-164
	.word	4
	.word	_Label_616
	.word	-168
	.word	4
	.word	_Label_617
	.word	-172
	.word	4
	.word	_Label_618
	.word	-176
	.word	4
	.word	_Label_619
	.word	-180
	.word	4
	.word	_Label_620
	.word	-184
	.word	4
	.word	_Label_621
	.word	-188
	.word	4
	.word	0
_Label_602:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_603:
	.ascii	"Pself\0"
	.align
_Label_604:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_583\0"
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
_Label_1849:
	push	r0
	sub	r1,1,r1
	bne	_Label_1849
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
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
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_622  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_624 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
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
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
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
	.word	_Label_625
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_627
	.word	12
	.word	4
	.word	_Label_628
	.word	16
	.word	4
	.word	_Label_629
	.word	-12
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
	.word	0
_Label_625:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_626:
	.ascii	"Pself\0"
	.align
_Label_627:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_633:
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
_Label_1850:
	push	r0
	sub	r1,1,r1
	bne	_Label_1850
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_636 == _P_Kernel_currentThread then goto _Label_635		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_635
!	jmp	_Label_634
_Label_634:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_637 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_635:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_638 = &_P_Kernel_readyList
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
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_640		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_642		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_642
!	jmp	_Label_641
_Label_641:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_643 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_642:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_645 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_644  sizeInBytes=4
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
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_640:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
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
	.word	_Label_646
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_648
	.word	-12
	.word	4
	.word	_Label_649
	.word	-16
	.word	4
	.word	_Label_650
	.word	-20
	.word	4
	.word	_Label_651
	.word	-24
	.word	4
	.word	_Label_652
	.word	-28
	.word	4
	.word	_Label_653
	.word	-32
	.word	4
	.word	_Label_654
	.word	-36
	.word	4
	.word	_Label_655
	.word	-40
	.word	4
	.word	_Label_656
	.word	-44
	.word	4
	.word	0
_Label_646:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_647:
	.ascii	"Pself\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_654:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_655:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_656:
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
_Label_1851:
	push	r0
	sub	r1,1,r1
	bne	_Label_1851
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_658		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_658
!	jmp	_Label_657
_Label_657:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_659 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_658:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_662 == _P_Kernel_currentThread then goto _Label_661		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_664 = &_P_Kernel_readyList
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
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_665
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_665
	jmp	_Label_666
_Label_665:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_667 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_666:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
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
	.word	_Label_668
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_669
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_670
	.word	-12
	.word	4
	.word	_Label_671
	.word	-16
	.word	4
	.word	_Label_672
	.word	-20
	.word	4
	.word	_Label_673
	.word	-24
	.word	4
	.word	_Label_674
	.word	-28
	.word	4
	.word	_Label_675
	.word	-32
	.word	4
	.word	0
_Label_668:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_669:
	.ascii	"Pself\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_675:
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
_Label_1852:
	push	r0
	sub	r1,1,r1
	bne	_Label_1852
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_679 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_679 [0 ] into _temp_680
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
!   Data Move: _temp_678 = *_temp_680  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_678 == 606348324 then goto _Label_677		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_677
!	jmp	_Label_676
_Label_676:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_681 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_682
_Label_677:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_686 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_686 [999 ] into _temp_687
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
!   Data Move: _temp_685 = *_temp_687  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_685 == 606348324 then goto _Label_684		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_684
!	jmp	_Label_683
_Label_683:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_688 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_684:
! END IF...
_Label_682:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
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
	.word	_Label_689
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_691
	.word	-12
	.word	4
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	0
_Label_689:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_690:
	.ascii	"Pself\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_678\0"
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
_Label_1853:
	push	r0
	sub	r1,1,r1
	bne	_Label_1853
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_699 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_702 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_708 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_709 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_708  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_704:
!   Perform the FOR-LOOP termination test
!   if i > _temp_709 then goto _Label_707		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_707
_Label_705:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_710 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_712 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_714 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_714 [i ] into _temp_715
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
!   Data Move: _temp_713 = *_temp_715  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_716 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_718 [i ] into _temp_719
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
!   Data Move: _temp_717 = *_temp_719  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_720 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_706:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_704
! END FOR
_Label_707:
! CALL STATEMENT...
!   _temp_721 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_722 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_722  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_723 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_725 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_725 [0 ] into _temp_726
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
!   _temp_724 = _temp_726		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_729
	cmp	r1,2
	be	_Label_730
	cmp	r1,3
	be	_Label_731
	cmp	r1,4
	be	_Label_732
	cmp	r1,5
	be	_Label_733
	jmp	_Label_727
! CASE 1...
_Label_729:
! CALL STATEMENT...
!   _temp_734 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_728
! CASE 2...
_Label_730:
! CALL STATEMENT...
!   _temp_735 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_728
! CASE 3...
_Label_731:
! CALL STATEMENT...
!   _temp_736 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_728
! CASE 4...
_Label_732:
! CALL STATEMENT...
!   _temp_737 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_728
! CASE 5...
_Label_733:
! CALL STATEMENT...
!   _temp_738 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_728
! DEFAULT CASE...
_Label_727:
! CALL STATEMENT...
!   _temp_739 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_728:
! CALL STATEMENT...
!   _temp_740 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_741 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_746 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_747 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_746  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_742:
!   Perform the FOR-LOOP termination test
!   if i > _temp_747 then goto _Label_745		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_745
_Label_743:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_748 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_749 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_750 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_752 [i ] into _temp_753
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
!   Data Move: _temp_751 = *_temp_753  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_754 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_756 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_756 [i ] into _temp_757
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
!   Data Move: _temp_755 = *_temp_757  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_758 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_744:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_742
! END FOR
_Label_745:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
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
	.word	_Label_759
	.word	4		! total size of parameters
	.word	196		! frame size = 196
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
	.word	_Label_770
	.word	-48
	.word	4
	.word	_Label_771
	.word	-52
	.word	4
	.word	_Label_772
	.word	-56
	.word	4
	.word	_Label_773
	.word	-60
	.word	4
	.word	_Label_774
	.word	-64
	.word	4
	.word	_Label_775
	.word	-68
	.word	4
	.word	_Label_776
	.word	-72
	.word	4
	.word	_Label_777
	.word	-76
	.word	4
	.word	_Label_778
	.word	-80
	.word	4
	.word	_Label_779
	.word	-84
	.word	4
	.word	_Label_780
	.word	-88
	.word	4
	.word	_Label_781
	.word	-92
	.word	4
	.word	_Label_782
	.word	-96
	.word	4
	.word	_Label_783
	.word	-100
	.word	4
	.word	_Label_784
	.word	-104
	.word	4
	.word	_Label_785
	.word	-108
	.word	4
	.word	_Label_786
	.word	-112
	.word	4
	.word	_Label_787
	.word	-116
	.word	4
	.word	_Label_788
	.word	-120
	.word	4
	.word	_Label_789
	.word	-124
	.word	4
	.word	_Label_790
	.word	-128
	.word	4
	.word	_Label_791
	.word	-132
	.word	4
	.word	_Label_792
	.word	-136
	.word	4
	.word	_Label_793
	.word	-140
	.word	4
	.word	_Label_794
	.word	-144
	.word	4
	.word	_Label_795
	.word	-148
	.word	4
	.word	_Label_796
	.word	-152
	.word	4
	.word	_Label_797
	.word	-156
	.word	4
	.word	_Label_798
	.word	-160
	.word	4
	.word	_Label_799
	.word	-164
	.word	4
	.word	_Label_800
	.word	-168
	.word	4
	.word	_Label_801
	.word	-172
	.word	4
	.word	_Label_802
	.word	-176
	.word	4
	.word	_Label_803
	.word	-180
	.word	4
	.word	_Label_804
	.word	-184
	.word	4
	.word	_Label_805
	.word	-188
	.word	4
	.word	_Label_806
	.word	-192
	.word	4
	.word	_Label_807
	.word	-196
	.word	4
	.word	0
_Label_759:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_755\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_806:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_808
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_808:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_809
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_809:
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
_Label_1854:
	push	r0
	sub	r1,1,r1
	bne	_Label_1854
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_810 = _StringConst_74
	set	_StringConst_74,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
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
	mov	699,r13		! source line 699
	mov	"\0\0SE",r10
!   _temp_812 = &threadManLock
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
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_814 = &threadBecameFree
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
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   _temp_815 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	set	-45996,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_817 = &_temp_816
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-4348]
!   _temp_817 = _temp_817 + 4
	load	[r14+-4348],r1
	add	r1,4,r1
	store	r1,[r14+-4348]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_819 = zeros  (sizeInBytes=4164)
	add	r14,-4340,r4
	mov	1041,r3
_Label_1855:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1855
!   _temp_819 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4340]
	mov	10,r1
	store	r1,[r14+-4344]
_Label_821:
!   Data Move: *_temp_817 = _temp_819  (sizeInBytes=4164)
	add	r14,-4340,r5
	load	[r14+-4348],r4
	mov	1041,r3
_Label_1856:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1856
!   _temp_817 = _temp_817 + 4164
	load	[r14+-4348],r1
	add	r1,4164,r1
	store	r1,[r14+-4348]
!   _temp_818 = _temp_818 + -1
	load	[r14+-4344],r1
	add	r1,-1,r1
	store	r1,[r14+-4344]
!   if intNotZero (_temp_818) then goto _Label_821
	load	[r14+-4344],r1
	cmp	r1,r0
	bne	_Label_821
!   Initialize the array size...
	mov	10,r1
	set	-45992,r2
	store	r1,[r14+r2]
!   _temp_822 = &_temp_816
	set	-45992,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   make sure array has size 10
	set	-45996,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1857
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1857:
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_815 = *_temp_822  (sizeInBytes=41644)
	load	[r14+-172],r5
	set	-45996,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1858
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_823 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-168]
!   _temp_824 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-164]
!   Move address of _temp_824 [0 ] into _temp_825
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
!   Prepare Argument: offset=12  value=_temp_823  sizeInBytes=4
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
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_826 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-156]
!   _temp_827 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-152]
!   Move address of _temp_827 [1 ] into _temp_828
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
!   Prepare Argument: offset=12  value=_temp_826  sizeInBytes=4
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
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_829 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-144]
!   _temp_830 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-140]
!   Move address of _temp_830 [2 ] into _temp_831
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
!   Prepare Argument: offset=12  value=_temp_829  sizeInBytes=4
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
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_832 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-132]
!   _temp_833 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-128]
!   Move address of _temp_833 [3 ] into _temp_834
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
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
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
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_835 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-120]
!   _temp_836 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-116]
!   Move address of _temp_836 [4 ] into _temp_837
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
!   Prepare Argument: offset=12  value=_temp_835  sizeInBytes=4
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
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_838 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-108]
!   _temp_839 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-104]
!   Move address of _temp_839 [5 ] into _temp_840
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
!   Prepare Argument: offset=12  value=_temp_838  sizeInBytes=4
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
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_841 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-96]
!   _temp_842 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-92]
!   Move address of _temp_842 [6 ] into _temp_843
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
!   Prepare Argument: offset=12  value=_temp_841  sizeInBytes=4
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
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_844 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-84]
!   _temp_845 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-80]
!   Move address of _temp_845 [7 ] into _temp_846
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
!   Prepare Argument: offset=12  value=_temp_844  sizeInBytes=4
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
	mov	714,r13		! source line 714
	mov	"\0\0SE",r10
!   _temp_847 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-72]
!   _temp_848 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-68]
!   Move address of _temp_848 [8 ] into _temp_849
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
!   Prepare Argument: offset=12  value=_temp_847  sizeInBytes=4
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
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_850 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-60]
!   _temp_851 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-56]
!   Move address of _temp_851 [9 ] into _temp_852
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
!   Prepare Argument: offset=12  value=_temp_850  sizeInBytes=4
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
	mov	717,r13		! source line 717
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
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   length = 9		(4 bytes)
	mov	9,r1
	set	-46024,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_858 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_859 = length		(4 bytes)
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_858  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_854:
!   Perform the FOR-LOOP termination test
!   if i > _temp_859 then goto _Label_857		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_857
_Label_855:
	mov	720,r13		! source line 720
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   _temp_860 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Move address of _temp_860 [i ] into _temp_861
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
!   _temp_862 = _temp_861 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_862 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0SE",r10
!   _temp_864 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Move address of _temp_864 [i ] into _temp_865
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
!   _temp_863 = _temp_865		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_866 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_863  sizeInBytes=4
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
_Label_856:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_854
! END FOR
_Label_857:
! RETURN STATEMENT...
	mov	720,r13		! source line 720
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
	.word	_Label_867
	.word	4		! total size of parameters
	.word	46024		! frame size = 46024
	.word	_Label_868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_869
	.word	-12
	.word	4
	.word	_Label_870
	.word	-16
	.word	4
	.word	_Label_871
	.word	-20
	.word	4
	.word	_Label_872
	.word	-24
	.word	4
	.word	_Label_873
	.word	-28
	.word	4
	.word	_Label_874
	.word	-32
	.word	4
	.word	_Label_875
	.word	-36
	.word	4
	.word	_Label_876
	.word	-40
	.word	4
	.word	_Label_877
	.word	-44
	.word	4
	.word	_Label_878
	.word	-48
	.word	4
	.word	_Label_879
	.word	-52
	.word	4
	.word	_Label_880
	.word	-56
	.word	4
	.word	_Label_881
	.word	-60
	.word	4
	.word	_Label_882
	.word	-64
	.word	4
	.word	_Label_883
	.word	-68
	.word	4
	.word	_Label_884
	.word	-72
	.word	4
	.word	_Label_885
	.word	-76
	.word	4
	.word	_Label_886
	.word	-80
	.word	4
	.word	_Label_887
	.word	-84
	.word	4
	.word	_Label_888
	.word	-88
	.word	4
	.word	_Label_889
	.word	-92
	.word	4
	.word	_Label_890
	.word	-96
	.word	4
	.word	_Label_891
	.word	-100
	.word	4
	.word	_Label_892
	.word	-104
	.word	4
	.word	_Label_893
	.word	-108
	.word	4
	.word	_Label_894
	.word	-112
	.word	4
	.word	_Label_895
	.word	-116
	.word	4
	.word	_Label_896
	.word	-120
	.word	4
	.word	_Label_897
	.word	-124
	.word	4
	.word	_Label_898
	.word	-128
	.word	4
	.word	_Label_899
	.word	-132
	.word	4
	.word	_Label_900
	.word	-136
	.word	4
	.word	_Label_901
	.word	-140
	.word	4
	.word	_Label_902
	.word	-144
	.word	4
	.word	_Label_903
	.word	-148
	.word	4
	.word	_Label_904
	.word	-152
	.word	4
	.word	_Label_905
	.word	-156
	.word	4
	.word	_Label_906
	.word	-160
	.word	4
	.word	_Label_907
	.word	-164
	.word	4
	.word	_Label_908
	.word	-168
	.word	4
	.word	_Label_909
	.word	-172
	.word	4
	.word	_Label_910
	.word	-176
	.word	4
	.word	_Label_911
	.word	-4340
	.word	4164
	.word	_Label_912
	.word	-4344
	.word	4
	.word	_Label_913
	.word	-4348
	.word	4
	.word	_Label_914
	.word	-45992
	.word	41644
	.word	_Label_915
	.word	-45996
	.word	4
	.word	_Label_916
	.word	-46000
	.word	4
	.word	_Label_917
	.word	-46004
	.word	4
	.word	_Label_918
	.word	-46008
	.word	4
	.word	_Label_919
	.word	-46012
	.word	4
	.word	_Label_920
	.word	-46016
	.word	4
	.word	_Label_921
	.word	-46020
	.word	4
	.word	_Label_922
	.word	-46024
	.word	4
	.word	0
_Label_867:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_868:
	.ascii	"Pself\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_817\0"
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
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_921:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_922:
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
_Label_1859:
	push	r0
	sub	r1,1,r1
	bne	_Label_1859
	mov	729,r13		! source line 729
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_923 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_928 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_929 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_928  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_924:
!   Perform the FOR-LOOP termination test
!   if i > _temp_929 then goto _Label_927		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_927
_Label_925:
	mov	738,r13		! source line 738
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_931 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_933 = &threadTable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Move address of _temp_933 [i ] into _temp_934
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
!   _temp_932 = _temp_934		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_function_135_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_926:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_924
! END FOR
_Label_927:
! CALL STATEMENT...
!   _temp_935 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_935  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_936 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_937 = &freeList
	set	41684,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_936  sizeInBytes=4
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
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	747,r13		! source line 747
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
	.word	_Label_938
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_940
	.word	-12
	.word	4
	.word	_Label_941
	.word	-16
	.word	4
	.word	_Label_942
	.word	-20
	.word	4
	.word	_Label_943
	.word	-24
	.word	4
	.word	_Label_944
	.word	-28
	.word	4
	.word	_Label_945
	.word	-32
	.word	4
	.word	_Label_946
	.word	-36
	.word	4
	.word	_Label_947
	.word	-40
	.word	4
	.word	_Label_948
	.word	-44
	.word	4
	.word	_Label_949
	.word	-48
	.word	4
	.word	_Label_950
	.word	-52
	.word	4
	.word	_Label_951
	.word	-56
	.word	4
	.word	_Label_952
	.word	-60
	.word	4
	.word	0
_Label_938:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_939:
	.ascii	"Pself\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_951:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_952:
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
_Label_1860:
	push	r0
	sub	r1,1,r1
	bne	_Label_1860
	mov	752,r13		! source line 752
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_953 = &threadManLock
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
! WHILE STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0WH",r10
_Label_954:
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_958 = &freeList
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
!   Retrieve Result: targetName=_temp_957  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_959 = _temp_957 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_959 then goto _Label_956 else goto _Label_955
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_955
	jmp	_Label_956
_Label_955:
	mov	763,r13		! source line 763
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_960 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_961 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_960  sizeInBytes=4
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
! END WHILE...
	jmp	_Label_954
_Label_956:
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_962 = &freeList
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
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = p + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_963 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_964 = &threadManLock
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
	mov	771,r13		! source line 771
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
	.word	_Label_965
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_967
	.word	-16
	.word	4
	.word	_Label_968
	.word	-20
	.word	4
	.word	_Label_969
	.word	-24
	.word	4
	.word	_Label_970
	.word	-28
	.word	4
	.word	_Label_971
	.word	-32
	.word	4
	.word	_Label_972
	.word	-9
	.word	1
	.word	_Label_973
	.word	-36
	.word	4
	.word	_Label_974
	.word	-10
	.word	1
	.word	_Label_975
	.word	-40
	.word	4
	.word	_Label_976
	.word	-44
	.word	4
	.word	0
_Label_965:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_966:
	.ascii	"Pself\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_972:
	.byte	'C'
	.ascii	"_temp_959\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_974:
	.byte	'C'
	.ascii	"_temp_957\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_976:
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
_Label_1861:
	push	r0
	sub	r1,1,r1
	bne	_Label_1861
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0SE",r10
!   _temp_977 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_978 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_979 = &freeList
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
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_980 = &threadManLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_981 = &threadBecameFree
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_980  sizeInBytes=4
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
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_982 = &threadManLock
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
	mov	785,r13		! source line 785
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
	.word	_Label_983
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	12
	.word	4
	.word	_Label_986
	.word	-12
	.word	4
	.word	_Label_987
	.word	-16
	.word	4
	.word	_Label_988
	.word	-20
	.word	4
	.word	_Label_989
	.word	-24
	.word	4
	.word	_Label_990
	.word	-28
	.word	4
	.word	_Label_991
	.word	-32
	.word	4
	.word	0
_Label_983:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_992
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_992:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_993
	.word	_sourceFileName
	.word	214		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_993:
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
_Label_1862:
	push	r0
	sub	r1,1,r1
	bne	_Label_1862
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1863:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1863
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_995 = &addrSpace
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
	mov	802,r13		! source line 802
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
	.word	_Label_996
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_998
	.word	-12
	.word	4
	.word	_Label_999
	.word	-16
	.word	4
	.word	0
_Label_996:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_997:
	.ascii	"Pself\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_994\0"
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
_Label_1864:
	push	r0
	sub	r1,1,r1
	bne	_Label_1864
	mov	812,r13		! source line 812
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1000) then goto _runtimeErrorNullPointer
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
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_1001 = &addrSpace
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
!   _temp_1002 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1002  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CA",r10
	call	_function_135_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	830,r13		! source line 830
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
	.word	_Label_1003
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1005
	.word	-12
	.word	4
	.word	_Label_1006
	.word	-16
	.word	4
	.word	_Label_1007
	.word	-20
	.word	4
	.word	0
_Label_1003:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1004:
	.ascii	"Pself\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1000\0"
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
_Label_1865:
	push	r0
	sub	r1,1,r1
	bne	_Label_1865
	mov	835,r13		! source line 835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1008 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1009  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1010 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1011 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1013		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	845,r13		! source line 845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1014 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1015
_Label_1013:
! ELSE...
	mov	846,r13		! source line 846
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1017		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1017
!	jmp	_Label_1016
_Label_1016:
! THEN...
	mov	847,r13		! source line 847
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1018 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1019
_Label_1017:
! ELSE...
	mov	848,r13		! source line 848
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1021		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	849,r13		! source line 849
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1022 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1023
_Label_1021:
! ELSE...
	mov	851,r13		! source line 851
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	851,r13		! source line 851
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1023:
! END IF...
_Label_1019:
! END IF...
_Label_1015:
! CALL STATEMENT...
!   _temp_1025 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1026 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	857,r13		! source line 857
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
	.word	_Label_1027
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1029
	.word	-12
	.word	4
	.word	_Label_1030
	.word	-16
	.word	4
	.word	_Label_1031
	.word	-20
	.word	4
	.word	_Label_1032
	.word	-24
	.word	4
	.word	_Label_1033
	.word	-28
	.word	4
	.word	_Label_1034
	.word	-32
	.word	4
	.word	_Label_1035
	.word	-36
	.word	4
	.word	_Label_1036
	.word	-40
	.word	4
	.word	_Label_1037
	.word	-44
	.word	4
	.word	_Label_1038
	.word	-48
	.word	4
	.word	0
_Label_1027:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1028:
	.ascii	"Pself\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1039
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1039:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1040
	.word	_sourceFileName
	.word	234		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1040:
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
_Label_1866:
	push	r0
	sub	r1,1,r1
	bne	_Label_1866
	mov	868,r13		! source line 868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0AS",r10
!   _temp_1041 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1043 = &_temp_1042
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1043 = _temp_1043 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1045 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1867:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1867
!   _temp_1045 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1047:
!   Data Move: *_temp_1043 = _temp_1045  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1868:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1868
!   _temp_1043 = _temp_1043 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1044 = _temp_1044 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1044) then goto _Label_1047
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1047
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1048 = &_temp_1042
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1869
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1869:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1041 = *_temp_1048  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1870
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
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
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
!   _temp_1050 = &processManagerLock
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
	mov	880,r13		! source line 880
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
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1052 = &aProcessBecameFree
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
	mov	883,r13		! source line 883
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
	mov	885,r13		! source line 885
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
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_1055 = &aProcessDied
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
	mov	888,r13		! source line 888
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1060 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1061 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1060  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1056:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1061 then goto _Label_1059		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1059
_Label_1057:
	mov	888,r13		! source line 888
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1062 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1062 [i ] into _temp_1063
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
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_1065 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1065 [i ] into _temp_1066
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
!   _temp_1064 = _temp_1066		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1067 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1064  sizeInBytes=4
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
_Label_1058:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1056
! END FOR
_Label_1059:
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   _temp_1068 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1068 [0 ] into _temp_1069
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
!   _temp_1070 = _temp_1069 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: nextPid = *_temp_1070  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	892,r13		! source line 892
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
	.word	_Label_1071
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1073
	.word	-12
	.word	4
	.word	_Label_1074
	.word	-16
	.word	4
	.word	_Label_1075
	.word	-20
	.word	4
	.word	_Label_1076
	.word	-24
	.word	4
	.word	_Label_1077
	.word	-28
	.word	4
	.word	_Label_1078
	.word	-32
	.word	4
	.word	_Label_1079
	.word	-36
	.word	4
	.word	_Label_1080
	.word	-40
	.word	4
	.word	_Label_1081
	.word	-44
	.word	4
	.word	_Label_1082
	.word	-48
	.word	4
	.word	_Label_1083
	.word	-52
	.word	4
	.word	_Label_1084
	.word	-56
	.word	4
	.word	_Label_1085
	.word	-60
	.word	4
	.word	_Label_1086
	.word	-64
	.word	4
	.word	_Label_1087
	.word	-68
	.word	4
	.word	_Label_1088
	.word	-72
	.word	4
	.word	_Label_1089
	.word	-76
	.word	4
	.word	_Label_1090
	.word	-80
	.word	4
	.word	_Label_1091
	.word	-84
	.word	4
	.word	_Label_1092
	.word	-88
	.word	4
	.word	_Label_1093
	.word	-212
	.word	124
	.word	_Label_1094
	.word	-216
	.word	4
	.word	_Label_1095
	.word	-220
	.word	4
	.word	_Label_1096
	.word	-1464
	.word	1244
	.word	_Label_1097
	.word	-1468
	.word	4
	.word	_Label_1098
	.word	-1472
	.word	4
	.word	0
_Label_1071:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1072:
	.ascii	"Pself\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1098:
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
_Label_1871:
	push	r0
	sub	r1,1,r1
	bne	_Label_1871
	mov	897,r13		! source line 897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1099 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1104 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1105 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1104  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1100:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1105 then goto _Label_1103		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1103
_Label_1101:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1106 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1106  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1107 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1108 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1108 [i ] into _temp_1109
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
_Label_1102:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1100
! END FOR
_Label_1103:
! CALL STATEMENT...
!   _temp_1110 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1111 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1112 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1111  sizeInBytes=4
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
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	915,r13		! source line 915
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
	.word	_Label_1113
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1115
	.word	-12
	.word	4
	.word	_Label_1116
	.word	-16
	.word	4
	.word	_Label_1117
	.word	-20
	.word	4
	.word	_Label_1118
	.word	-24
	.word	4
	.word	_Label_1119
	.word	-28
	.word	4
	.word	_Label_1120
	.word	-32
	.word	4
	.word	_Label_1121
	.word	-36
	.word	4
	.word	_Label_1122
	.word	-40
	.word	4
	.word	_Label_1123
	.word	-44
	.word	4
	.word	_Label_1124
	.word	-48
	.word	4
	.word	_Label_1125
	.word	-52
	.word	4
	.word	_Label_1126
	.word	-56
	.word	4
	.word	0
_Label_1113:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1114:
	.ascii	"Pself\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1126:
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
_Label_1872:
	push	r0
	sub	r1,1,r1
	bne	_Label_1872
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1127 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1132 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1133 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1132  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1128:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1133 then goto _Label_1131		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1131
_Label_1129:
	mov	929,r13		! source line 929
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1135 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1135 [i ] into _temp_1136
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
_Label_1130:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1128
! END FOR
_Label_1131:
! CALL STATEMENT...
!   _temp_1137 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1138 = _function_134_PrintObjectAddr
	set	_function_134_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1139 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1138  sizeInBytes=4
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
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	937,r13		! source line 937
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
	.word	_Label_1140
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1142
	.word	-12
	.word	4
	.word	_Label_1143
	.word	-16
	.word	4
	.word	_Label_1144
	.word	-20
	.word	4
	.word	_Label_1145
	.word	-24
	.word	4
	.word	_Label_1146
	.word	-28
	.word	4
	.word	_Label_1147
	.word	-32
	.word	4
	.word	_Label_1148
	.word	-36
	.word	4
	.word	_Label_1149
	.word	-40
	.word	4
	.word	_Label_1150
	.word	-44
	.word	4
	.word	_Label_1151
	.word	-48
	.word	4
	.word	_Label_1152
	.word	-52
	.word	4
	.word	0
_Label_1140:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1141:
	.ascii	"Pself\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1152:
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
_Label_1873:
	push	r0
	sub	r1,1,r1
	bne	_Label_1873
	mov	942,r13		! source line 942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   p = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1153 = &processManagerLock
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
	mov	952,r13		! source line 952
	mov	"\0\0WH",r10
_Label_1154:
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1158 = &freeList
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
!   Retrieve Result: targetName=_temp_1157  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1159 = _temp_1157 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1159 then goto _Label_1156 else goto _Label_1155
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1155
	jmp	_Label_1156
_Label_1155:
	mov	952,r13		! source line 952
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1160 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1161 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1160  sizeInBytes=4
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
	jmp	_Label_1154
_Label_1156:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1162 = &freeList
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
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = p + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1163 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0IF",r10
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1167 = &freeList
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
!   Retrieve Result: targetName=_temp_1166  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1168 = _temp_1166 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1168 then goto _Label_1165 else goto _Label_1164
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1164
	jmp	_Label_1165
_Label_1164:
! THEN...
	mov	960,r13		! source line 960
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1169 = &freeList
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
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = t + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: nextPid = *_temp_1170  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1171 = &freeList
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
	jmp	_Label_1172
_Label_1165:
! ELSE...
	mov	964,r13		! source line 964
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1172:
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1173 = &processManagerLock
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
	mov	968,r13		! source line 968
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
	.word	_Label_1174
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1176
	.word	-16
	.word	4
	.word	_Label_1177
	.word	-20
	.word	4
	.word	_Label_1178
	.word	-24
	.word	4
	.word	_Label_1179
	.word	-28
	.word	4
	.word	_Label_1180
	.word	-9
	.word	1
	.word	_Label_1181
	.word	-32
	.word	4
	.word	_Label_1182
	.word	-10
	.word	1
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
	.word	-11
	.word	1
	.word	_Label_1188
	.word	-52
	.word	4
	.word	_Label_1189
	.word	-12
	.word	1
	.word	_Label_1190
	.word	-56
	.word	4
	.word	_Label_1191
	.word	-60
	.word	4
	.word	_Label_1192
	.word	-64
	.word	4
	.word	0
_Label_1174:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1175:
	.ascii	"Pself\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1180:
	.byte	'C'
	.ascii	"_temp_1168\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1182:
	.byte	'C'
	.ascii	"_temp_1166\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1187:
	.byte	'C'
	.ascii	"_temp_1159\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1189:
	.byte	'C'
	.ascii	"_temp_1157\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1191:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1192:
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
_Label_1874:
	push	r0
	sub	r1,1,r1
	bne	_Label_1874
	mov	973,r13		! source line 973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1193 = &processManagerLock
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
	mov	979,r13		! source line 979
	mov	"\0\0IF",r10
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1197 = &freeList
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
!   Retrieve Result: targetName=_temp_1196  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1198 = _temp_1196 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1198 then goto _Label_1195 else goto _Label_1194
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1194
	jmp	_Label_1195
_Label_1194:
! THEN...
	mov	980,r13		! source line 980
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1199 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: nextPid = *_temp_1199  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! END IF...
_Label_1195:
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1200 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1201 = &freeList
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
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1202 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-24]
!   _temp_1203 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1202  sizeInBytes=4
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
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1204 = &processManagerLock
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
	mov	985,r13		! source line 985
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
	.word	_Label_1205
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1207
	.word	12
	.word	4
	.word	_Label_1208
	.word	-16
	.word	4
	.word	_Label_1209
	.word	-20
	.word	4
	.word	_Label_1210
	.word	-24
	.word	4
	.word	_Label_1211
	.word	-28
	.word	4
	.word	_Label_1212
	.word	-32
	.word	4
	.word	_Label_1213
	.word	-36
	.word	4
	.word	_Label_1214
	.word	-9
	.word	1
	.word	_Label_1215
	.word	-40
	.word	4
	.word	_Label_1216
	.word	-10
	.word	1
	.word	_Label_1217
	.word	-44
	.word	4
	.word	0
_Label_1205:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1206:
	.ascii	"Pself\0"
	.align
_Label_1207:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1214:
	.byte	'C'
	.ascii	"_temp_1198\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1216:
	.byte	'C'
	.ascii	"_temp_1196\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1218
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1218:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1219
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1219:
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
_Label_1875:
	push	r0
	sub	r1,1,r1
	bne	_Label_1875
	mov	1019,r13		! source line 1019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1220 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1026,r13		! source line 1026
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
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1222 = &framesInUse
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
	mov	1028,r13		! source line 1028
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1029,r13		! source line 1029
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
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1224 = &frameManagerLock
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
	mov	1031,r13		! source line 1031
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
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1226 = &newFramesAvailable
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
	mov	1038,r13		! source line 1038
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1231 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1232 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1231  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1227:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1232 then goto _Label_1230		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1230
_Label_1228:
	mov	1038,r13		! source line 1038
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1235 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1235) then goto _Label_1234
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1234
!	jmp	_Label_1233
_Label_1233:
! THEN...
	mov	1042,r13		! source line 1042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1042,r13		! source line 1042
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1234:
!   Increment the FOR-LOOP index variable and jump back
_Label_1229:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1227
! END FOR
_Label_1230:
! RETURN STATEMENT...
	mov	1038,r13		! source line 1038
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
	.word	_Label_1237
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1239
	.word	-12
	.word	4
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
	.word	-36
	.word	4
	.word	_Label_1246
	.word	-40
	.word	4
	.word	_Label_1247
	.word	-44
	.word	4
	.word	_Label_1248
	.word	-48
	.word	4
	.word	_Label_1249
	.word	-52
	.word	4
	.word	_Label_1250
	.word	-56
	.word	4
	.word	0
_Label_1237:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1238:
	.ascii	"Pself\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1250:
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
_Label_1876:
	push	r0
	sub	r1,1,r1
	bne	_Label_1876
	mov	1049,r13		! source line 1049
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1251 = &frameManagerLock
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
!   _temp_1252 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1254 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1255 = &framesInUse
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
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1256 = &frameManagerLock
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
	mov	1058,r13		! source line 1058
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
	.word	_Label_1257
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1258
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1259
	.word	-12
	.word	4
	.word	_Label_1260
	.word	-16
	.word	4
	.word	_Label_1261
	.word	-20
	.word	4
	.word	_Label_1262
	.word	-24
	.word	4
	.word	_Label_1263
	.word	-28
	.word	4
	.word	_Label_1264
	.word	-32
	.word	4
	.word	0
_Label_1257:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1258:
	.ascii	"Pself\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1251\0"
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
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	1063,r13		! source line 1063
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1265 = &frameManagerLock
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
	mov	1074,r13		! source line 1074
	mov	"\0\0WH",r10
_Label_1266:
!   if numberFreeFrames >= 1 then goto _Label_1268		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1268
!	jmp	_Label_1267
_Label_1267:
	mov	1074,r13		! source line 1074
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1269 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1270 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1269  sizeInBytes=4
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
	jmp	_Label_1266
_Label_1268:
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1271 = &framesInUse
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
	mov	1080,r13		! source line 1080
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
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1272 = &frameManagerLock
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
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   _temp_1273 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1273		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1088,r13		! source line 1088
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
	.word	_Label_1274
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1275
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1276
	.word	-12
	.word	4
	.word	_Label_1277
	.word	-16
	.word	4
	.word	_Label_1278
	.word	-20
	.word	4
	.word	_Label_1279
	.word	-24
	.word	4
	.word	_Label_1280
	.word	-28
	.word	4
	.word	_Label_1281
	.word	-32
	.word	4
	.word	_Label_1282
	.word	-36
	.word	4
	.word	_Label_1283
	.word	-40
	.word	4
	.word	0
_Label_1274:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1275:
	.ascii	"Pself\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1282:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1283:
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
	mov	17,r1
_Label_1878:
	push	r0
	sub	r1,1,r1
	bne	_Label_1878
	mov	1093,r13		! source line 1093
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1284 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1097,r13		! source line 1097
	mov	"\0\0WH",r10
_Label_1285:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1287		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1287
!	jmp	_Label_1286
_Label_1286:
	mov	1097,r13		! source line 1097
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0SE",r10
!   _temp_1288 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1289 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1288  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1285
_Label_1287:
! FOR STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1294 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1295 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1294  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1295 then goto _Label_1293		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1293
_Label_1291:
	mov	1100,r13		! source line 1100
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1296 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message FindZeroAndSet
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   _temp_1297 = frameAddr * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameAddr = 1048576 + _temp_1297		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-64],r1
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
_Label_1292:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1290
! END FOR
_Label_1293:
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
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
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1298 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1300 = *_temp_1301  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1299 = numFramesNeeded + _temp_1300		(int)
	load	[r14+16],r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1298 = _temp_1299  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1302 = &frameManagerLock
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
	mov	1107,r13		! source line 1107
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1303
	.word	12		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1305
	.word	12
	.word	4
	.word	_Label_1306
	.word	16
	.word	4
	.word	_Label_1307
	.word	-12
	.word	4
	.word	_Label_1308
	.word	-16
	.word	4
	.word	_Label_1309
	.word	-20
	.word	4
	.word	_Label_1310
	.word	-24
	.word	4
	.word	_Label_1311
	.word	-28
	.word	4
	.word	_Label_1312
	.word	-32
	.word	4
	.word	_Label_1313
	.word	-36
	.word	4
	.word	_Label_1314
	.word	-40
	.word	4
	.word	_Label_1315
	.word	-44
	.word	4
	.word	_Label_1316
	.word	-48
	.word	4
	.word	_Label_1317
	.word	-52
	.word	4
	.word	_Label_1318
	.word	-56
	.word	4
	.word	_Label_1319
	.word	-60
	.word	4
	.word	_Label_1320
	.word	-64
	.word	4
	.word	0
_Label_1303:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1304:
	.ascii	"Pself\0"
	.align
_Label_1305:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1320:
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
_Label_1879:
	push	r0
	sub	r1,1,r1
	bne	_Label_1879
	mov	1112,r13		! source line 1112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1321 = &frameManagerLock
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
	mov	1116,r13		! source line 1116
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1326 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1328 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1327 = _temp_1328 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1326  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_1322:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1327 then goto _Label_1325		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1325
_Label_1323:
	mov	1116,r13		! source line 1116
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
	mov	1117,r13		! source line 1117
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
	mov	1118,r13		! source line 1118
	mov	"\0\0AS",r10
!   _temp_1330 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitNumber = _temp_1330 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1331 = &framesInUse
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
_Label_1324:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1322
! END FOR
_Label_1325:
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1332 = *_temp_1333  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_1332		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1334 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1335 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1334  sizeInBytes=4
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
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1336 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1336 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1337 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
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
	.word	_Label_1338
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1339
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1340
	.word	12
	.word	4
	.word	_Label_1341
	.word	-12
	.word	4
	.word	_Label_1342
	.word	-16
	.word	4
	.word	_Label_1343
	.word	-20
	.word	4
	.word	_Label_1344
	.word	-24
	.word	4
	.word	_Label_1345
	.word	-28
	.word	4
	.word	_Label_1346
	.word	-32
	.word	4
	.word	_Label_1347
	.word	-36
	.word	4
	.word	_Label_1348
	.word	-40
	.word	4
	.word	_Label_1349
	.word	-44
	.word	4
	.word	_Label_1350
	.word	-48
	.word	4
	.word	_Label_1351
	.word	-52
	.word	4
	.word	_Label_1352
	.word	-56
	.word	4
	.word	_Label_1353
	.word	-60
	.word	4
	.word	_Label_1354
	.word	-64
	.word	4
	.word	_Label_1355
	.word	-68
	.word	4
	.word	_Label_1356
	.word	-72
	.word	4
	.word	0
_Label_1338:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1339:
	.ascii	"Pself\0"
	.align
_Label_1340:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1354:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1355:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1356:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1357
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
_Label_1357:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1358
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1358:
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
_Label_1880:
	push	r0
	sub	r1,1,r1
	bne	_Label_1880
	mov	1136,r13		! source line 1136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   _temp_1359 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1361 = &_temp_1360
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1361 = _temp_1361 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1363:
!   Data Move: *_temp_1361 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1361 = _temp_1361 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1362 = _temp_1362 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1362) then goto _Label_1363
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1363
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1364 = &_temp_1360
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1881
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1881:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1359 = *_temp_1364  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1882:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1882
! RETURN STATEMENT...
	mov	1141,r13		! source line 1141
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
	.word	_Label_1365
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1366
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1367
	.word	-12
	.word	4
	.word	_Label_1368
	.word	-16
	.word	4
	.word	_Label_1369
	.word	-20
	.word	4
	.word	_Label_1370
	.word	-104
	.word	84
	.word	_Label_1371
	.word	-108
	.word	4
	.word	0
_Label_1365:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1366:
	.ascii	"Pself\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1359\0"
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
_Label_1883:
	push	r0
	sub	r1,1,r1
	bne	_Label_1883
	mov	1146,r13		! source line 1146
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1372 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1372  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1373 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1373  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1152,r13		! source line 1152
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1378 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1379 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1378  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1374:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1379 then goto _Label_1377		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1377
_Label_1375:
	mov	1153,r13		! source line 1153
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1380 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1382 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1382 [i ] into _temp_1383
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
!   _temp_1381 = _temp_1383		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1384 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1386 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1386 [i ] into _temp_1387
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
!   Data Move: _temp_1385 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1388 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1389 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1390 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1392) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1393 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0IF",r10
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1397) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1396  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1396) then goto _Label_1395
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1395
!	jmp	_Label_1394
_Label_1394:
! THEN...
	mov	1164,r13		! source line 1164
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1399) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1398  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1400
_Label_1395:
! ELSE...
	mov	1166,r13		! source line 1166
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1401 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1400:
! CALL STATEMENT...
!   _temp_1402 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0IF",r10
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1405) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1403 else goto _Label_1404
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1404
	jmp	_Label_1403
_Label_1403:
! THEN...
	mov	1170,r13		! source line 1170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1406 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1407
_Label_1404:
! ELSE...
	mov	1172,r13		! source line 1172
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1408 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1407:
! CALL STATEMENT...
!   _temp_1409 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0IF",r10
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1412) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1410 else goto _Label_1411
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1411
	jmp	_Label_1410
_Label_1410:
! THEN...
	mov	1176,r13		! source line 1176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1413 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1414
_Label_1411:
! ELSE...
	mov	1178,r13		! source line 1178
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1415 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1414:
! CALL STATEMENT...
!   _temp_1416 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0IF",r10
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1419) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1417 else goto _Label_1418
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1418
	jmp	_Label_1417
_Label_1417:
! THEN...
	mov	1182,r13		! source line 1182
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1420 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1421
_Label_1418:
! ELSE...
	mov	1184,r13		! source line 1184
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1422 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1421:
! CALL STATEMENT...
!   _temp_1423 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0IF",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1426) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1424 else goto _Label_1425
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1425
	jmp	_Label_1424
_Label_1424:
! THEN...
	mov	1188,r13		! source line 1188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1427 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1428
_Label_1425:
! ELSE...
	mov	1190,r13		! source line 1190
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1429 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1428:
! CALL STATEMENT...
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1376:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1374
! END FOR
_Label_1377:
! RETURN STATEMENT...
	mov	1153,r13		! source line 1153
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
	.word	_Label_1430
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1432
	.word	-12
	.word	4
	.word	_Label_1433
	.word	-16
	.word	4
	.word	_Label_1434
	.word	-20
	.word	4
	.word	_Label_1435
	.word	-24
	.word	4
	.word	_Label_1436
	.word	-28
	.word	4
	.word	_Label_1437
	.word	-32
	.word	4
	.word	_Label_1438
	.word	-36
	.word	4
	.word	_Label_1439
	.word	-40
	.word	4
	.word	_Label_1440
	.word	-44
	.word	4
	.word	_Label_1441
	.word	-48
	.word	4
	.word	_Label_1442
	.word	-52
	.word	4
	.word	_Label_1443
	.word	-56
	.word	4
	.word	_Label_1444
	.word	-60
	.word	4
	.word	_Label_1445
	.word	-64
	.word	4
	.word	_Label_1446
	.word	-68
	.word	4
	.word	_Label_1447
	.word	-72
	.word	4
	.word	_Label_1448
	.word	-76
	.word	4
	.word	_Label_1449
	.word	-80
	.word	4
	.word	_Label_1450
	.word	-84
	.word	4
	.word	_Label_1451
	.word	-88
	.word	4
	.word	_Label_1452
	.word	-92
	.word	4
	.word	_Label_1453
	.word	-96
	.word	4
	.word	_Label_1454
	.word	-100
	.word	4
	.word	_Label_1455
	.word	-104
	.word	4
	.word	_Label_1456
	.word	-108
	.word	4
	.word	_Label_1457
	.word	-112
	.word	4
	.word	_Label_1458
	.word	-116
	.word	4
	.word	_Label_1459
	.word	-120
	.word	4
	.word	_Label_1460
	.word	-124
	.word	4
	.word	_Label_1461
	.word	-128
	.word	4
	.word	_Label_1462
	.word	-132
	.word	4
	.word	_Label_1463
	.word	-136
	.word	4
	.word	_Label_1464
	.word	-140
	.word	4
	.word	_Label_1465
	.word	-144
	.word	4
	.word	_Label_1466
	.word	-148
	.word	4
	.word	_Label_1467
	.word	-152
	.word	4
	.word	_Label_1468
	.word	-156
	.word	4
	.word	_Label_1469
	.word	-160
	.word	4
	.word	_Label_1470
	.word	-164
	.word	4
	.word	_Label_1471
	.word	-168
	.word	4
	.word	0
_Label_1430:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1431:
	.ascii	"Pself\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1471:
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
_Label_1884:
	push	r0
	sub	r1,1,r1
	bne	_Label_1884
	mov	1198,r13		! source line 1198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0RE",r10
!   _temp_1474 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1474 [entry ] into _temp_1475
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
!   Data Move: _temp_1473 = *_temp_1475  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1472 = _temp_1473 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1472  (sizeInBytes=4)
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
	.word	_Label_1476
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	_Label_1481
	.word	-20
	.word	4
	.word	_Label_1482
	.word	-24
	.word	4
	.word	0
_Label_1476:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1472\0"
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
_Label_1885:
	push	r0
	sub	r1,1,r1
	bne	_Label_1885
	mov	1208,r13		! source line 1208
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0RE",r10
!   _temp_1485 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1485 [entry ] into _temp_1486
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
!   Data Move: _temp_1484 = *_temp_1486  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1483 = _temp_1484 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1483  (sizeInBytes=4)
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
	.word	_Label_1487
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	12
	.word	4
	.word	_Label_1490
	.word	-12
	.word	4
	.word	_Label_1491
	.word	-16
	.word	4
	.word	_Label_1492
	.word	-20
	.word	4
	.word	_Label_1493
	.word	-24
	.word	4
	.word	0
_Label_1487:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1483\0"
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
_Label_1886:
	push	r0
	sub	r1,1,r1
	bne	_Label_1886
	mov	1217,r13		! source line 1217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1494 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1494 [entry ] into _temp_1495
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
!   _temp_1499 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1499 [entry ] into _temp_1500
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
!   Data Move: _temp_1498 = *_temp_1500  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1497 = _temp_1498 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1496 = _temp_1497 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1495 = _temp_1496  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1222,r13		! source line 1222
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
	.word	_Label_1501
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	12
	.word	4
	.word	_Label_1504
	.word	16
	.word	4
	.word	_Label_1505
	.word	-12
	.word	4
	.word	_Label_1506
	.word	-16
	.word	4
	.word	_Label_1507
	.word	-20
	.word	4
	.word	_Label_1508
	.word	-24
	.word	4
	.word	_Label_1509
	.word	-28
	.word	4
	.word	_Label_1510
	.word	-32
	.word	4
	.word	_Label_1511
	.word	-36
	.word	4
	.word	0
_Label_1501:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1504:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1494\0"
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
_Label_1887:
	push	r0
	sub	r1,1,r1
	bne	_Label_1887
	mov	1227,r13		! source line 1227
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0RE",r10
!   _temp_1515 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1515 [entry ] into _temp_1516
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
!   Data Move: _temp_1514 = *_temp_1516  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1513 = _temp_1514 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1513) then goto _Label_1517
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1517
!   _temp_1512 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1518
_Label_1517:
!   _temp_1512 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1518:
!   ReturnResult: _temp_1512  (sizeInBytes=1)
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
	.word	_Label_1519
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1521
	.word	12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	_Label_1526
	.word	-9
	.word	1
	.word	0
_Label_1519:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1520:
	.ascii	"Pself\0"
	.align
_Label_1521:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1526:
	.byte	'C'
	.ascii	"_temp_1512\0"
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
_Label_1888:
	push	r0
	sub	r1,1,r1
	bne	_Label_1888
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0RE",r10
!   _temp_1530 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1530 [entry ] into _temp_1531
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
!   Data Move: _temp_1529 = *_temp_1531  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1528 = _temp_1529 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1528) then goto _Label_1532
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1532
!   _temp_1527 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1533
_Label_1532:
!   _temp_1527 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1533:
!   ReturnResult: _temp_1527  (sizeInBytes=1)
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
	.word	_Label_1534
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1536
	.word	12
	.word	4
	.word	_Label_1537
	.word	-16
	.word	4
	.word	_Label_1538
	.word	-20
	.word	4
	.word	_Label_1539
	.word	-24
	.word	4
	.word	_Label_1540
	.word	-28
	.word	4
	.word	_Label_1541
	.word	-9
	.word	1
	.word	0
_Label_1534:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1535:
	.ascii	"Pself\0"
	.align
_Label_1536:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1541:
	.byte	'C'
	.ascii	"_temp_1527\0"
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
_Label_1889:
	push	r0
	sub	r1,1,r1
	bne	_Label_1889
	mov	1245,r13		! source line 1245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0RE",r10
!   _temp_1545 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1545 [entry ] into _temp_1546
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
!   Data Move: _temp_1544 = *_temp_1546  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1543 = _temp_1544 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1543) then goto _Label_1547
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1547
!   _temp_1542 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1548
_Label_1547:
!   _temp_1542 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1548:
!   ReturnResult: _temp_1542  (sizeInBytes=1)
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
	.word	_Label_1549
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-9
	.word	1
	.word	0
_Label_1549:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1556:
	.byte	'C'
	.ascii	"_temp_1542\0"
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
_Label_1890:
	push	r0
	sub	r1,1,r1
	bne	_Label_1890
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0RE",r10
!   _temp_1560 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1560 [entry ] into _temp_1561
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
!   Data Move: _temp_1559 = *_temp_1561  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1558 = _temp_1559 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1558) then goto _Label_1562
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1562
!   _temp_1557 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1563
_Label_1562:
!   _temp_1557 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1563:
!   ReturnResult: _temp_1557  (sizeInBytes=1)
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
	.word	_Label_1564
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1566
	.word	12
	.word	4
	.word	_Label_1567
	.word	-16
	.word	4
	.word	_Label_1568
	.word	-20
	.word	4
	.word	_Label_1569
	.word	-24
	.word	4
	.word	_Label_1570
	.word	-28
	.word	4
	.word	_Label_1571
	.word	-9
	.word	1
	.word	0
_Label_1564:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1565:
	.ascii	"Pself\0"
	.align
_Label_1566:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1571:
	.byte	'C'
	.ascii	"_temp_1557\0"
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
_Label_1891:
	push	r0
	sub	r1,1,r1
	bne	_Label_1891
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   _temp_1572 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1572 [entry ] into _temp_1573
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
!   _temp_1574 = _temp_1575 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1573 = _temp_1574  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
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
	.word	_Label_1578
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	_Label_1585
	.word	-28
	.word	4
	.word	_Label_1586
	.word	-32
	.word	4
	.word	0
_Label_1578:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
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
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1572\0"
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
_Label_1892:
	push	r0
	sub	r1,1,r1
	bne	_Label_1892
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_1587 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1587 [entry ] into _temp_1588
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
!   _temp_1591 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1591 [entry ] into _temp_1592
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
!   Data Move: _temp_1590 = *_temp_1592  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1589 = _temp_1590 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1588 = _temp_1589  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
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
	.word	_Label_1593
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1594
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1595
	.word	12
	.word	4
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	0
_Label_1593:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1594:
	.ascii	"Pself\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1587\0"
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
_Label_1893:
	push	r0
	sub	r1,1,r1
	bne	_Label_1893
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_1602 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1602 [entry ] into _temp_1603
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
!   _temp_1606 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1606 [entry ] into _temp_1607
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
!   Data Move: _temp_1605 = *_temp_1607  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1604 = _temp_1605 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1603 = _temp_1604  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
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
	.word	_Label_1608
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	12
	.word	4
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	_Label_1615
	.word	-28
	.word	4
	.word	_Label_1616
	.word	-32
	.word	4
	.word	0
_Label_1608:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1602\0"
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
_Label_1894:
	push	r0
	sub	r1,1,r1
	bne	_Label_1894
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   _temp_1617 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1617 [entry ] into _temp_1618
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
!   _temp_1621 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1621 [entry ] into _temp_1622
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
!   Data Move: _temp_1620 = *_temp_1622  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1619 = _temp_1620 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1618 = _temp_1619  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
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
	.word	_Label_1623
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	12
	.word	4
	.word	_Label_1626
	.word	-12
	.word	4
	.word	_Label_1627
	.word	-16
	.word	4
	.word	_Label_1628
	.word	-20
	.word	4
	.word	_Label_1629
	.word	-24
	.word	4
	.word	_Label_1630
	.word	-28
	.word	4
	.word	_Label_1631
	.word	-32
	.word	4
	.word	0
_Label_1623:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1617\0"
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
_Label_1895:
	push	r0
	sub	r1,1,r1
	bne	_Label_1895
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0AS",r10
!   _temp_1632 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1632 [entry ] into _temp_1633
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
!   _temp_1636 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1636 [entry ] into _temp_1637
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
!   Data Move: _temp_1635 = *_temp_1637  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1634 = _temp_1635 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1633 = _temp_1634  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
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
	.word	_Label_1638
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1640
	.word	12
	.word	4
	.word	_Label_1641
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1638:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1639:
	.ascii	"Pself\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1637\0"
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
	.byte	'?'
	.ascii	"_temp_1632\0"
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
_Label_1896:
	push	r0
	sub	r1,1,r1
	bne	_Label_1896
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0AS",r10
!   _temp_1647 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1647 [entry ] into _temp_1648
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
!   _temp_1651 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1651 [entry ] into _temp_1652
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
!   Data Move: _temp_1650 = *_temp_1652  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1649 = _temp_1650 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1648 = _temp_1649  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
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
	.word	_Label_1653
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1655
	.word	12
	.word	4
	.word	_Label_1656
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1653:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1654:
	.ascii	"Pself\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1652\0"
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
	.byte	'?'
	.ascii	"_temp_1647\0"
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
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   _temp_1662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1662 [entry ] into _temp_1663
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
!   _temp_1666 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1666 [entry ] into _temp_1667
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
!   Data Move: _temp_1665 = *_temp_1667  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1664 = _temp_1665 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1663 = _temp_1664  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
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
	.word	_Label_1668
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1669
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1670
	.word	12
	.word	4
	.word	_Label_1671
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1668:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1669:
	.ascii	"Pself\0"
	.align
_Label_1670:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1667\0"
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
	.byte	'?'
	.ascii	"_temp_1662\0"
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
_Label_1898:
	push	r0
	sub	r1,1,r1
	bne	_Label_1898
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_1677 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1677 [entry ] into _temp_1678
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
!   _temp_1681 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1681 [entry ] into _temp_1682
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
!   Data Move: _temp_1680 = *_temp_1682  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1679 = _temp_1680 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1678 = _temp_1679  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
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
	.word	_Label_1683
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1685
	.word	12
	.word	4
	.word	_Label_1686
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1683:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1684:
	.ascii	"Pself\0"
	.align
_Label_1685:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1682\0"
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
	.byte	'?'
	.ascii	"_temp_1677\0"
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
_Label_1899:
	push	r0
	sub	r1,1,r1
	bne	_Label_1899
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1693 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1693 [0 ] into _temp_1694
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
!   _temp_1692 = _temp_1694		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1695 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1695  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
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
	.word	_Label_1696
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1697
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1696:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1697:
	.ascii	"Pself\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1692\0"
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
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1702
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1702
	jmp	_Label_1703
_Label_1702:
! THEN...
	mov	1362,r13		! source line 1362
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1704
_Label_1703:
! ELSE...
	mov	1363,r13		! source line 1363
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1706		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1706
!	jmp	_Label_1705
_Label_1705:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1706:
! END IF...
_Label_1704:
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
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
	mov	1367,r13		! source line 1367
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
	mov	1370,r13		! source line 1370
	mov	"\0\0WH",r10
_Label_1707:
!	jmp	_Label_1708
_Label_1708:
	mov	1370,r13		! source line 1370
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1711		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1711
!	jmp	_Label_1710
_Label_1710:
! THEN...
	mov	1372,r13		! source line 1372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1712 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1712  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1711:
! IF STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0IF",r10
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1716) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1715  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1715 then goto _Label_1714 else goto _Label_1713
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1713
	jmp	_Label_1714
_Label_1713:
! THEN...
	mov	1376,r13		! source line 1376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1717 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1714:
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1719) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1718  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1718 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0WH",r10
_Label_1720:
!   if offset >= 8192 then goto _Label_1722		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1722
!	jmp	_Label_1721
_Label_1721:
	mov	1381,r13		! source line 1381
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1723 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1723  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1725		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1725
!	jmp	_Label_1724
_Label_1724:
! THEN...
	mov	1390,r13		! source line 1390
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1725:
! END WHILE...
	jmp	_Label_1720
_Label_1722:
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1707
_Label_1709:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1726
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1728
	.word	12
	.word	4
	.word	_Label_1729
	.word	16
	.word	4
	.word	_Label_1730
	.word	20
	.word	4
	.word	_Label_1731
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_1737
	.word	-32
	.word	4
	.word	_Label_1738
	.word	-36
	.word	4
	.word	_Label_1739
	.word	-40
	.word	4
	.word	_Label_1740
	.word	-44
	.word	4
	.word	_Label_1741
	.word	-48
	.word	4
	.word	0
_Label_1726:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1727:
	.ascii	"Pself\0"
	.align
_Label_1728:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1729:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1730:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1731:
	.byte	'C'
	.ascii	"_temp_1723\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1736:
	.byte	'C'
	.ascii	"_temp_1715\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1738:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1739:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1741:
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
_Label_1901:
	push	r0
	sub	r1,1,r1
	bne	_Label_1901
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1742
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1742
	jmp	_Label_1743
_Label_1742:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1744
_Label_1743:
! ELSE...
	mov	1413,r13		! source line 1413
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1746		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1746
!	jmp	_Label_1745
_Label_1745:
! THEN...
	mov	1414,r13		! source line 1414
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1746:
! END IF...
_Label_1744:
! ASSIGNMENT STATEMENT...
	mov	1416,r13		! source line 1416
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
	mov	1417,r13		! source line 1417
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
	mov	1418,r13		! source line 1418
	mov	"\0\0WH",r10
_Label_1747:
!	jmp	_Label_1748
_Label_1748:
	mov	1418,r13		! source line 1418
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1753		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1753
	jmp	_Label_1750
_Label_1753:
	mov	1420,r13		! source line 1420
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1755) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1754  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1754 then goto _Label_1752 else goto _Label_1750
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1750
	jmp	_Label_1752
_Label_1752:
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1757) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1756  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1756 then goto _Label_1751 else goto _Label_1750
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1750
	jmp	_Label_1751
_Label_1750:
! THEN...
	mov	1422,r13		! source line 1422
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1751:
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1759) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1758  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1758 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0WH",r10
_Label_1760:
!   if offset >= 8192 then goto _Label_1762		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1762
!	jmp	_Label_1761
_Label_1761:
	mov	1425,r13		! source line 1425
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1763 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1763  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1765		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1765
!	jmp	_Label_1764
_Label_1764:
! THEN...
	mov	1432,r13		! source line 1432
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1765:
! END WHILE...
	jmp	_Label_1760
_Label_1762:
! ASSIGNMENT STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1747
_Label_1749:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1766
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1768
	.word	12
	.word	4
	.word	_Label_1769
	.word	16
	.word	4
	.word	_Label_1770
	.word	20
	.word	4
	.word	_Label_1771
	.word	-9
	.word	1
	.word	_Label_1772
	.word	-16
	.word	4
	.word	_Label_1773
	.word	-20
	.word	4
	.word	_Label_1774
	.word	-24
	.word	4
	.word	_Label_1775
	.word	-10
	.word	1
	.word	_Label_1776
	.word	-28
	.word	4
	.word	_Label_1777
	.word	-11
	.word	1
	.word	_Label_1778
	.word	-32
	.word	4
	.word	_Label_1779
	.word	-36
	.word	4
	.word	_Label_1780
	.word	-40
	.word	4
	.word	_Label_1781
	.word	-44
	.word	4
	.word	0
_Label_1766:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1767:
	.ascii	"Pself\0"
	.align
_Label_1768:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1770:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1771:
	.byte	'C'
	.ascii	"_temp_1763\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1775:
	.byte	'C'
	.ascii	"_temp_1756\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1777:
	.byte	'C'
	.ascii	"_temp_1754\0"
	.align
_Label_1778:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1779:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1780:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1781:
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
_Label_1902:
	push	r0
	sub	r1,1,r1
	bne	_Label_1902
	mov	1442,r13		! source line 1442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0IF",r10
	mov	1466,r13		! source line 1466
	mov	"\0\0SE",r10
!   _temp_1785 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1786) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1785  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1784  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1784 >= 4 then goto _Label_1783		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1783
!	jmp	_Label_1782
_Label_1782:
! THEN...
	mov	1469,r13		! source line 1469
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1783:
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1788		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1788
!	jmp	_Label_1787
_Label_1787:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1788:
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
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
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
	mov	1479,r13		! source line 1479
	mov	"\0\0SE",r10
!   _temp_1791 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1790 = _temp_1791 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1792 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1793) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1790  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1792  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1789  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1789  (sizeInBytes=4)
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
	.word	_Label_1794
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1796
	.word	12
	.word	4
	.word	_Label_1797
	.word	16
	.word	4
	.word	_Label_1798
	.word	20
	.word	4
	.word	_Label_1799
	.word	-12
	.word	4
	.word	_Label_1800
	.word	-16
	.word	4
	.word	_Label_1801
	.word	-20
	.word	4
	.word	_Label_1802
	.word	-24
	.word	4
	.word	_Label_1803
	.word	-28
	.word	4
	.word	_Label_1804
	.word	-32
	.word	4
	.word	_Label_1805
	.word	-36
	.word	4
	.word	_Label_1806
	.word	-40
	.word	4
	.word	_Label_1807
	.word	-44
	.word	4
	.word	0
_Label_1794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1795:
	.ascii	"Pself\0"
	.align
_Label_1796:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1797:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1807:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

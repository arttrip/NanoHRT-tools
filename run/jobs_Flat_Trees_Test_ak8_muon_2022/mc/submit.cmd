universe              = vanilla
requirements          = (Arch == "X86_64") && (OpSys == "LINUX")
request_memory        = 2000
request_disk          = 10000000
executable            = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/run_postproc_condor.sh
arguments             = $(jobid)
transfer_input_files  = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW.tar.gz,/afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/processor.py,/afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/metadata.json,/afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/heavyFlavSFTree_cfg.json,/afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/keep_and_drop_input.txt,/afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/keep_and_drop_output.txt
output                = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/$(jobid).out
error                 = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/$(jobid).err
log                   = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/$(jobid).log
use_x509userproxy     = true
Should_Transfer_Files = YES
initialdir            = /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc
WhenToTransferOutput  = ON_EXIT
want_graceful_removal = true
on_exit_remove        = (ExitBySignal == False) && (ExitCode == 0)
on_exit_hold          = ( (ExitBySignal == True) || (ExitCode != 0) )
on_exit_hold_reason   = strcat("Job held by ON_EXIT_HOLD due to ", ifThenElse((ExitBySignal == True), "exit by signal", strcat("exit code ",ExitCode)), ".")
periodic_release      = (NumJobStarts < 3) && ((CurrentTime - EnteredCurrentStatus) > 10*60)
transfer_output_files = ""

+MaxRuntime = 24*60*60


queue jobid from /afs/cern.ch/user/l/lpaizano/FlatTrees_Run3/CMSSW_11_1_0_pre5_PY3/src/PhysicsTools/NanoHRTTools/run/jobs_Flat_Trees_Test_ak8_muon_2022/mc/submit.txt

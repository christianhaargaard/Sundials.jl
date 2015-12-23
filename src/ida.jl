# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

type IDA_struct; end # dummy type to give us a typed pointer
typealias IDA_ptr Ptr{IDA_struct}

function IDACreate()
    ccall((:IDACreate,libsundials_ida),IDA_ptr,())
end

function IDASetErrHandlerFn(ida_mem::IDA_ptr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(IDA_ptr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::IDA_ptr,errfp::Ptr{Void})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(IDA_ptr,Ptr{Void}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::IDA_ptr,user_data::Ptr{Void})
    ccall((:IDASetUserData,libsundials_ida),Cint,(IDA_ptr,Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::IDA_ptr,maxord::Int)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::IDA_ptr,mxsteps::Int)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(IDA_ptr,Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::IDA_ptr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::IDA_ptr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::IDA_ptr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::IDA_ptr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::IDA_ptr,maxnef::Int)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::IDA_ptr,maxcor::Int)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::IDA_ptr,maxncf::Int)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::IDA_ptr,suppressalg::Int)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::IDA_ptr,id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::IDA_ptr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::IDA_ptr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::IDA_ptr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(IDA_ptr,),ida_mem)
end

function IDAInit(ida_mem::IDA_ptr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(IDA_ptr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::IDA_ptr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(IDA_ptr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::IDA_ptr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(IDA_ptr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::IDA_ptr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(IDA_ptr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::IDA_ptr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(IDA_ptr,IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::IDA_ptr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::IDA_ptr,maxnh::Int)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::IDA_ptr,maxnj::Int)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::IDA_ptr,maxnit::Int)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::IDA_ptr,lsoff::Int)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::IDA_ptr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::IDA_ptr,nrtfn::Int,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(IDA_ptr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem::IDA_ptr,icopt::Int,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(IDA_ptr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::IDA_ptr,tout::realtype,tret::Vector{realtype},yret::N_Vector,ypret::N_Vector,itask::Int)
    ccall((:IDASolve,libsundials_ida),Cint,(IDA_ptr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::IDA_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(IDA_ptr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::IDA_ptr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::IDA_ptr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::IDA_ptr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::IDA_ptr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::IDA_ptr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::IDA_ptr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::IDA_ptr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(IDA_ptr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::IDA_ptr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::IDA_ptr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::IDA_ptr,hinused::Vector{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::IDA_ptr,hlast::Vector{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::IDA_ptr,hcur::Vector{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::IDA_ptr,tcur::Vector{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::IDA_ptr,tolsfact::Vector{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::IDA_ptr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::IDA_ptr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::IDA_ptr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::IDA_ptr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::IDA_ptr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Vector{realtype},hlast::Vector{realtype},hcur::Vector{realtype},tcur::Vector{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::IDA_ptr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::IDA_ptr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::IDA_ptr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Int)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Vector{IDA_ptr})
    ccall((:IDAFree,libsundials_ida),Void,(Ptr{IDA_ptr},),ida_mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDADlsSetDenseJacFn(ida_mem::IDA_ptr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDA_ptr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDA_ptr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDA_ptr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDA_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDA_ptr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDA_ptr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDA_ptr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Int)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDASpilsSetPreconditioner(ida_mem::IDA_ptr,pset::IDASpilsPrecSetupFn,psolve::IDASpilsPrecSolveFn)
    ccall((:IDASpilsSetPreconditioner,libsundials_ida),Cint,(IDA_ptr,IDASpilsPrecSetupFn,IDASpilsPrecSolveFn),ida_mem,pset,psolve)
end

function IDASpilsSetJacTimesVecFn(ida_mem::IDA_ptr,jtv::IDASpilsJacTimesVecFn)
    ccall((:IDASpilsSetJacTimesVecFn,libsundials_ida),Cint,(IDA_ptr,IDASpilsJacTimesVecFn),ida_mem,jtv)
end

function IDASpilsSetGSType(ida_mem::IDA_ptr,gstype::Int)
    ccall((:IDASpilsSetGSType,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,gstype)
end

function IDASpilsSetMaxRestarts(ida_mem::IDA_ptr,maxrs::Int)
    ccall((:IDASpilsSetMaxRestarts,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxrs)
end

function IDASpilsSetMaxl(ida_mem::IDA_ptr,maxl::Int)
    ccall((:IDASpilsSetMaxl,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxl)
end

function IDASpilsSetEpsLin(ida_mem::IDA_ptr,eplifac::realtype)
    ccall((:IDASpilsSetEpsLin,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,eplifac)
end

function IDASpilsSetIncrementFactor(ida_mem::IDA_ptr,dqincfac::realtype)
    ccall((:IDASpilsSetIncrementFactor,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,dqincfac)
end

function IDASpilsGetWorkSpace(ida_mem::IDA_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDASpilsGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDASpilsGetNumPrecEvals(ida_mem::IDA_ptr,npevals::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,npevals)
end

function IDASpilsGetNumPrecSolves(ida_mem::IDA_ptr,npsolves::Ptr{Clong})
    ccall((:IDASpilsGetNumPrecSolves,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,npsolves)
end

function IDASpilsGetNumLinIters(ida_mem::IDA_ptr,nliters::Ptr{Clong})
    ccall((:IDASpilsGetNumLinIters,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nliters)
end

function IDASpilsGetNumConvFails(ida_mem::IDA_ptr,nlcfails::Ptr{Clong})
    ccall((:IDASpilsGetNumConvFails,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nlcfails)
end

function IDASpilsGetNumJtimesEvals(ida_mem::IDA_ptr,njvevals::Ptr{Clong})
    ccall((:IDASpilsGetNumJtimesEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,njvevals)
end

function IDASpilsGetNumResEvals(ida_mem::IDA_ptr,nrevalsLS::Ptr{Clong})
    ccall((:IDASpilsGetNumResEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nrevalsLS)
end

function IDASpilsGetLastFlag(ida_mem::IDA_ptr,flag::Ptr{Clong})
    ccall((:IDASpilsGetLastFlag,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,flag)
end

function IDASpilsGetReturnFlagName(flag::Int)
    ccall((:IDASpilsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDADlsSetDenseJacFn(ida_mem::IDA_ptr,jac::IDADlsDenseJacFn)
    ccall((:IDADlsSetDenseJacFn,libsundials_ida),Cint,(IDA_ptr,IDADlsDenseJacFn),ida_mem,jac)
end

function IDADlsSetBandJacFn(ida_mem::IDA_ptr,jac::IDADlsBandJacFn)
    ccall((:IDADlsSetBandJacFn,libsundials_ida),Cint,(IDA_ptr,IDADlsBandJacFn),ida_mem,jac)
end

function IDADlsGetWorkSpace(ida_mem::IDA_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:IDADlsGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwLS,leniwLS)
end

function IDADlsGetNumJacEvals(ida_mem::IDA_ptr,njevals::Ptr{Clong})
    ccall((:IDADlsGetNumJacEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,njevals)
end

function IDADlsGetNumResEvals(ida_mem::IDA_ptr,nfevalsLS::Ptr{Clong})
    ccall((:IDADlsGetNumResEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nfevalsLS)
end

function IDADlsGetLastFlag(ida_mem::IDA_ptr,flag::Ptr{Clong})
    ccall((:IDADlsGetLastFlag,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,flag)
end

function IDADlsGetReturnFlagName(flag::Int)
    ccall((:IDADlsGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDABand(ida_mem::IDA_ptr,Neq::Int,mupper::Int,mlower::Int)
    ccall((:IDABand,libsundials_ida),Cint,(IDA_ptr,Clong,Clong,Clong),ida_mem,Neq,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDABBDPrecInit(ida_mem::IDA_ptr,Nlocal::Int,mudq::Int,mldq::Int,mukeep::Int,mlkeep::Int,dq_rel_yy::realtype,Gres::IDABBDLocalFn,Gcomm::IDABBDCommFn)
    ccall((:IDABBDPrecInit,libsundials_ida),Cint,(IDA_ptr,Clong,Clong,Clong,Clong,Clong,realtype,IDABBDLocalFn,IDABBDCommFn),ida_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dq_rel_yy,Gres,Gcomm)
end

function IDABBDPrecReInit(ida_mem::IDA_ptr,mudq::Int,mldq::Int,dq_rel_yy::realtype)
    ccall((:IDABBDPrecReInit,libsundials_ida),Cint,(IDA_ptr,Clong,Clong,realtype),ida_mem,mudq,mldq,dq_rel_yy)
end

function IDABBDPrecGetWorkSpace(ida_mem::IDA_ptr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrwBBDP,leniwBBDP)
end

function IDABBDPrecGetNumGfnEvals(ida_mem::IDA_ptr,ngevalsBBDP::Ptr{Clong})
    ccall((:IDABBDPrecGetNumGfnEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IDADense(ida_mem::IDA_ptr,Neq::Int)
    ccall((:IDADense,libsundials_ida),Cint,(IDA_ptr,Clong),ida_mem,Neq)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function IDACreate()
    ccall((:IDACreate,libsundials_ida),IDA_ptr,())
end

function IDASetErrHandlerFn(ida_mem::IDA_ptr,ehfun::IDAErrHandlerFn,eh_data::Ptr{Void})
    ccall((:IDASetErrHandlerFn,libsundials_ida),Cint,(IDA_ptr,IDAErrHandlerFn,Ptr{Void}),ida_mem,ehfun,eh_data)
end

function IDASetErrFile(ida_mem::IDA_ptr,errfp::Ptr{Void})
    ccall((:IDASetErrFile,libsundials_ida),Cint,(IDA_ptr,Ptr{Void}),ida_mem,errfp)
end

function IDASetUserData(ida_mem::IDA_ptr,user_data::Ptr{Void})
    ccall((:IDASetUserData,libsundials_ida),Cint,(IDA_ptr,Ptr{Void}),ida_mem,user_data)
end

function IDASetMaxOrd(ida_mem::IDA_ptr,maxord::Int)
    ccall((:IDASetMaxOrd,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxord)
end

function IDASetMaxNumSteps(ida_mem::IDA_ptr,mxsteps::Int)
    ccall((:IDASetMaxNumSteps,libsundials_ida),Cint,(IDA_ptr,Clong),ida_mem,mxsteps)
end

function IDASetInitStep(ida_mem::IDA_ptr,hin::realtype)
    ccall((:IDASetInitStep,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,hin)
end

function IDASetMaxStep(ida_mem::IDA_ptr,hmax::realtype)
    ccall((:IDASetMaxStep,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,hmax)
end

function IDASetStopTime(ida_mem::IDA_ptr,tstop::realtype)
    ccall((:IDASetStopTime,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,tstop)
end

function IDASetNonlinConvCoef(ida_mem::IDA_ptr,epcon::realtype)
    ccall((:IDASetNonlinConvCoef,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,epcon)
end

function IDASetMaxErrTestFails(ida_mem::IDA_ptr,maxnef::Int)
    ccall((:IDASetMaxErrTestFails,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnef)
end

function IDASetMaxNonlinIters(ida_mem::IDA_ptr,maxcor::Int)
    ccall((:IDASetMaxNonlinIters,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxcor)
end

function IDASetMaxConvFails(ida_mem::IDA_ptr,maxncf::Int)
    ccall((:IDASetMaxConvFails,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxncf)
end

function IDASetSuppressAlg(ida_mem::IDA_ptr,suppressalg::Int)
    ccall((:IDASetSuppressAlg,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,suppressalg)
end

function IDASetId(ida_mem::IDA_ptr,id::N_Vector)
    ccall((:IDASetId,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,id)
end

function IDASetConstraints(ida_mem::IDA_ptr,constraints::N_Vector)
    ccall((:IDASetConstraints,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,constraints)
end

function IDASetRootDirection(ida_mem::IDA_ptr,rootdir::Ptr{Cint})
    ccall((:IDASetRootDirection,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,rootdir)
end

function IDASetNoInactiveRootWarn(ida_mem::IDA_ptr)
    ccall((:IDASetNoInactiveRootWarn,libsundials_ida),Cint,(IDA_ptr,),ida_mem)
end

function IDAInit(ida_mem::IDA_ptr,res::IDAResFn,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAInit,libsundials_ida),Cint,(IDA_ptr,IDAResFn,realtype,N_Vector,N_Vector),ida_mem,res,t0,yy0,yp0)
end

function IDAReInit(ida_mem::IDA_ptr,t0::realtype,yy0::N_Vector,yp0::N_Vector)
    ccall((:IDAReInit,libsundials_ida),Cint,(IDA_ptr,realtype,N_Vector,N_Vector),ida_mem,t0,yy0,yp0)
end

function IDASStolerances(ida_mem::IDA_ptr,reltol::realtype,abstol::realtype)
    ccall((:IDASStolerances,libsundials_ida),Cint,(IDA_ptr,realtype,realtype),ida_mem,reltol,abstol)
end

function IDASVtolerances(ida_mem::IDA_ptr,reltol::realtype,abstol::N_Vector)
    ccall((:IDASVtolerances,libsundials_ida),Cint,(IDA_ptr,realtype,N_Vector),ida_mem,reltol,abstol)
end

function IDAWFtolerances(ida_mem::IDA_ptr,efun::IDAEwtFn)
    ccall((:IDAWFtolerances,libsundials_ida),Cint,(IDA_ptr,IDAEwtFn),ida_mem,efun)
end

function IDASetNonlinConvCoefIC(ida_mem::IDA_ptr,epiccon::realtype)
    ccall((:IDASetNonlinConvCoefIC,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,epiccon)
end

function IDASetMaxNumStepsIC(ida_mem::IDA_ptr,maxnh::Int)
    ccall((:IDASetMaxNumStepsIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnh)
end

function IDASetMaxNumJacsIC(ida_mem::IDA_ptr,maxnj::Int)
    ccall((:IDASetMaxNumJacsIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnj)
end

function IDASetMaxNumItersIC(ida_mem::IDA_ptr,maxnit::Int)
    ccall((:IDASetMaxNumItersIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxnit)
end

function IDASetLineSearchOffIC(ida_mem::IDA_ptr,lsoff::Int)
    ccall((:IDASetLineSearchOffIC,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,lsoff)
end

function IDASetStepToleranceIC(ida_mem::IDA_ptr,steptol::realtype)
    ccall((:IDASetStepToleranceIC,libsundials_ida),Cint,(IDA_ptr,realtype),ida_mem,steptol)
end

function IDARootInit(ida_mem::IDA_ptr,nrtfn::Int,g::IDARootFn)
    ccall((:IDARootInit,libsundials_ida),Cint,(IDA_ptr,Cint,IDARootFn),ida_mem,nrtfn,g)
end

function IDACalcIC(ida_mem::IDA_ptr,icopt::Int,tout1::realtype)
    ccall((:IDACalcIC,libsundials_ida),Cint,(IDA_ptr,Cint,realtype),ida_mem,icopt,tout1)
end

function IDASolve(ida_mem::IDA_ptr,tout::realtype,tret::Vector{realtype},yret::N_Vector,ypret::N_Vector,itask::Int)
    ccall((:IDASolve,libsundials_ida),Cint,(IDA_ptr,realtype,Ptr{realtype},N_Vector,N_Vector,Cint),ida_mem,tout,tret,yret,ypret,itask)
end

function IDAGetDky(ida_mem::IDA_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:IDAGetDky,libsundials_ida),Cint,(IDA_ptr,realtype,Cint,N_Vector),ida_mem,t,k,dky)
end

function IDAGetWorkSpace(ida_mem::IDA_ptr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:IDAGetWorkSpace,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,lenrw,leniw)
end

function IDAGetNumSteps(ida_mem::IDA_ptr,nsteps::Ptr{Clong})
    ccall((:IDAGetNumSteps,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nsteps)
end

function IDAGetNumResEvals(ida_mem::IDA_ptr,nrevals::Ptr{Clong})
    ccall((:IDAGetNumResEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nrevals)
end

function IDAGetNumLinSolvSetups(ida_mem::IDA_ptr,nlinsetups::Ptr{Clong})
    ccall((:IDAGetNumLinSolvSetups,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nlinsetups)
end

function IDAGetNumErrTestFails(ida_mem::IDA_ptr,netfails::Ptr{Clong})
    ccall((:IDAGetNumErrTestFails,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,netfails)
end

function IDAGetNumBacktrackOps(ida_mem::IDA_ptr,nbacktr::Ptr{Clong})
    ccall((:IDAGetNumBacktrackOps,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nbacktr)
end

function IDAGetConsistentIC(ida_mem::IDA_ptr,yy0_mod::N_Vector,yp0_mod::N_Vector)
    ccall((:IDAGetConsistentIC,libsundials_ida),Cint,(IDA_ptr,N_Vector,N_Vector),ida_mem,yy0_mod,yp0_mod)
end

function IDAGetLastOrder(ida_mem::IDA_ptr,klast::Ptr{Cint})
    ccall((:IDAGetLastOrder,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,klast)
end

function IDAGetCurrentOrder(ida_mem::IDA_ptr,kcur::Ptr{Cint})
    ccall((:IDAGetCurrentOrder,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,kcur)
end

function IDAGetActualInitStep(ida_mem::IDA_ptr,hinused::Vector{realtype})
    ccall((:IDAGetActualInitStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hinused)
end

function IDAGetLastStep(ida_mem::IDA_ptr,hlast::Vector{realtype})
    ccall((:IDAGetLastStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hlast)
end

function IDAGetCurrentStep(ida_mem::IDA_ptr,hcur::Vector{realtype})
    ccall((:IDAGetCurrentStep,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,hcur)
end

function IDAGetCurrentTime(ida_mem::IDA_ptr,tcur::Vector{realtype})
    ccall((:IDAGetCurrentTime,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,tcur)
end

function IDAGetTolScaleFactor(ida_mem::IDA_ptr,tolsfact::Vector{realtype})
    ccall((:IDAGetTolScaleFactor,libsundials_ida),Cint,(IDA_ptr,Ptr{realtype}),ida_mem,tolsfact)
end

function IDAGetErrWeights(ida_mem::IDA_ptr,eweight::N_Vector)
    ccall((:IDAGetErrWeights,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,eweight)
end

function IDAGetEstLocalErrors(ida_mem::IDA_ptr,ele::N_Vector)
    ccall((:IDAGetEstLocalErrors,libsundials_ida),Cint,(IDA_ptr,N_Vector),ida_mem,ele)
end

function IDAGetNumGEvals(ida_mem::IDA_ptr,ngevals::Ptr{Clong})
    ccall((:IDAGetNumGEvals,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,ngevals)
end

function IDAGetRootInfo(ida_mem::IDA_ptr,rootsfound::Ptr{Cint})
    ccall((:IDAGetRootInfo,libsundials_ida),Cint,(IDA_ptr,Ptr{Cint}),ida_mem,rootsfound)
end

function IDAGetIntegratorStats(ida_mem::IDA_ptr,nsteps::Ptr{Clong},nrevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Vector{realtype},hlast::Vector{realtype},hcur::Vector{realtype},tcur::Vector{realtype})
    ccall((:IDAGetIntegratorStats,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),ida_mem,nsteps,nrevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function IDAGetNumNonlinSolvIters(ida_mem::IDA_ptr,nniters::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvIters,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nniters)
end

function IDAGetNumNonlinSolvConvFails(ida_mem::IDA_ptr,nncfails::Ptr{Clong})
    ccall((:IDAGetNumNonlinSolvConvFails,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong}),ida_mem,nncfails)
end

function IDAGetNonlinSolvStats(ida_mem::IDA_ptr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:IDAGetNonlinSolvStats,libsundials_ida),Cint,(IDA_ptr,Ptr{Clong},Ptr{Clong}),ida_mem,nniters,nncfails)
end

function IDAGetReturnFlagName(flag::Int)
    ccall((:IDAGetReturnFlagName,libsundials_ida),Ptr{UInt8},(Clong,),flag)
end

function IDAFree(ida_mem::Vector{IDA_ptr})
    ccall((:IDAFree,libsundials_ida),Void,(Ptr{IDA_ptr},),ida_mem)
end

function IDAEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:IDAEwtSet,libsundials_ida),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function IDAErrHandler(error_code::Int,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:IDAErrHandler,libsundials_ida),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpbcgMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,libsundials_ida),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,libsundials_ida),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,libsundials_ida),Void,(SpbcgMem,),mem)
end

function IDASpbcg(ida_mem::IDA_ptr,maxl::Int)
    ccall((:IDASpbcg,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpgmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,libsundials_ida),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,gstype::Int,delta::realtype,max_restarts::Int,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpgmrSolve,libsundials_ida),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,libsundials_ida),Void,(SpgmrMem,),mem)
end

function IDASpgmr(ida_mem::IDA_ptr,maxl::Int)
    ccall((:IDASpgmr,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/ida/ida_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SptfqmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,libsundials_ida),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SptfqmrSolve,libsundials_ida),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,libsundials_ida),Void,(SptfqmrMem,),mem)
end

function IDASptfqmr(ida_mem::IDA_ptr,maxl::Int)
    ccall((:IDASptfqmr,libsundials_ida),Cint,(IDA_ptr,Cint),ida_mem,maxl)
end

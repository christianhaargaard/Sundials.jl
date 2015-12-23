# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

type CVODE_struct; end # dummy type to give us a typed pointer
typealias CVODE_ptr Ptr{:CVODE_struct}

function CVodeCreate(lmm::Int,iter::Int)
    ccall((:CVodeCreate,libsundials_cvode),CVODE_ptr,(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem::CVODE_ptr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODE_ptr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::CVODE_ptr,errfp::Ptr{Void})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::CVODE_ptr,user_data::Ptr{Void})
    ccall((:CVodeSetUserData,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::CVODE_ptr,maxord::Int)
    ccall((:CVodeSetMaxOrd,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::CVODE_ptr,mxsteps::Int)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvode),Cint,(CVODE_ptr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::CVODE_ptr,mxhnil::Int)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::CVODE_ptr,stldet::Int)
    ccall((:CVodeSetStabLimDet,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::CVODE_ptr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::CVODE_ptr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::CVODE_ptr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::CVODE_ptr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::CVODE_ptr,maxnef::Int)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::CVODE_ptr,maxcor::Int)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::CVODE_ptr,maxncf::Int)
    ccall((:CVodeSetMaxConvFails,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::CVODE_ptr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::CVODE_ptr,iter::Int)
    ccall((:CVodeSetIterType,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::CVODE_ptr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::CVODE_ptr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeInit(cvode_mem::CVODE_ptr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvode),Cint,(CVODE_ptr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::CVODE_ptr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::CVODE_ptr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODE_ptr,CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem::CVODE_ptr,nrtfn::Int,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int)
    ccall((:CVode,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem::CVODE_ptr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::CVODE_ptr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::CVODE_ptr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::CVODE_ptr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::CVODE_ptr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::CVODE_ptr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::CVODE_ptr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::CVODE_ptr,hinused::Vector{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::CVODE_ptr,hlast::Vector{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::CVODE_ptr,hcur::Vector{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::CVODE_ptr,tcur::Vector{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::CVODE_ptr,tolsfac::Vector{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::CVODE_ptr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::CVODE_ptr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::CVODE_ptr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::CVODE_ptr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::CVODE_ptr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Vector{realtype},hlast::Vector{realtype},hcur::Vector{realtype},tcur::Vector{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::CVODE_ptr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::CVODE_ptr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Int)
    ccall((:CVodeGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeFree(cvode_mem::Vector{CVODE_ptr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ptr{CVODE_ptr},),cvode_mem)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_direct.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDlsSetDenseJacFn(cvode_mem::CVODE_ptr,jac::CVDlsDenseJacFn)
    ccall((:CVDlsSetDenseJacFn,libsundials_cvode),Cint,(CVODE_ptr,CVDlsDenseJacFn),cvode_mem,jac)
end

function CVDlsSetBandJacFn(cvode_mem::CVODE_ptr,jac::CVDlsBandJacFn)
    ccall((:CVDlsSetBandJacFn,libsundials_cvode),Cint,(CVODE_ptr,CVDlsBandJacFn),cvode_mem,jac)
end

function CVDlsGetWorkSpace(cvode_mem::CVODE_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDlsGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDlsGetNumJacEvals(cvode_mem::CVODE_ptr,njevals::Ptr{Clong})
    ccall((:CVDlsGetNumJacEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,njevals)
end

function CVDlsGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevalsLS::Ptr{Clong})
    ccall((:CVDlsGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDlsGetLastFlag(cvode_mem::CVODE_ptr,flag::Ptr{Clong})
    ccall((:CVDlsGetLastFlag,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,flag)
end

function CVDlsGetReturnFlagName(flag::Int)
    ccall((:CVDlsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpilsSetPrecType(cvode_mem::CVODE_ptr,pretype::Int)
    ccall((:CVSpilsSetPrecType,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,pretype)
end

function CVSpilsSetGSType(cvode_mem::CVODE_ptr,gstype::Int)
    ccall((:CVSpilsSetGSType,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,gstype)
end

function CVSpilsSetMaxl(cvode_mem::CVODE_ptr,maxl::Int)
    ccall((:CVSpilsSetMaxl,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxl)
end

function CVSpilsSetEpsLin(cvode_mem::CVODE_ptr,eplifac::realtype)
    ccall((:CVSpilsSetEpsLin,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,eplifac)
end

function CVSpilsSetPreconditioner(cvode_mem::CVODE_ptr,pset::CVSpilsPrecSetupFn,psolve::CVSpilsPrecSolveFn)
    ccall((:CVSpilsSetPreconditioner,libsundials_cvode),Cint,(CVODE_ptr,CVSpilsPrecSetupFn,CVSpilsPrecSolveFn),cvode_mem,pset,psolve)
end

function CVSpilsSetJacTimesVecFn(cvode_mem::CVODE_ptr,jtv::CVSpilsJacTimesVecFn)
    ccall((:CVSpilsSetJacTimesVecFn,libsundials_cvode),Cint,(CVODE_ptr,CVSpilsJacTimesVecFn),cvode_mem,jtv)
end

function CVSpilsGetWorkSpace(cvode_mem::CVODE_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVSpilsGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVSpilsGetNumPrecEvals(cvode_mem::CVODE_ptr,npevals::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,npevals)
end

function CVSpilsGetNumPrecSolves(cvode_mem::CVODE_ptr,npsolves::Ptr{Clong})
    ccall((:CVSpilsGetNumPrecSolves,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,npsolves)
end

function CVSpilsGetNumLinIters(cvode_mem::CVODE_ptr,nliters::Ptr{Clong})
    ccall((:CVSpilsGetNumLinIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nliters)
end

function CVSpilsGetNumConvFails(cvode_mem::CVODE_ptr,nlcfails::Ptr{Clong})
    ccall((:CVSpilsGetNumConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nlcfails)
end

function CVSpilsGetNumJtimesEvals(cvode_mem::CVODE_ptr,njvevals::Ptr{Clong})
    ccall((:CVSpilsGetNumJtimesEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,njvevals)
end

function CVSpilsGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevalsLS::Ptr{Clong})
    ccall((:CVSpilsGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVSpilsGetLastFlag(cvode_mem::CVODE_ptr,flag::Ptr{Clong})
    ccall((:CVSpilsGetLastFlag,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,flag)
end

function CVSpilsGetReturnFlagName(flag::Int)
    ccall((:CVSpilsGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBand(cvode_mem::CVODE_ptr,N::Int,mupper::Int,mlower::Int)
    ccall((:CVBand,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bandpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBandPrecInit(cvode_mem::CVODE_ptr,N::Int,mu::Int,ml::Int)
    ccall((:CVBandPrecInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,Clong),cvode_mem,N,mu,ml)
end

function CVBandPrecGetWorkSpace(cvode_mem::CVODE_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBandPrecGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBandPrecGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevalsBP::Ptr{Clong})
    ccall((:CVBandPrecGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsBP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem::CVODE_ptr,Nlocal::Int,mudq::Int,mldq::Int,mukeep::Int,mlkeep::Int,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::CVODE_ptr,mudq::Int,mldq::Int,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::CVODE_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::CVODE_ptr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDense(cvode_mem::CVODE_ptr,N::Int)
    ccall((:CVDense,libsundials_cvode),Cint,(CVODE_ptr,Clong),cvode_mem,N)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_diag.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function CVDiag(cvode_mem::CVODE_ptr)
    ccall((:CVDiag,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVDiagGetWorkSpace(cvode_mem::CVODE_ptr,lenrwLS::Ptr{Clong},leniwLS::Ptr{Clong})
    ccall((:CVDiagGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwLS,leniwLS)
end

function CVDiagGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevalsLS::Ptr{Clong})
    ccall((:CVDiagGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsLS)
end

function CVDiagGetLastFlag(cvode_mem::CVODE_ptr,flag::Ptr{Clong})
    ccall((:CVDiagGetLastFlag,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,flag)
end

function CVDiagGetReturnFlagName(flag::Int)
    ccall((:CVDiagGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeCreate(lmm::Int,iter::Int)
    ccall((:CVodeCreate,libsundials_cvode),CVODE_ptr,(Cint,Cint),lmm,iter)
end

function CVodeSetErrHandlerFn(cvode_mem::CVODE_ptr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODE_ptr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::CVODE_ptr,errfp::Ptr{Void})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,errfp)
end

function CVodeSetUserData(cvode_mem::CVODE_ptr,user_data::Ptr{Void})
    ccall((:CVodeSetUserData,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,user_data)
end

function CVodeSetMaxOrd(cvode_mem::CVODE_ptr,maxord::Int)
    ccall((:CVodeSetMaxOrd,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxord)
end

function CVodeSetMaxNumSteps(cvode_mem::CVODE_ptr,mxsteps::Int)
    ccall((:CVodeSetMaxNumSteps,libsundials_cvode),Cint,(CVODE_ptr,Clong),cvode_mem,mxsteps)
end

function CVodeSetMaxHnilWarns(cvode_mem::CVODE_ptr,mxhnil::Int)
    ccall((:CVodeSetMaxHnilWarns,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,mxhnil)
end

function CVodeSetStabLimDet(cvode_mem::CVODE_ptr,stldet::Int)
    ccall((:CVodeSetStabLimDet,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,stldet)
end

function CVodeSetInitStep(cvode_mem::CVODE_ptr,hin::realtype)
    ccall((:CVodeSetInitStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hin)
end

function CVodeSetMinStep(cvode_mem::CVODE_ptr,hmin::realtype)
    ccall((:CVodeSetMinStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hmin)
end

function CVodeSetMaxStep(cvode_mem::CVODE_ptr,hmax::realtype)
    ccall((:CVodeSetMaxStep,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,hmax)
end

function CVodeSetStopTime(cvode_mem::CVODE_ptr,tstop::realtype)
    ccall((:CVodeSetStopTime,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,tstop)
end

function CVodeSetMaxErrTestFails(cvode_mem::CVODE_ptr,maxnef::Int)
    ccall((:CVodeSetMaxErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxnef)
end

function CVodeSetMaxNonlinIters(cvode_mem::CVODE_ptr,maxcor::Int)
    ccall((:CVodeSetMaxNonlinIters,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxcor)
end

function CVodeSetMaxConvFails(cvode_mem::CVODE_ptr,maxncf::Int)
    ccall((:CVodeSetMaxConvFails,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxncf)
end

function CVodeSetNonlinConvCoef(cvode_mem::CVODE_ptr,nlscoef::realtype)
    ccall((:CVodeSetNonlinConvCoef,libsundials_cvode),Cint,(CVODE_ptr,realtype),cvode_mem,nlscoef)
end

function CVodeSetIterType(cvode_mem::CVODE_ptr,iter::Int)
    ccall((:CVodeSetIterType,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,iter)
end

function CVodeSetRootDirection(cvode_mem::CVODE_ptr,rootdir::Ptr{Cint})
    ccall((:CVodeSetRootDirection,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,rootdir)
end

function CVodeSetNoInactiveRootWarn(cvode_mem::CVODE_ptr)
    ccall((:CVodeSetNoInactiveRootWarn,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeInit(cvode_mem::CVODE_ptr,f::CVRhsFn,t0::realtype,y0::N_Vector)
    ccall((:CVodeInit,libsundials_cvode),Cint,(CVODE_ptr,CVRhsFn,realtype,N_Vector),cvode_mem,f,t0,y0)
end

function CVodeReInit(cvode_mem::CVODE_ptr,t0::realtype,y0::N_Vector)
    ccall((:CVodeReInit,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,t0,y0)
end

function CVodeSStolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::CVODE_ptr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODE_ptr,CVEwtFn),cvode_mem,efun)
end

function CVodeRootInit(cvode_mem::CVODE_ptr,nrtfn::Int,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVode(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int)
    ccall((:CVode,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetWorkSpace(cvode_mem::CVODE_ptr,lenrw::Ptr{Clong},leniw::Ptr{Clong})
    ccall((:CVodeGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrw,leniw)
end

function CVodeGetNumSteps(cvode_mem::CVODE_ptr,nsteps::Ptr{Clong})
    ccall((:CVodeGetNumSteps,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nsteps)
end

function CVodeGetNumRhsEvals(cvode_mem::CVODE_ptr,nfevals::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevals)
end

function CVodeGetNumLinSolvSetups(cvode_mem::CVODE_ptr,nlinsetups::Ptr{Clong})
    ccall((:CVodeGetNumLinSolvSetups,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nlinsetups)
end

function CVodeGetNumErrTestFails(cvode_mem::CVODE_ptr,netfails::Ptr{Clong})
    ccall((:CVodeGetNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,netfails)
end

function CVodeGetLastOrder(cvode_mem::CVODE_ptr,qlast::Ptr{Cint})
    ccall((:CVodeGetLastOrder,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,qlast)
end

function CVodeGetCurrentOrder(cvode_mem::CVODE_ptr,qcur::Ptr{Cint})
    ccall((:CVodeGetCurrentOrder,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,qcur)
end

function CVodeGetNumStabLimOrderReds(cvode_mem::CVODE_ptr,nslred::Ptr{Clong})
    ccall((:CVodeGetNumStabLimOrderReds,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nslred)
end

function CVodeGetActualInitStep(cvode_mem::CVODE_ptr,hinused::Vector{realtype})
    ccall((:CVodeGetActualInitStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hinused)
end

function CVodeGetLastStep(cvode_mem::CVODE_ptr,hlast::Vector{realtype})
    ccall((:CVodeGetLastStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hlast)
end

function CVodeGetCurrentStep(cvode_mem::CVODE_ptr,hcur::Vector{realtype})
    ccall((:CVodeGetCurrentStep,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,hcur)
end

function CVodeGetCurrentTime(cvode_mem::CVODE_ptr,tcur::Vector{realtype})
    ccall((:CVodeGetCurrentTime,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,tcur)
end

function CVodeGetTolScaleFactor(cvode_mem::CVODE_ptr,tolsfac::Vector{realtype})
    ccall((:CVodeGetTolScaleFactor,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype}),cvode_mem,tolsfac)
end

function CVodeGetErrWeights(cvode_mem::CVODE_ptr,eweight::N_Vector)
    ccall((:CVodeGetErrWeights,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,eweight)
end

function CVodeGetEstLocalErrors(cvode_mem::CVODE_ptr,ele::N_Vector)
    ccall((:CVodeGetEstLocalErrors,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,ele)
end

function CVodeGetNumGEvals(cvode_mem::CVODE_ptr,ngevals::Ptr{Clong})
    ccall((:CVodeGetNumGEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,ngevals)
end

function CVodeGetRootInfo(cvode_mem::CVODE_ptr,rootsfound::Ptr{Cint})
    ccall((:CVodeGetRootInfo,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Cint}),cvode_mem,rootsfound)
end

function CVodeGetIntegratorStats(cvode_mem::CVODE_ptr,nsteps::Ptr{Clong},nfevals::Ptr{Clong},nlinsetups::Ptr{Clong},netfails::Ptr{Clong},qlast::Ptr{Cint},qcur::Ptr{Cint},hinused::Vector{realtype},hlast::Vector{realtype},hcur::Vector{realtype},tcur::Vector{realtype})
    ccall((:CVodeGetIntegratorStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Cint},Ptr{Cint},Ptr{realtype},Ptr{realtype},Ptr{realtype},Ptr{realtype}),cvode_mem,nsteps,nfevals,nlinsetups,netfails,qlast,qcur,hinused,hlast,hcur,tcur)
end

function CVodeGetNumNonlinSolvIters(cvode_mem::CVODE_ptr,nniters::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nniters)
end

function CVodeGetNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nncfails::Ptr{Clong})
    ccall((:CVodeGetNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nncfails)
end

function CVodeGetNonlinSolvStats(cvode_mem::CVODE_ptr,nniters::Ptr{Clong},nncfails::Ptr{Clong})
    ccall((:CVodeGetNonlinSolvStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nniters,nncfails)
end

function CVodeGetReturnFlagName(flag::Int)
    ccall((:CVodeGetReturnFlagName,libsundials_cvode),Ptr{UInt8},(Clong,),flag)
end

function CVodeFree(cvode_mem::Vector{CVODE_ptr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ptr{CVODE_ptr},),cvode_mem)
end

function CVEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:CVEwtSet,libsundials_cvode),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function CVErrHandler(error_code::Int,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:CVErrHandler,libsundials_cvode),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpbcgMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpbcgMalloc,libsundials_cvode),SpbcgMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpbcgSolve(mem::SpbcgMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpbcgSolve,libsundials_cvode),Cint,(SpbcgMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SpbcgFree(mem::SpbcgMem)
    ccall((:SpbcgFree,libsundials_cvode),Void,(SpbcgMem,),mem)
end

function CVSpbcg(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSpbcg,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function SpgmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SpgmrMalloc,libsundials_cvode),SpgmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SpgmrSolve(mem::SpgmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,gstype::Int,delta::realtype,max_restarts::Int,P_data::Ptr{Void},s1::N_Vector,s2::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SpgmrSolve,libsundials_cvode),Cint,(SpgmrMem,Ptr{Void},N_Vector,N_Vector,Cint,Cint,realtype,Cint,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,gstype,delta,max_restarts,P_data,s1,s2,atimes,psolve,res_norm,nli,nps)
end

function SpgmrFree(mem::SpgmrMem)
    ccall((:SpgmrFree,libsundials_cvode),Void,(SpgmrMem,),mem)
end

function CVSpgmr(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSpgmr,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvode/cvode_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function SptfqmrMalloc(l_max::Int,vec_tmpl::N_Vector)
    ccall((:SptfqmrMalloc,libsundials_cvode),SptfqmrMem,(Cint,N_Vector),l_max,vec_tmpl)
end

function SptfqmrSolve(mem::SptfqmrMem,A_data::Ptr{Void},x::N_Vector,b::N_Vector,pretype::Int,delta::realtype,P_data::Ptr{Void},sx::N_Vector,sb::N_Vector,atimes::ATimesFn,psolve::PSolveFn,res_norm::Vector{realtype},nli::Ptr{Cint},nps::Ptr{Cint})
    ccall((:SptfqmrSolve,libsundials_cvode),Cint,(SptfqmrMem,Ptr{Void},N_Vector,N_Vector,Cint,realtype,Ptr{Void},N_Vector,N_Vector,ATimesFn,PSolveFn,Ptr{realtype},Ptr{Cint},Ptr{Cint}),mem,A_data,x,b,pretype,delta,P_data,sx,sb,atimes,psolve,res_norm,nli,nps)
end

function SptfqmrFree(mem::SptfqmrMem)
    ccall((:SptfqmrFree,libsundials_cvode),Void,(SptfqmrMem,),mem)
end

function CVSptfqmr(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSptfqmr,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end

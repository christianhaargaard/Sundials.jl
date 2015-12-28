# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

type CVODE_struct; end # dummy type to give us a typed pointer
typealias CVODE_ptr Ptr{:CVODE_struct}

function CVodeCreate(lmm::Int,iter::Int)
    ccall((:CVodeCreate,libsundials_cvode),CVODE_ptr,(Cint,Cint),lmm,iter)
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

function CVodeQuadInit(cvode_mem::CVODE_ptr,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,libsundials_cvode),Cint,(CVODE_ptr,CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem::CVODE_ptr,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem::CVODE_ptr,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem::CVODE_ptr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem::CVODE_ptr,Ns::Int,ism::Int,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem::CVODE_ptr,Ns::Int,ism::Int,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem::CVODE_ptr,ism::Int,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem::CVODE_ptr,reltolS::realtype,abstolS::Vector{realtype})
    ccall((:CVodeSensSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem::CVODE_ptr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensEEtolerances,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem::CVODE_ptr,fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,libsundials_cvode),Cint,(CVODE_ptr,CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem::CVODE_ptr,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem::CVODE_ptr,reltolQS::realtype,abstolQS::Vector{realtype})
    ccall((:CVodeQuadSensSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem::CVODE_ptr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadSensEEtolerances,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeRootInit(cvode_mem::CVODE_ptr,nrtfn::Int,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem::Vector{CVODE_ptr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ptr{CVODE_ptr},),cvode_mem)
end

function CVodeQuadFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeSensFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadSensFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeSetErrHandlerFn(cvode_mem::CVODE_ptr,ehfun::CVErrHandlerFn,eh_data::Ptr{Void})
    ccall((:CVodeSetErrHandlerFn,libsundials_cvode),Cint,(CVODE_ptr,CVErrHandlerFn,Ptr{Void}),cvode_mem,ehfun,eh_data)
end

function CVodeSetErrFile(cvode_mem::CVODE_ptr,errfp::Ptr{Void})
    ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,errfp)
end
# function CVodeSetErrFile(cvode_mem::CVODE_ptr,errfp::Ptr{Void})
#     ccall((:CVodeSetErrFile,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Void}),cvode_mem,errfp)
# end

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

function CVodeSetQuadErrCon(cvode_mem::CVODE_ptr,errconQ::Int)
    ccall((:CVodeSetQuadErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem::CVODE_ptr,DQtype::Int,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem::CVODE_ptr,errconS::Int)
    ccall((:CVodeSetSensErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem::CVODE_ptr,maxcorS::Int)
    ccall((:CVodeSetSensMaxNonlinIters,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem::CVODE_ptr,p::Vector{realtype},pbar::Vector{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem::CVODE_ptr,errconQS::Int)
    ccall((:CVodeSetQuadSensErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensToggleOff,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVode(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int)
    ccall((:CVode,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem::CVODE_ptr,tret::Vector{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetQuadDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem::CVODE_ptr,tret::Vector{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem::CVODE_ptr,tret::Vector{realtype},is::Int,ySout::N_Vector)
    ccall((:CVodeGetSens1,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem::CVODE_ptr,t::realtype,k::Int,is::Int,dky::N_Vector)
    ccall((:CVodeGetSensDky1,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem::CVODE_ptr,tret::Vector{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem::CVODE_ptr,tret::Vector{realtype},is::Int,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem::CVODE_ptr,t::realtype,k::Int,is::Int,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
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

function CVodeGetQuadNumRhsEvals(cvode_mem::CVODE_ptr,nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem::CVODE_ptr,nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem::CVODE_ptr,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem::CVODE_ptr,nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem::CVODE_ptr,nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem::CVODE_ptr,nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem::CVODE_ptr,nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem::CVODE_ptr,nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem::CVODE_ptr,eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem::CVODE_ptr,nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem::CVODE_ptr,nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::CVODE_ptr,nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem::CVODE_ptr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem::CVODE_ptr,nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem::CVODE_ptr,nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem::CVODE_ptr,eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem::CVODE_ptr,nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem::CVODE_ptr,steps::Int,interp::Int)
    ccall((:CVodeAdjInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem::CVODE_ptr)
    ccall((:CVodeAdjReInit,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeAdjFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeAdjFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeCreateB(cvode_mem::CVODE_ptr,lmmB::Int,iterB::Int,which::Ptr{Cint})
    ccall((:CVodeCreateB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem::CVODE_ptr,which::Int,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem::CVODE_ptr,which::Int,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem::CVODE_ptr,which::Int,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem::CVODE_ptr,which::Int,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem::CVODE_ptr,which::Int,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem::CVODE_ptr,which::Int,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem::CVODE_ptr,tBout::realtype,itaskB::Int)
    ccall((:CVodeB,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem::CVODE_ptr)
    ccall((:CVodeSetAdjNoSensi,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem::CVODE_ptr,which::Int,iterB::Int)
    ccall((:CVodeSetIterTypeB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem::CVODE_ptr,which::Int,user_dataB::Ptr{Void})
    ccall((:CVodeSetUserDataB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem::CVODE_ptr,which::Int,maxordB::Int)
    ccall((:CVodeSetMaxOrdB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem::CVODE_ptr,which::Int,mxstepsB::Int)
    ccall((:CVodeSetMaxNumStepsB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem::CVODE_ptr,which::Int,stldetB::Int)
    ccall((:CVodeSetStabLimDetB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem::CVODE_ptr,which::Int,hinB::realtype)
    ccall((:CVodeSetInitStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem::CVODE_ptr,which::Int,hminB::realtype)
    ccall((:CVodeSetMinStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem::CVODE_ptr,which::Int,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem::CVODE_ptr,which::Int,errconQB::Int)
    ccall((:CVodeSetQuadErrConB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem::CVODE_ptr,which::Int,tBret::Vector{realtype},yB::N_Vector)
    ccall((:CVodeGetB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem::CVODE_ptr,which::Int,tBret::Vector{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem::CVODE_ptr,which::Int)
    ccall((:CVodeGetAdjCVodeBmem,libsundials_cvode),Ptr{Void},(CVODE_ptr,Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem::CVODE_ptr,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem::CVODE_ptr,ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,libsundials_cvode),Cint,(CVODE_ptr,Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem::CVODE_ptr,which::Int,t::Vector{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem::CVODE_ptr,which::Int,t::Vector{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem::CVODE_ptr,addr::Vector{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Ptr{Void}}),cvode_mem,addr)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_direct.h
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

function CVDlsSetDenseJacFnB(cvode_mem::CVODE_ptr,which::Int,jacB::CVDlsDenseJacFnB)
    ccall((:CVDlsSetDenseJacFnB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVDlsDenseJacFnB),cvode_mem,which,jacB)
end

function CVDlsSetBandJacFnB(cvode_mem::CVODE_ptr,which::Int,jacB::CVDlsBandJacFnB)
    ccall((:CVDlsSetBandJacFnB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVDlsBandJacFnB),cvode_mem,which,jacB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spils.h
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

function CVSpilsSetPrecTypeB(cvode_mem::CVODE_ptr,which::Int,pretypeB::Int)
    ccall((:CVSpilsSetPrecTypeB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,pretypeB)
end

function CVSpilsSetGSTypeB(cvode_mem::CVODE_ptr,which::Int,gstypeB::Int)
    ccall((:CVSpilsSetGSTypeB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,gstypeB)
end

function CVSpilsSetEpslinB(cvode_mem::CVODE_ptr,which::Int,eplifacB::realtype)
    ccall((:CVSpilsSetEpslinB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,eplifacB)
end

function CVSpilsSetMaxlB(cvode_mem::CVODE_ptr,which::Int,maxlB::Int)
    ccall((:CVSpilsSetMaxlB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,maxlB)
end

function CVSpilsSetPreconditionerB(cvode_mem::CVODE_ptr,which::Int,psetB::CVSpilsPrecSetupFnB,psolveB::CVSpilsPrecSolveFnB)
    ccall((:CVSpilsSetPreconditionerB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVSpilsPrecSetupFnB,CVSpilsPrecSolveFnB),cvode_mem,which,psetB,psolveB)
end

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODE_ptr,which::Int,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_band.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBand(cvode_mem::CVODE_ptr,N::Int,mupper::Int,mlower::Int)
    ccall((:CVBand,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,Clong),cvode_mem,N,mupper,mlower)
end

function CVBandB(cvode_mem::CVODE_ptr,which::Int,nB::Int,mupperB::Int,mlowerB::Int)
    ccall((:CVBandB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,mupperB,mlowerB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bandpre.h
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

function CVBandPrecInitB(cvode_mem::CVODE_ptr,which::Int,nB::Int,muB::Int,mlB::Int)
    ccall((:CVBandPrecInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong,Clong,Clong),cvode_mem,which,nB,muB,mlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_bbdpre.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVBBDPrecInit(cvode_mem::CVODE_ptr,Nlocal::Int,mudq::Int,mldq::Int,mukeep::Int,mlkeep::Int,dqrely::realtype,gloc::CVLocalFn,cfn::CVCommFn)
    ccall((:CVBBDPrecInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFn,CVCommFn),cvode_mem,Nlocal,mudq,mldq,mukeep,mlkeep,dqrely,gloc,cfn)
end

function CVBBDPrecReInit(cvode_mem::CVODE_ptr,mudq::Int,mldq::Int,dqrely::realtype)
    ccall((:CVBBDPrecReInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Clong,realtype),cvode_mem,mudq,mldq,dqrely)
end

function CVBBDPrecGetWorkSpace(cvode_mem::CVODE_ptr,lenrwBBDP::Ptr{Clong},leniwBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetWorkSpace,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,lenrwBBDP,leniwBBDP)
end

function CVBBDPrecGetNumGfnEvals(cvode_mem::CVODE_ptr,ngevalsBBDP::Ptr{Clong})
    ccall((:CVBBDPrecGetNumGfnEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,ngevalsBBDP)
end

function CVBBDPrecInitB(cvode_mem::CVODE_ptr,which::Int,NlocalB::Int,mudqB::Int,mldqB::Int,mukeepB::Int,mlkeepB::Int,dqrelyB::realtype,glocB::CVLocalFnB,cfnB::CVCommFnB)
    ccall((:CVBBDPrecInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong,Clong,Clong,Clong,Clong,realtype,CVLocalFnB,CVCommFnB),cvode_mem,which,NlocalB,mudqB,mldqB,mukeepB,mlkeepB,dqrelyB,glocB,cfnB)
end

function CVBBDPrecReInitB(cvode_mem::CVODE_ptr,which::Int,mudqB::Int,mldqB::Int,dqrelyB::realtype)
    ccall((:CVBBDPrecReInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong,Clong,realtype),cvode_mem,which,mudqB,mldqB,dqrelyB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_dense.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVDense(cvode_mem::CVODE_ptr,N::Int)
    ccall((:CVDense,libsundials_cvode),Cint,(CVODE_ptr,Clong),cvode_mem,N)
end

function CVDenseB(cvode_mem::CVODE_ptr,which::Int,nB::Int)
    ccall((:CVDenseB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong),cvode_mem,which,nB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_diag.h
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

function CVDiagB(cvode_mem::CVODE_ptr,which::Int)
    ccall((:CVDiagB,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,which)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_impl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVodeSStolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::realtype)
    ccall((:CVodeSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,realtype),cvode_mem,reltol,abstol)
end

function CVodeSVtolerances(cvode_mem::CVODE_ptr,reltol::realtype,abstol::N_Vector)
    ccall((:CVodeSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,reltol,abstol)
end

function CVodeWFtolerances(cvode_mem::CVODE_ptr,efun::CVEwtFn)
    ccall((:CVodeWFtolerances,libsundials_cvode),Cint,(CVODE_ptr,CVEwtFn),cvode_mem,efun)
end

function CVodeQuadInit(cvode_mem::CVODE_ptr,fQ::CVQuadRhsFn,yQ0::N_Vector)
    ccall((:CVodeQuadInit,libsundials_cvode),Cint,(CVODE_ptr,CVQuadRhsFn,N_Vector),cvode_mem,fQ,yQ0)
end

function CVodeQuadReInit(cvode_mem::CVODE_ptr,yQ0::N_Vector)
    ccall((:CVodeQuadReInit,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,yQ0)
end

function CVodeQuadSStolerances(cvode_mem::CVODE_ptr,reltolQ::realtype,abstolQ::realtype)
    ccall((:CVodeQuadSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,realtype),cvode_mem,reltolQ,abstolQ)
end

function CVodeQuadSVtolerances(cvode_mem::CVODE_ptr,reltolQ::realtype,abstolQ::N_Vector)
    ccall((:CVodeQuadSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,reltolQ,abstolQ)
end

function CVodeSensInit(cvode_mem::CVODE_ptr,Ns::Int,ism::Int,fS::CVSensRhsFn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,CVSensRhsFn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS,yS0)
end

function CVodeSensInit1(cvode_mem::CVODE_ptr,Ns::Int,ism::Int,fS1::CVSensRhs1Fn,yS0::Ptr{N_Vector})
    ccall((:CVodeSensInit1,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,CVSensRhs1Fn,Ptr{N_Vector}),cvode_mem,Ns,ism,fS1,yS0)
end

function CVodeSensReInit(cvode_mem::CVODE_ptr,ism::Int,yS0::Ptr{N_Vector})
    ccall((:CVodeSensReInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{N_Vector}),cvode_mem,ism,yS0)
end

function CVodeSensSStolerances(cvode_mem::CVODE_ptr,reltolS::realtype,abstolS::Vector{realtype})
    ccall((:CVodeSensSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{realtype}),cvode_mem,reltolS,abstolS)
end

function CVodeSensSVtolerances(cvode_mem::CVODE_ptr,reltolS::realtype,abstolS::Ptr{N_Vector})
    ccall((:CVodeSensSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{N_Vector}),cvode_mem,reltolS,abstolS)
end

function CVodeSensEEtolerances(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensEEtolerances,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeQuadSensInit(cvode_mem::CVODE_ptr,fQS::CVQuadSensRhsFn,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensInit,libsundials_cvode),Cint,(CVODE_ptr,CVQuadSensRhsFn,Ptr{N_Vector}),cvode_mem,fQS,yQS0)
end

function CVodeQuadSensReInit(cvode_mem::CVODE_ptr,yQS0::Ptr{N_Vector})
    ccall((:CVodeQuadSensReInit,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,yQS0)
end

function CVodeQuadSensSStolerances(cvode_mem::CVODE_ptr,reltolQS::realtype,abstolQS::Vector{realtype})
    ccall((:CVodeQuadSensSStolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{realtype}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensSVtolerances(cvode_mem::CVODE_ptr,reltolQS::realtype,abstolQS::Ptr{N_Vector})
    ccall((:CVodeQuadSensSVtolerances,libsundials_cvode),Cint,(CVODE_ptr,realtype,Ptr{N_Vector}),cvode_mem,reltolQS,abstolQS)
end

function CVodeQuadSensEEtolerances(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadSensEEtolerances,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeRootInit(cvode_mem::CVODE_ptr,nrtfn::Int,g::CVRootFn)
    ccall((:CVodeRootInit,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRootFn),cvode_mem,nrtfn,g)
end

function CVodeFree(cvode_mem::Vector{CVODE_ptr})
    ccall((:CVodeFree,libsundials_cvode),Void,(Ptr{CVODE_ptr},),cvode_mem)
end

function CVodeQuadFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeSensFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeQuadSensFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeQuadSensFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
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

function CVodeSetQuadErrCon(cvode_mem::CVODE_ptr,errconQ::Int)
    ccall((:CVodeSetQuadErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconQ)
end

function CVodeSetSensDQMethod(cvode_mem::CVODE_ptr,DQtype::Int,DQrhomax::realtype)
    ccall((:CVodeSetSensDQMethod,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,DQtype,DQrhomax)
end

function CVodeSetSensErrCon(cvode_mem::CVODE_ptr,errconS::Int)
    ccall((:CVodeSetSensErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconS)
end

function CVodeSetSensMaxNonlinIters(cvode_mem::CVODE_ptr,maxcorS::Int)
    ccall((:CVodeSetSensMaxNonlinIters,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,maxcorS)
end

function CVodeSetSensParams(cvode_mem::CVODE_ptr,p::Vector{realtype},pbar::Vector{realtype},plist::Ptr{Cint})
    ccall((:CVodeSetSensParams,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{realtype},Ptr{Cint}),cvode_mem,p,pbar,plist)
end

function CVodeSetQuadSensErrCon(cvode_mem::CVODE_ptr,errconQS::Int)
    ccall((:CVodeSetQuadSensErrCon,libsundials_cvode),Cint,(CVODE_ptr,Cint),cvode_mem,errconQS)
end

function CVodeSensToggleOff(cvode_mem::CVODE_ptr)
    ccall((:CVodeSensToggleOff,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVode(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int)
    ccall((:CVode,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint),cvode_mem,tout,yout,tret,itask)
end

function CVodeGetDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetQuad(cvode_mem::CVODE_ptr,tret::Vector{realtype},yQout::N_Vector)
    ccall((:CVodeGetQuad,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},N_Vector),cvode_mem,tret,yQout)
end

function CVodeGetQuadDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dky::N_Vector)
    ccall((:CVodeGetQuadDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,N_Vector),cvode_mem,t,k,dky)
end

function CVodeGetSens(cvode_mem::CVODE_ptr,tret::Vector{realtype},ySout::Ptr{N_Vector})
    ccall((:CVodeGetSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,ySout)
end

function CVodeGetSens1(cvode_mem::CVODE_ptr,tret::Vector{realtype},is::Int,ySout::N_Vector)
    ccall((:CVodeGetSens1,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,ySout)
end

function CVodeGetSensDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dkyA::Ptr{N_Vector})
    ccall((:CVodeGetSensDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyA)
end

function CVodeGetSensDky1(cvode_mem::CVODE_ptr,t::realtype,k::Int,is::Int,dky::N_Vector)
    ccall((:CVodeGetSensDky1,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dky)
end

function CVodeGetQuadSens(cvode_mem::CVODE_ptr,tret::Vector{realtype},yQSout::Ptr{N_Vector})
    ccall((:CVodeGetQuadSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Ptr{N_Vector}),cvode_mem,tret,yQSout)
end

function CVodeGetQuadSens1(cvode_mem::CVODE_ptr,tret::Vector{realtype},is::Int,yQSout::N_Vector)
    ccall((:CVodeGetQuadSens1,libsundials_cvode),Cint,(CVODE_ptr,Ptr{realtype},Cint,N_Vector),cvode_mem,tret,is,yQSout)
end

function CVodeGetQuadSensDky(cvode_mem::CVODE_ptr,t::realtype,k::Int,dkyQS_all::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensDky,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Ptr{N_Vector}),cvode_mem,t,k,dkyQS_all)
end

function CVodeGetQuadSensDky1(cvode_mem::CVODE_ptr,t::realtype,k::Int,is::Int,dkyQS::N_Vector)
    ccall((:CVodeGetQuadSensDky1,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint,Cint,N_Vector),cvode_mem,t,k,is,dkyQS)
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

function CVodeGetQuadNumRhsEvals(cvode_mem::CVODE_ptr,nfQevals::Ptr{Clong})
    ccall((:CVodeGetQuadNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfQevals)
end

function CVodeGetQuadNumErrTestFails(cvode_mem::CVODE_ptr,nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nQetfails)
end

function CVodeGetQuadErrWeights(cvode_mem::CVODE_ptr,eQweight::N_Vector)
    ccall((:CVodeGetQuadErrWeights,libsundials_cvode),Cint,(CVODE_ptr,N_Vector),cvode_mem,eQweight)
end

function CVodeGetQuadStats(cvode_mem::CVODE_ptr,nfQevals::Ptr{Clong},nQetfails::Ptr{Clong})
    ccall((:CVodeGetQuadStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQevals,nQetfails)
end

function CVodeGetSensNumRhsEvals(cvode_mem::CVODE_ptr,nfSevals::Ptr{Clong})
    ccall((:CVodeGetSensNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfSevals)
end

function CVodeGetNumRhsEvalsSens(cvode_mem::CVODE_ptr,nfevalsS::Ptr{Clong})
    ccall((:CVodeGetNumRhsEvalsSens,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfevalsS)
end

function CVodeGetSensNumErrTestFails(cvode_mem::CVODE_ptr,nSetfails::Ptr{Clong})
    ccall((:CVodeGetSensNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSetfails)
end

function CVodeGetSensNumLinSolvSetups(cvode_mem::CVODE_ptr,nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensNumLinSolvSetups,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nlinsetupsS)
end

function CVodeGetSensErrWeights(cvode_mem::CVODE_ptr,eSweight::Ptr{N_Vector})
    ccall((:CVodeGetSensErrWeights,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,eSweight)
end

function CVodeGetSensStats(cvode_mem::CVODE_ptr,nfSevals::Ptr{Clong},nfevalsS::Ptr{Clong},nSetfails::Ptr{Clong},nlinsetupsS::Ptr{Clong})
    ccall((:CVodeGetSensStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong},Ptr{Clong},Ptr{Clong}),cvode_mem,nfSevals,nfevalsS,nSetfails,nlinsetupsS)
end

function CVodeGetSensNumNonlinSolvIters(cvode_mem::CVODE_ptr,nSniters::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSniters)
end

function CVodeGetSensNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSncfails)
end

function CVodeGetStgrSensNumNonlinSolvIters(cvode_mem::CVODE_ptr,nSTGR1niters::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvIters,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSTGR1niters)
end

function CVodeGetStgrSensNumNonlinSolvConvFails(cvode_mem::CVODE_ptr,nSTGR1ncfails::Ptr{Clong})
    ccall((:CVodeGetStgrSensNumNonlinSolvConvFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nSTGR1ncfails)
end

function CVodeGetSensNonlinSolvStats(cvode_mem::CVODE_ptr,nSniters::Ptr{Clong},nSncfails::Ptr{Clong})
    ccall((:CVodeGetSensNonlinSolvStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nSniters,nSncfails)
end

function CVodeGetQuadSensNumRhsEvals(cvode_mem::CVODE_ptr,nfQSevals::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumRhsEvals,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nfQSevals)
end

function CVodeGetQuadSensNumErrTestFails(cvode_mem::CVODE_ptr,nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensNumErrTestFails,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong}),cvode_mem,nQSetfails)
end

function CVodeGetQuadSensErrWeights(cvode_mem::CVODE_ptr,eQSweight::Ptr{N_Vector})
    ccall((:CVodeGetQuadSensErrWeights,libsundials_cvode),Cint,(CVODE_ptr,Ptr{N_Vector}),cvode_mem,eQSweight)
end

function CVodeGetQuadSensStats(cvode_mem::CVODE_ptr,nfQSevals::Ptr{Clong},nQSetfails::Ptr{Clong})
    ccall((:CVodeGetQuadSensStats,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Clong},Ptr{Clong}),cvode_mem,nfQSevals,nQSetfails)
end

function CVodeAdjInit(cvode_mem::CVODE_ptr,steps::Int,interp::Int)
    ccall((:CVodeAdjInit,libsundials_cvode),Cint,(CVODE_ptr,Clong,Cint),cvode_mem,steps,interp)
end

function CVodeAdjReInit(cvode_mem::CVODE_ptr)
    ccall((:CVodeAdjReInit,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeAdjFree(cvode_mem::CVODE_ptr)
    ccall((:CVodeAdjFree,libsundials_cvode),Void,(CVODE_ptr,),cvode_mem)
end

function CVodeCreateB(cvode_mem::CVODE_ptr,lmmB::Int,iterB::Int,which::Ptr{Cint})
    ccall((:CVodeCreateB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,Ptr{Cint}),cvode_mem,lmmB,iterB,which)
end

function CVodeInitB(cvode_mem::CVODE_ptr,which::Int,fB::CVRhsFnB,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRhsFnB,realtype,N_Vector),cvode_mem,which,fB,tB0,yB0)
end

function CVodeInitBS(cvode_mem::CVODE_ptr,which::Int,fBs::CVRhsFnBS,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeInitBS,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVRhsFnBS,realtype,N_Vector),cvode_mem,which,fBs,tB0,yB0)
end

function CVodeReInitB(cvode_mem::CVODE_ptr,which::Int,tB0::realtype,yB0::N_Vector)
    ccall((:CVodeReInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,tB0,yB0)
end

function CVodeSStolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolB::realtype,abstolB::realtype)
    ccall((:CVodeSStolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,realtype),cvode_mem,which,reltolB,abstolB)
end

function CVodeSVtolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolB::realtype,abstolB::N_Vector)
    ccall((:CVodeSVtolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,reltolB,abstolB)
end

function CVodeQuadInitB(cvode_mem::CVODE_ptr,which::Int,fQB::CVQuadRhsFnB,yQB0::N_Vector)
    ccall((:CVodeQuadInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVQuadRhsFnB,N_Vector),cvode_mem,which,fQB,yQB0)
end

function CVodeQuadInitBS(cvode_mem::CVODE_ptr,which::Int,fQBs::CVQuadRhsFnBS,yQB0::N_Vector)
    ccall((:CVodeQuadInitBS,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVQuadRhsFnBS,N_Vector),cvode_mem,which,fQBs,yQB0)
end

function CVodeQuadReInitB(cvode_mem::CVODE_ptr,which::Int,yQB0::N_Vector)
    ccall((:CVodeQuadReInitB,libsundials_cvode),Cint,(CVODE_ptr,Cint,N_Vector),cvode_mem,which,yQB0)
end

function CVodeQuadSStolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolQB::realtype,abstolQB::realtype)
    ccall((:CVodeQuadSStolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,realtype),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeQuadSVtolerancesB(cvode_mem::CVODE_ptr,which::Int,reltolQB::realtype,abstolQB::N_Vector)
    ccall((:CVodeQuadSVtolerancesB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype,N_Vector),cvode_mem,which,reltolQB,abstolQB)
end

function CVodeF(cvode_mem::CVODE_ptr,tout::realtype,yout::N_Vector,tret::Vector{realtype},itask::Int,ncheckPtr::Ptr{Cint})
    ccall((:CVodeF,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector,Ptr{realtype},Cint,Ptr{Cint}),cvode_mem,tout,yout,tret,itask,ncheckPtr)
end

function CVodeB(cvode_mem::CVODE_ptr,tBout::realtype,itaskB::Int)
    ccall((:CVodeB,libsundials_cvode),Cint,(CVODE_ptr,realtype,Cint),cvode_mem,tBout,itaskB)
end

function CVodeSetAdjNoSensi(cvode_mem::CVODE_ptr)
    ccall((:CVodeSetAdjNoSensi,libsundials_cvode),Cint,(CVODE_ptr,),cvode_mem)
end

function CVodeSetIterTypeB(cvode_mem::CVODE_ptr,which::Int,iterB::Int)
    ccall((:CVodeSetIterTypeB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,iterB)
end

function CVodeSetUserDataB(cvode_mem::CVODE_ptr,which::Int,user_dataB::Ptr{Void})
    ccall((:CVodeSetUserDataB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{Void}),cvode_mem,which,user_dataB)
end

function CVodeSetMaxOrdB(cvode_mem::CVODE_ptr,which::Int,maxordB::Int)
    ccall((:CVodeSetMaxOrdB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,maxordB)
end

function CVodeSetMaxNumStepsB(cvode_mem::CVODE_ptr,which::Int,mxstepsB::Int)
    ccall((:CVodeSetMaxNumStepsB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Clong),cvode_mem,which,mxstepsB)
end

function CVodeSetStabLimDetB(cvode_mem::CVODE_ptr,which::Int,stldetB::Int)
    ccall((:CVodeSetStabLimDetB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,stldetB)
end

function CVodeSetInitStepB(cvode_mem::CVODE_ptr,which::Int,hinB::realtype)
    ccall((:CVodeSetInitStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hinB)
end

function CVodeSetMinStepB(cvode_mem::CVODE_ptr,which::Int,hminB::realtype)
    ccall((:CVodeSetMinStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hminB)
end

function CVodeSetMaxStepB(cvode_mem::CVODE_ptr,which::Int,hmaxB::realtype)
    ccall((:CVodeSetMaxStepB,libsundials_cvode),Cint,(CVODE_ptr,Cint,realtype),cvode_mem,which,hmaxB)
end

function CVodeSetQuadErrConB(cvode_mem::CVODE_ptr,which::Int,errconQB::Int)
    ccall((:CVodeSetQuadErrConB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,which,errconQB)
end

function CVodeGetB(cvode_mem::CVODE_ptr,which::Int,tBret::Vector{realtype},yB::N_Vector)
    ccall((:CVodeGetB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,yB)
end

function CVodeGetQuadB(cvode_mem::CVODE_ptr,which::Int,tBret::Vector{realtype},qB::N_Vector)
    ccall((:CVodeGetQuadB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector),cvode_mem,which,tBret,qB)
end

function CVodeGetAdjCVodeBmem(cvode_mem::CVODE_ptr,which::Int)
    ccall((:CVodeGetAdjCVodeBmem,libsundials_cvode),Ptr{Void},(CVODE_ptr,Cint),cvode_mem,which)
end

function CVodeGetAdjY(cvode_mem::CVODE_ptr,t::realtype,y::N_Vector)
    ccall((:CVodeGetAdjY,libsundials_cvode),Cint,(CVODE_ptr,realtype,N_Vector),cvode_mem,t,y)
end

function CVodeGetAdjCheckPointsInfo(cvode_mem::CVODE_ptr,ckpnt::Ptr{CVadjCheckPointRec})
    ccall((:CVodeGetAdjCheckPointsInfo,libsundials_cvode),Cint,(CVODE_ptr,Ptr{CVadjCheckPointRec}),cvode_mem,ckpnt)
end

function CVodeGetAdjDataPointHermite(cvode_mem::CVODE_ptr,which::Int,t::Vector{realtype},y::N_Vector,yd::N_Vector)
    ccall((:CVodeGetAdjDataPointHermite,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},N_Vector,N_Vector),cvode_mem,which,t,y,yd)
end

function CVodeGetAdjDataPointPolynomial(cvode_mem::CVODE_ptr,which::Int,t::Vector{realtype},order::Ptr{Cint},y::N_Vector)
    ccall((:CVodeGetAdjDataPointPolynomial,libsundials_cvode),Cint,(CVODE_ptr,Cint,Ptr{realtype},Ptr{Cint},N_Vector),cvode_mem,which,t,order,y)
end

function CVodeGetAdjCurrentCheckPoint(cvode_mem::CVODE_ptr,addr::Vector{Ptr{Void}})
    ccall((:CVodeGetAdjCurrentCheckPoint,libsundials_cvode),Cint,(CVODE_ptr,Ptr{Ptr{Void}}),cvode_mem,addr)
end

function cvEwtSet(ycur::N_Vector,weight::N_Vector,data::Ptr{Void})
    ccall((:cvEwtSet,libsundials_cvode),Cint,(N_Vector,N_Vector,Ptr{Void}),ycur,weight,data)
end

function cvErrHandler(error_code::Int,_module::Ptr{UInt8},_function::Ptr{UInt8},msg::Ptr{UInt8},data::Ptr{Void})
    ccall((:cvErrHandler,libsundials_cvode),Void,(Cint,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),error_code,_module,_function,msg,data)
end

function cvSensRhsWrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,yScur::Ptr{N_Vector},fScur::Ptr{N_Vector},temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhsWrapper,libsundials_cvode),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},N_Vector,N_Vector),cv_mem,time,ycur,fcur,yScur,fScur,temp1,temp2)
end

function cvSensRhs1Wrapper(cv_mem::CVodeMem,time::realtype,ycur::N_Vector,fcur::N_Vector,is::Int,yScur::N_Vector,fScur::N_Vector,temp1::N_Vector,temp2::N_Vector)
    ccall((:cvSensRhs1Wrapper,libsundials_cvode),Cint,(CVodeMem,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,N_Vector,N_Vector),cv_mem,time,ycur,fcur,is,yScur,fScur,temp1,temp2)
end

function cvSensRhsInternalDQ(Ns::Int,t::realtype,y::N_Vector,ydot::N_Vector,yS::Ptr{N_Vector},ySdot::Ptr{N_Vector},fS_data::Ptr{Void},tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhsInternalDQ,libsundials_cvode),Cint,(Cint,realtype,N_Vector,N_Vector,Ptr{N_Vector},Ptr{N_Vector},Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,yS,ySdot,fS_data,tempv,ftemp)
end

function cvSensRhs1InternalDQ(Ns::Int,t::realtype,y::N_Vector,ydot::N_Vector,is::Int,yS::N_Vector,ySdot::N_Vector,fS_data::Ptr{Void},tempv::N_Vector,ftemp::N_Vector)
    ccall((:cvSensRhs1InternalDQ,libsundials_cvode),Cint,(Cint,realtype,N_Vector,N_Vector,Cint,N_Vector,N_Vector,Ptr{Void},N_Vector,N_Vector),Ns,t,y,ydot,is,yS,ySdot,fS_data,tempv,ftemp)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spbcgs.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpbcg(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSpbcg,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpbcgB(cvode_mem::CVODE_ptr,which::Int,pretypeB::Int,maxlB::Int)
    ccall((:CVSpbcgB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_spgmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpgmr(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSpgmr,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSpgmrB(cvode_mem::CVODE_ptr,which::Int,pretypeB::Int,maxlB::Int)
    ccall((:CVSpgmrB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end
# Julia wrapper for header: /Users/jgoldfar/.julia/v0.4/Sundials/deps/usr/include/cvodes/cvodes_sptfqmr.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function CVSpilsSetJacTimesVecFnB(cvode_mem::CVODE_ptr,which::Int,jtvB::CVSpilsJacTimesVecFnB)
    ccall((:CVSpilsSetJacTimesVecFnB,libsundials_cvode),Cint,(CVODE_ptr,Cint,CVSpilsJacTimesVecFnB),cvode_mem,which,jtvB)
end

function CVSptfqmr(cvode_mem::CVODE_ptr,pretype::Int,maxl::Int)
    ccall((:CVSptfqmr,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint),cvode_mem,pretype,maxl)
end

function CVSptfqmrB(cvode_mem::CVODE_ptr,which::Int,pretypeB::Int,maxlB::Int)
    ccall((:CVSptfqmrB,libsundials_cvode),Cint,(CVODE_ptr,Cint,Cint,Cint),cvode_mem,which,pretypeB,maxlB)
end

(* ::Package:: *)

r0 = {(Ie0 Jii-Jei Ii0)/(2 Jei Jie - 2 Jee Jii),(Ie0 Jie-Jee Ii0)/(2 Jei Jie-2 Jee Jii)} ; (* Baseline Rates *)

\[CapitalGamma]max[\[Sigma]0_] = -(((Ii0 Jei-Ie0 Jii) Sqrt[2 \[Pi]] \[Sigma]0^2)/(Jei (\[Lambda]e^2+\[Sigma]0^2))) ; (* norm. to \[Sigma]0 *)

Iext[x_,\[CapitalGamma]0_,\[Sigma]0_] = {Ie0, Ii0 + \[CapitalGamma]0 /Sqrt[2 Pi] Exp[-x x/(2 \[Sigma]0^2 )]} ; (* here \[CapitalGamma]0 is power not intensity I0 = \[CapitalGamma]0/\[Sigma]0*)

d2Iext[x_,\[CapitalGamma]0_,\[Sigma]0_] = D[D[Iext[x,\[CapitalGamma]0,\[Sigma]0],x],x] ;

\[CapitalLambda] = { {\[Lambda]e,0}, {0,\[Lambda]i} } ;
J = { {Jee,-Jei}, {Jie,-Jii}} ;


(*rPos[x_,\[CapitalGamma]0_,\[Sigma]0_] = Simplify[ 1/2 ( \[CapitalLambda]^2 . Inverse[J] . d2Iext[x,\[CapitalGamma]0,\[Sigma]0] - Inverse[J] . Iext[x,\[CapitalGamma]0,\[Sigma]0] ), \[Sigma]0>0 ] *)


threshLin[x_] := HeavisideTheta[x] x ;


rPos[x_,\[CapitalGamma]0_,\[Sigma]0_] := {(-2 Ii0 Jei+2 Ie0 Jii+(E^(-(x^2/(2 \[Sigma]0^2))) Jei Sqrt[2/\[Pi]] \[CapitalGamma]0 (x^2 \[Lambda]e^2-\[Sigma]0^2 (\[Lambda]e^2+\[Sigma]0^2)))/\[Sigma]0^4)/(4 (Jei Jie-Jee Jii)),(-2 Ii0 Jee+2 Ie0 Jie+(E^(-(x^2/(2 \[Sigma]0^2))) Jee Sqrt[2/\[Pi]] \[CapitalGamma]0 (x^2 \[Lambda]i^2-\[Sigma]0^2 (\[Lambda]i^2+\[Sigma]0^2)))/\[Sigma]0^4)/(4 (Jei Jie-Jee Jii))}


(*rNeg[x_,xc_,\[CapitalGamma]0_,\[Sigma]0_] = Simplify[ {0, \[Lambda]i^2/2/Jii ( Part[Iext[x,\[CapitalGamma]0,\[Sigma]0],2]/\[Lambda]i^2 
									- Part[d2Iext[x,\[CapitalGamma]0,\[Sigma]0],2] 
									+ 2 Jie/\[Lambda]e (1/\[Lambda]i^2-1/\[Lambda]e^2) Cosh[x/\[Lambda]e] 
									Integrate[Exp[-y/\[Lambda]e] Part[rPos[y,\[CapitalGamma]0,\[Sigma]0],1],
									{y,xc,Infinity}] ) }, \[Sigma]0>0] *)


(* ::InheritFromParent:: *)
(**)


rNeg[x_,xc_,\[CapitalGamma]0_,\[Sigma]0_] := {0, 1/(2 Jii) \[Lambda]i^2 ((Ii0+(E^(-(x^2/(2 \[Sigma]0^2))) \[CapitalGamma]0)/Sqrt[2 \[Pi]])/\[Lambda]i^2-(E^(-(x^2/(2 \[Sigma]0^2))) x^2 \[CapitalGamma]0)/(Sqrt[2 \[Pi]] \[Sigma]0^4)+(E^(-(x^2/(2 \[Sigma]0^2))) \[CapitalGamma]0)/(Sqrt[2 \[Pi]] \[Sigma]0^2)+(E^(-(xc/\[Lambda]e)-xc^2/(2 \[Sigma]0^2)) Jie \[Lambda]e (\[Lambda]e^2-\[Lambda]i^2) ((xc \[Lambda]e+\[Sigma]0^2)^2/\[Lambda]e^2)^(3/2) Cosh[x/\[Lambda]e] (2 E^(xc^2/(2 \[Sigma]0^2)) Ie0 Jii Sqrt[\[Pi]] \[Lambda]e \[Sigma]0^2 Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2] Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2/\[Lambda]e^2]+Jei (Sqrt[2] xc^3 \[CapitalGamma]0 \[Lambda]e^3+3 Sqrt[2] xc^2 \[CapitalGamma]0 \[Lambda]e^2 \[Sigma]0^2+3 Sqrt[2] xc \[CapitalGamma]0 \[Lambda]e \[Sigma]0^4+\[Sigma]0^2 (-2 E^(xc^2/(2 \[Sigma]0^2)) Ii0 Sqrt[\[Pi]] \[Lambda]e Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2] Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2/\[Lambda]e^2]+Sqrt[2] \[CapitalGamma]0 (\[Sigma]0^4-2 \[Lambda]e Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2] Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2/\[Lambda]e^2])))+E^((xc \[Lambda]e+\[Sigma]0^2)^2/(2 \[Lambda]e^2 \[Sigma]0^2)) Jei Sqrt[\[Pi]] \[CapitalGamma]0 \[Lambda]e \[Sigma]0 (xc \[Lambda]e+\[Sigma]0^2) (-Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2]+\[Lambda]e Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2/\[Lambda]e^2]) Erf[Sqrt[(xc \[Lambda]e+\[Sigma]0^2)^2]/(Sqrt[2] \[Lambda]e \[Sigma]0)]))/(2 (Jei Jie-Jee Jii) Sqrt[\[Pi]] \[Lambda]i^2 \[Sigma]0^2 ((xc \[Lambda]e+\[Sigma]0^2)^2)^(5/2)))};

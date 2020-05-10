(* ::Package:: *)

profileToFile[r] := (
	data = Table[{x,Part[r[x],1]/r0[[1]],Part[r[x],2]/r0[[2]]},{x,0,L/2,.01}] ;
	file = StringJoin[{mypath,"/Profile_Cff_",ToString[NumberForm[\[Sigma]0,{4,4}]],"_G0_",ToString[NumberForm[\[CapitalGamma]0,{4,4}]],".dat"}] 
	Export[file, data, "Table"] ;
)

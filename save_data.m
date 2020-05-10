(* ::Package:: *)

save_data()
fileName = StringJoin[{mypath,"/rEVsG0_x0_",ToString[NumberForm[x0,{4,4}]],"_Cff_",ToString[NumberForm[\[Sigma]0,{4,4}]],".dat"}] 
Export[fileName,datarE,"Table"] ;

(* ::Package:: *)

xcVs\[CapitalGamma]0 := (
	xcList = {} ;
	For[l=1,l<=Length[\[CapitalGamma]0List],l++,
		\[CapitalGamma]0 = \[CapitalGamma]0List[[l]] ; 
		AppendTo[xcList,Chop[xcI[\[CapitalGamma]0,\[Sigma]0]]] ; 
	] ;
)


xcVs\[CapitalGamma]0Int := (
	xcList = {} ;
	For[l=1,l<=Length[\[CapitalGamma]0List],l++,
		\[CapitalGamma]0 = \[CapitalGamma]0List[[l]] ; 
		AppendTo[xcList,Chop[xcI[\[CapitalGamma]0/\[Sigma]0,\[Sigma]0]]] ; 
	] ;
)


xcVs\[Sigma]0 := (
	xcList = {} ;
	For[l=1,l<=Length[\[Sigma]0List],l++,
		\[Sigma]0 = \[Sigma]0List[[l]] ; 
		AppendTo[xcList,Chop[xcI[\[CapitalGamma]0,\[Sigma]0]]] ; 
	] ;
)


xcVs\[Sigma]0Int := (
	xcList = {} ;
	For[l=1,l<=Length[\[Sigma]0List],l++,
		\[Sigma]0 = \[Sigma]0List[[l]] ; 
		AppendTo[xcList,Chop[xcI[\[CapitalGamma]0/\[Sigma]0,\[Sigma]0]]] ; 
	] ;
)

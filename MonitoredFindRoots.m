(* ::Package:: *)

SetOptions[ Plot,
			AxesOrigin -> {0, 0},
			Frame -> {{True, False}, {True, False}},
		    PlotStyle->{Red,Blue},
		    PlotRange->All
			];
			
monitoredFindRoot[args__] := Module[{s = 0, e = 0, j = 0},
{FindRoot[args, StepMonitor :> s++, EvaluationMonitor :> e++, 
Jacobian -> {Automatic, EvaluationMonitor :> j++}], "Steps" -> s, 
"Evaluations" -> e, "Jacobian Evaluations" -> j}]
linearmesh[a_, b_, n_Integer /; n > 1] := Range[a, b, (b - a)/(n - 1)] ;

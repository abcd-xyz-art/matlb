Name      = tipper
      Type      = mamdani
      NumInputs = 2
      InLabels  = servicefood
      NumOutputs = 1
      OutLabels=tip
      NumRules = 3
      AndMethod = min
      OrMethod = max
      ImpMethod = min
      AggMethod = max
      DefuzzMethod = centroid
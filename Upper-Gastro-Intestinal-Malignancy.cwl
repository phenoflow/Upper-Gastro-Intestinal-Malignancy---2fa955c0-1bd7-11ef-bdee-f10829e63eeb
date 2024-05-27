cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  upper-gastro-intestinal-malignancy-unspecified---primary:
    run: upper-gastro-intestinal-malignancy-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  upper-gastro-intestinal-malignancy-lesion---primary:
    run: upper-gastro-intestinal-malignancy-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-unspecified---primary/output
  upper-gastro-intestinal-malignancy-oesophagu---primary:
    run: upper-gastro-intestinal-malignancy-oesophagu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-lesion---primary/output
  upper-gastro-intestinal-malignancy-stomach---primary:
    run: upper-gastro-intestinal-malignancy-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-oesophagu---primary/output
  upper-gastro-intestinal-malignancy-carcinoma---primary:
    run: upper-gastro-intestinal-malignancy-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-stomach---primary/output
  upper-gastro-intestinal-malignancy-[m]linitisplastica---primary:
    run: upper-gastro-intestinal-malignancy-[m]linitisplastica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-carcinoma---primary/output
  upper-gastro-intestinal-malignancy-pylorus---primary:
    run: upper-gastro-intestinal-malignancy-pylorus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-[m]linitisplastica---primary/output
  upper-gastro-intestinal-malignancy-junction---primary:
    run: upper-gastro-intestinal-malignancy-junction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-pylorus---primary/output
  pyloric-upper-gastro-intestinal-malignancy---primary:
    run: pyloric-upper-gastro-intestinal-malignancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-junction---primary/output
  upper-gastro-intestinal-malignancy-cardia---primary:
    run: upper-gastro-intestinal-malignancy-cardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: pyloric-upper-gastro-intestinal-malignancy---primary/output
  upper-gastro-intestinal-malignancy-third---primary:
    run: upper-gastro-intestinal-malignancy-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-cardia---primary/output
  upper-gastro-intestinal-malignancy-mgastrinoma---primary:
    run: upper-gastro-intestinal-malignancy-mgastrinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-third---primary/output
  upper-gastro-intestinal-malignancy-neoplasm---primary:
    run: upper-gastro-intestinal-malignancy-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-mgastrinoma---primary/output
  upper-gastro-intestinal-malignancy---primary:
    run: upper-gastro-intestinal-malignancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy-neoplasm---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: upper-gastro-intestinal-malignancy---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

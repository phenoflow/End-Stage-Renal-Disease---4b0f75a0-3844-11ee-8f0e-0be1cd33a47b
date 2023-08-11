cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  recipient-end-stage-renal-disease-esrd---primary:
    run: recipient-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  end-stage-renal-disease-esrd-haemodialysis---primary:
    run: end-stage-renal-disease-esrd-haemodialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: recipient-end-stage-renal-disease-esrd---primary/output
  chronic-end-stage-renal-disease-esrd---primary:
    run: chronic-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-haemodialysis---primary/output
  end-stage-renal-disease-esrd-proteinuria---primary:
    run: end-stage-renal-disease-esrd-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chronic-end-stage-renal-disease-esrd---primary/output
  end-stage-renal-disease-esrd-level---primary:
    run: end-stage-renal-disease-esrd-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-proteinuria---primary/output
  end-stage-renal-disease-esrd-allotransplantation---primary:
    run: end-stage-renal-disease-esrd-allotransplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-level---primary/output
  end-stage-renal-disease-esrd-shunt---primary:
    run: end-stage-renal-disease-esrd-shunt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-allotransplantation---primary/output
  end-stage-renal-disease-esrd-insertion---primary:
    run: end-stage-renal-disease-esrd-insertion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-shunt---primary/output
  end-stage-renal-disease-esrd-creation---primary:
    run: end-stage-renal-disease-esrd-creation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-insertion---primary/output
  end-stage-renal-disease-esrd-removal---primary:
    run: end-stage-renal-disease-esrd-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-creation---primary/output
  end-stage-renal-disease-esrd-fistula---primary:
    run: end-stage-renal-disease-esrd-fistula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-removal---primary/output
  end-stage-renal-disease-esrd-graft---primary:
    run: end-stage-renal-disease-esrd-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-fistula---primary/output
  end-stage-renal-disease-esrd-specified---primary:
    run: end-stage-renal-disease-esrd-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-graft---primary/output
  end-stage-renal-disease-esrd-stenosis---primary:
    run: end-stage-renal-disease-esrd-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-specified---primary/output
  end-stage-renal-disease-esrd-acquired---primary:
    run: end-stage-renal-disease-esrd-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-stenosis---primary/output
  end-stage-renal-disease-esrd-ligation---primary:
    run: end-stage-renal-disease-esrd-ligation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-acquired---primary/output
  end-stage-renal-disease-esrd-donor---primary:
    run: end-stage-renal-disease-esrd-donor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-ligation---primary/output
  end-stage-renal-disease-esrd-cadaver---primary:
    run: end-stage-renal-disease-esrd-cadaver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-donor---primary/output
  end-stage-renal-disease-esrd-transplanted---primary:
    run: end-stage-renal-disease-esrd-transplanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-cadaver---primary/output
  end-stage-renal-disease-esrd-intervention---primary:
    run: end-stage-renal-disease-esrd-intervention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-transplanted---primary/output
  end-stage-renal-disease-esrd-compensate---primary:
    run: end-stage-renal-disease-esrd-compensate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-intervention---primary/output
  vascular-end-stage-renal-disease-esrd---primary:
    run: vascular-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-compensate---primary/output
  end-stage-renal-disease-esrd-haemofiltration---primary:
    run: end-stage-renal-disease-esrd-haemofiltration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: vascular-end-stage-renal-disease-esrd---primary/output
  continuous-end-stage-renal-disease-esrd---primary:
    run: continuous-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-haemofiltration---primary/output
  end-stage-renal-disease-esrd-catheter---primary:
    run: end-stage-renal-disease-esrd-catheter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: continuous-end-stage-renal-disease-esrd---primary/output
  end-stage-renal-disease-esrd-access---primary:
    run: end-stage-renal-disease-esrd-access---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-catheter---primary/output
  end-stage-renal-disease-esrd-aneurysm---primary:
    run: end-stage-renal-disease-esrd-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-access---primary/output
  end-stage-renal-disease-esrd-thrombosis---primary:
    run: end-stage-renal-disease-esrd-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-aneurysm---primary/output
  end-stage-renal-disease-esrd-occlusion---primary:
    run: end-stage-renal-disease-esrd-occlusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-thrombosis---primary/output
  end-stage-renal-disease-esrd-failure---primary:
    run: end-stage-renal-disease-esrd-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-occlusion---primary/output
  tubulointerstitial-end-stage-renal-disease-esrd---primary:
    run: tubulointerstitial-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-failure---primary/output
  renal---primary:
    run: renal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: tubulointerstitial-end-stage-renal-disease-esrd---primary/output
  mechanical-end-stage-renal-disease-esrd---primary:
    run: mechanical-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: renal---primary/output
  endstage-renal-disease-esrd---primary:
    run: endstage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: mechanical-end-stage-renal-disease-esrd---primary/output
  end-stage-renal-disease-esrd-precaution---primary:
    run: end-stage-renal-disease-esrd-precaution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: endstage-renal-disease-esrd---primary/output
  end-stage-renal-disease-esrd-blame---primary:
    run: end-stage-renal-disease-esrd-blame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-precaution---primary/output
  end-stage-renal-disease-esrd-training---primary:
    run: end-stage-renal-disease-esrd-training---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-blame---primary/output
  end-stage-renal-disease-esrd-vaftercare---primary:
    run: end-stage-renal-disease-esrd-vaftercare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-training---primary/output
  intermittent-end-stage-renal-disease-esrd---primary:
    run: intermittent-end-stage-renal-disease-esrd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-vaftercare---primary/output
  endstage-renal-disease-esrd---secondary:
    run: endstage-renal-disease-esrd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: intermittent-end-stage-renal-disease-esrd---primary/output
  end-stage-renal-disease-esrd-rejection---secondary:
    run: end-stage-renal-disease-esrd-rejection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: endstage-renal-disease-esrd---secondary/output
  end-stage-renal-disease-esrd-kidney---secondary:
    run: end-stage-renal-disease-esrd-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-rejection---secondary/output
  end-stage-renal-disease-esrd-dialysis---secondary:
    run: end-stage-renal-disease-esrd-dialysis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-kidney---secondary/output
  end-stage-renal-disease-esrd-perfusion---secondary:
    run: end-stage-renal-disease-esrd-perfusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-dialysis---secondary/output
  other-end-stage-renal-disease-esrd---secondary:
    run: other-end-stage-renal-disease-esrd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-perfusion---secondary/output
  end-stage-renal-disease-esrd-transplant---secondary:
    run: end-stage-renal-disease-esrd-transplant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: other-end-stage-renal-disease-esrd---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-esrd-transplant---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
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

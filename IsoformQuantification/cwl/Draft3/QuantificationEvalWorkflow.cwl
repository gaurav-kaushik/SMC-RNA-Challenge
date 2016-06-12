#!/usr/bin/env cwl-runner
#
# Authors: Thomas Yu, Ryan Spangler, Kyle Ellrott

class: Workflow

cwlVersion: "draft-3"

description: "Isoform Quantification Validator/Evaluator workflow"

inputs: 

  - id: truth
    type: File
  
  - id: input
    type: File

  - id: gtf
    type: File

outputs:

  - id: OUTPUT
    type: ["null",File]
    source: "#evaluator/output"

steps:

  - id: evaluator
    run: QuantificationEvaluator.cwl
    inputs:
    - {id: truth, source: "#truth"}
    - {id: input, source: "#input"}
    - {id: gtf, source: "#gtf"}
    outputs:
    - {id: output}
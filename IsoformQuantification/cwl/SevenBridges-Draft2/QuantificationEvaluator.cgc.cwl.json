{
  "class": "CommandLineTool",
  "id": "https://cgc-api.sbgenomics.com/v2/apps/gauravCGC/dream-project/quantificationevaluator/2/raw/",
  "description": "Isoform quantification evaluator and validator",
  "label": "QuantificationEvaluator",
  "inputs": [
    {
      "type": [
        "File"
      ],
      "sbg:fileTypes": "TRUTH",
      "description": "Use isoform.truth for DREAM evaluation",
      "id": "#truth",
      "sbg:category": "Evaluate",
      "inputBinding": {
        "separate": true,
        "position": 1,
        "prefix": "--truth",
        "sbg:cmdInclude": true
      }
    },
    {
      "id": "#input",
      "sbg:fileTypes": "ISOFORM",
      "inputBinding": {
        "separate": true,
        "position": 1,
        "prefix": "--input",
        "sbg:cmdInclude": true
      },
      "type": [
        "File"
      ],
      "description": "results.isoform"
    },
    {
      "type": [
        "File"
      ],
      "sbg:toolDefaultValue": "TXT",
      "inputBinding": {
        "separate": true,
        "position": 1,
        "prefix": "--gtf",
        "sbg:cmdInclude": true
      },
      "description": "Use Homo_sapiens.GRCh37.75.gtf for DREAM Evaluation",
      "id": "#gtf",
      "sbg:category": "Evaluate",
      "sbg:fileTypes": "GTF"
    }
  ],
  "outputs": [
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#output",
      "outputBinding": {
        "glob": "result.out"
      }
    }
  ],
  "hints": [
    {
      "class": "sbg:CPURequirement",
      "value": 1
    },
    {
      "class": "sbg:MemRequirement",
      "value": 1000
    },
    {
      "dockerImageId": "",
      "class": "DockerRequirement",
      "dockerPull": "dreamchallenge/smcrna-functions"
    }
  ],
  "baseCommand": ["evaluation.py", "evaluateIsoformQuant"],
  "stdout": "",
  "stdin": "",
  "arguments": [],
  "requirements": [],
  "successCodes": [],
  "temporaryFailCodes": [],
  "sbg:modifiedBy": "gauravCGC",
  "sbg:project": "gauravCGC/dream-project",
  "sbg:categories": ["DREAM"],
  "sbg:id": "gauravCGC/dream-project/quantificationevaluator/0",
  "sbg:contributors": ["gauravCGC"],
  "sbg:toolkit": "DREAM",
  "sbg:cmdPreview": "evaluation.py evaluateIsoformQuant --truth /path/to/truth.ext --input /path/to/input.ext --gtf /path/to/gtf.ext"
}
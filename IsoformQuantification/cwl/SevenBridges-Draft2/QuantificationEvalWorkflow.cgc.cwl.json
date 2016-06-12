
{
  "class": "Workflow",
  "description": "Isoform Quantification Validator/Evaluator workflow",
  "label": "QuantificationEvalWorkflow",
  "id": "https://cgc-api.sbgenomics.com/v2/apps/gauravCGC/dream-project/quantificationevalworkflow/2/raw/",
  "sbg:toolAuthor": "Thomas Yu, Ryan Spangler, Kyle Ellrott",
  "sbg:categories": ["DREAM"],
  "sbg:contributors": ["gauravCGC"],
  "sbg:toolkit": "DREAM",
  "sbg:project": "gauravCGC/dream-project",
  "requirements": [],
  "hints": [],
  "inputs": [
    {
      "label": "gtf",
      "sbg:y": 403.99652099609375,
      "type": [
        "File"
      ],
      "sbg:x": 101,
      "id": "#gtf",
      "sbg:fileTypes": "GTF"
    },
    {
      "label": "input",
      "sbg:y": 273.99652099609375,
      "type": [
        "File"
      ],
      "sbg:x": 120,
      "id": "#input",
      "sbg:fileTypes": "ISOFORM"
    },
    {
      "label": "truth",
      "sbg:y": 142.9965057373047,
      "type": [
        "File"
      ],
      "sbg:x": 86,
      "id": "#truth",
      "sbg:fileTypes": "TRUTH"
    }
  ],
  "outputs": [
    {
      "id": "#output",
      "label": "output",
      "sbg:y": 270.99652099609375,
      "type": [
        "null",
        "File"
      ],
      "sbg:x": 479,
      "source": [
        "#QuantificationEvaluator.output"
      ],
      "sbg:includeInPorts": true,
      "required": false
    }
  ],
  "steps": [
    {
      "sbg:y": 272.28472900390625,
      "sbg:x": 315,
      "outputs": [
        {
          "id": "#QuantificationEvaluator.output"
        }
      ],
      "inputs": [
        {
          "id": "#QuantificationEvaluator.truth",
          "source": [
            "#truth"
          ]
        },
        {
          "id": "#QuantificationEvaluator.input",
          "source": [
            "#input"
          ]
        },
        {
          "id": "#QuantificationEvaluator.gtf",
          "source": [
            "#gtf"
          ]
        }
      ],
      "id": "#QuantificationEvaluator",
      "run": {
        "stdout": "",
        "sbg:modifiedBy": "gauravCGC",
        "class": "CommandLineTool",
        "stdin": "",
        "sbg:categories": [
          "DREAM"
        ],
        "successCodes": [],
        "sbg:id": "gauravCGC/dream-project/quantificationevaluator/2",
        "id": "https://cgc-api.sbgenomics.com/v2/apps/gauravCGC/dream-project/quantificationevaluator/2/raw/",
        "sbg:sbgMaintained": false,
        "sbg:contributors": [
          "gauravCGC"
        ],
        "sbg:cmdPreview": "evaluation.py evaluateIsoformQuant --truth /path/to/truth.ext --input /path/to/input.ext --gtf /path/to/gtf.ext",
        "requirements": [],
        "baseCommand": [
          "evaluation.py",
          "evaluateIsoformQuant"
        ],
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
            "inputBinding": {
              "separate": true,
              "position": 1,
              "prefix": "--input",
              "sbg:cmdInclude": true
            },
            "description": "results.isoform",
            "type": [
              "File"
            ],
            "sbg:fileTypes": "ISOFORM"
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
        "sbg:job": {
          "inputs": {
            "truth": {
              "path": "/path/to/truth.ext",
              "size": 0,
              "class": "File",
              "secondaryFiles": []
            },
            "input": {
              "path": "/path/to/input.ext",
              "size": 0,
              "class": "File",
              "secondaryFiles": []
            },
            "gtf": {
              "path": "/path/to/gtf.ext",
              "size": 0,
              "class": "File",
              "secondaryFiles": []
            }
          },
          "allocatedResources": {
            "mem": 1000,
            "cpu": 1
          }
        },
        "sbg:toolkit": "DREAM",
        "sbg:project": "gauravCGC/dream-project",
        "label": "QuantificationEvaluator",
        "arguments": [],
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
        "description": "Isoform quantification evaluator and validator",
        "temporaryFailCodes": []
      }
    }
  ],
}

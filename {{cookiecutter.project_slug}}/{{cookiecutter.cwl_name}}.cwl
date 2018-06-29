#!/usr/bin/env cwl-runner
cwlVersion: {{ cookiecutter.cwl_version }}
class: CommandLineTool
baseCommand: []

requirements:
  - class: DockerRequirement
    dockerPull: {{ cookiecutter.dockerhub_organization }}/{{ cookiecutter.project_slug }}

inputs:

outputs:

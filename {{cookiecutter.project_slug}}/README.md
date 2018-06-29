# {{ cookiecutter.project_name }}

Docker container and [CWL specification](http://www.commonwl.org/) to use [{{ cookiecutter.tool_name }}]({{ cookiecutter.tool_url }}).

To use this tool, do:

```python
from nlppln import WorkflowGenerator

with WorkflowGenerator() as wf:
	wf.load(step_file='https://raw.githubusercontent.com/{{ cookiecutter.github_organization }}/{{ cookiecutter.project_slug }}/master/{{ cwl_name }}.cwl')

	# add workflow inputs
	# add data processing steps

	out_file = wf.{{ cookiecutter.cwl_name }}(<inp=inp>)

	# add more processing tools
	# add workflow outputs
	# save workflow to file
```

# {{ cookiecutter.project_name }}

**Please note that the Dockerfile is an example and should still be adapted to
the current use case.** Carefully check installed software, script names and
Python versions, etc.

After making the required changes to {{ cookiecutter.cwl_name }}, the
Dockerfile, and adding necessary additional files, build the Docker container
by doing:
```bash
docker build -t {{ cookiecutter.dockerhub_organization }}/{{ cookiecutter.project_slug }} .
```

To test your cwl command line tool, type:
```bash
cwltool {{ cookiecutter.cwl_name }} <inputs>
```

---

Docker container and [CWL specification](http://www.commonwl.org/) to use [{{ cookiecutter.tool_name }}]({{ cookiecutter.tool_url }}).

To be able to use this tool in nlppln, do:

```python
from nlppln import WorkflowGenerator

with WorkflowGenerator() as wf:
	wf.load(step_file='https://raw.githubusercontent.com/{{ cookiecutter.github_organization }}/{{ cookiecutter.project_slug }}/master/{{ cookiecutter.cwl_name }}')

	# add workflow inputs
	# add data processing steps

	out_file = wf.{{ cookiecutter.cwl_name }}(<inp=inp>)

	# add more processing tools
	# add workflow outputs
	# save workflow to file
```

uv venv .venv_cpu
source .venv_cpu/bin/activate 
export UV_PROJECT_ENVIRONMENT=.venv_cpu
uv sync --extra cpu 

deactivate uv

uv venv .venv_gpu
export UV_PROJECT_ENVIRONMENT=.venv_gpu
source .venv_gpu/bin/activate 
uv sync --extra gpu 

unset UV_PROJECT_ENVIRONMENT
# rm -rf .venv*
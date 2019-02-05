$repo = 'melanore/fable-build'

& docker build . -t "${repo}:latest"
& docker push "${repo}:latest"
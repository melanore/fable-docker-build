$repo = 'melanore/fable-build'
$aspnet_version = '2.2'
$mono_version = '5.14.0.177'
$node_version = '10.9.0'
$yarn_version = '1.9.4'

$tag = "stretch-aspnet-${aspnet_version}-mono-${mono_version}-node-${node_version}-yarn-${yarn_version}"
$altTag = "stretch-aspnet-${aspnet_version}-node-${node_version}"
$shortTag = "stretch"

& docker build --no-cache . -t "${repo}:latest"
& docker push "${repo}:latest"

& docker tag "${repo}:latest" "${repo}:${tag}"
& docker push "${repo}:${tag}"

& docker tag "${repo}:latest" "${repo}:${altTag}"
& docker push "${repo}:${altTag}"

& docker tag "${repo}:latest" "${repo}:${shortTag}"
& docker push "${repo}:${shortTag}"
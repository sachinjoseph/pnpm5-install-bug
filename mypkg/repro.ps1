echo "Setting up repro"
rimraf .\node_modules .\pnpm-lock.yaml 
pnpm install --store D:\.pnpm-store --no-prefer-frozen-lockfile --strict-peer-dependencies
ls .\node_modules\typescript # directory exists

Write-Host

echo "Running repro"
rimraf .\node_modules
pnpm install --store D:\.pnpm-store --no-prefer-frozen-lockfile --strict-peer-dependencies
ls .\node_modules\typescript # directory doesn't exist
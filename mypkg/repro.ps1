echo "Setting up repro"
rimraf .\node_modules .\pnpm-lock.yaml # install without lockfile present
pnpm install --store D:\.pnpm-store --no-prefer-frozen-lockfile --strict-peer-dependencies
ls .\node_modules\typescript # directory exists, yay!

Write-Host

echo "Running repro"
rimraf .\node_modules # install with lockfile generated above
pnpm install --store D:\.pnpm-store --no-prefer-frozen-lockfile --strict-peer-dependencies
ls .\node_modules\typescript # directory doesn't exist :(
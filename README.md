# Snitch Homebrew Tap (sunset)

The Snitch CLI is no longer distributed via Homebrew.

Install from the private npm registry instead:

```bash
# 1. Get your registry token at https://snitchplugin.com/dashboard/npm-token
# 2. Add to ~/.npmrc:
#      @snitchplugin:registry=https://npm.snitchplugin.com
#      //npm.snitchplugin.com/:_authToken=YOUR_TOKEN
# 3. Install:
npm install -g @snitchplugin/cli --registry https://npm.snitchplugin.com
```

Docs: https://snitchplugin.com/docs/quickstart

If you previously installed via Homebrew, remove it:

```bash
brew uninstall snitch
brew untap snitchplugin/tap
```

- Use the jupyter-mcp tools to read and run notebook cells.
- Use pixi to manage Python and R packages.
- When you add or edit a Jupyter cell, don't execute it unless explicitly asked to.

## Syncing with upstream

This fork keeps its own copy of any file shared with `upstream`
(`UNC-BIOS-512/codespace`). Conflicts on shared files auto-resolve to our
version via the `merge=ours` driver declared in `.gitattributes`.

One-time setup per clone (the driver must be registered in local git config):

```sh
git config merge.ours.name "keep local version"
git config merge.ours.driver true
```

Then sync at any time with:

```sh
./sync-upstream.sh
```

New upstream files are added; shared files keep our version.

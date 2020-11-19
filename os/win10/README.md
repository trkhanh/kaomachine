# To set this beautiful fonts up use the following steps

1. Download the fonts from here

2. Unzip and in the ttf folder double click each file and select install from the dialogue box that appears

3. Setup VSCode:

    1. Open File -> Preferences -> Settings
    2. Top right click on {} and the user settings (settings.json) will open up
    3. Add the following lines:

    ```"editor.fontFamily": "'Fira Code'",
    "editor.fontLigatures": true,```
    > Note: I had to comment out the normal font family entry which I can switch back to by reversing the process.
    4. To change the font weight add any of the following lines but not all

    ```"editor.fontWeight": "300" // Light
    "editor.fontWeight": "400" // Regular
    "editor.fontWeight": "500" // Medium
    "editor.fontWeight": "600" // Bold```
    5. Restart and enjoy.

My sample user settings.json
```{
    "files.autoSave": "onFocusChange",
    "editor.minimap.enabled": false,
    "workbench.iconTheme": "material-icon-theme",
    "vsicons.projectDetection.autoReload": true,
    "workbench.editor.enablePreview": false,
    "workbench.editor.enablePreviewFromQuickOpen": false,
    // "editor.fontFamily": "'Noto Mono', 'Droid Sans Mono', 'Courier New', monospace, 'Droid Sans Fallback'",
    "breadcrumbs.enabled": true,
    "typescript.updateImportsOnFileMove.enabled": "always",
    "git.enableSmartCommit": true,
    "java.home": "/usr/lib/jvm/java-8-oracle",
    // "editor.fontLigatures": true,
    "editor.fontFamily": "'Fira Code', 'Noto Mono', 'Droid Sans Mono', 'Courier New', monospace, 'Droid Sans Fallback'",
    "editor.fontLigatures": true,
    // "editor.fontWeight": "300", // Light
    // "editor.fontWeight": "400", // Regular
    // "editor.fontWeight": "500", // Medium
    // "editor.fontWeight": "600" // Bold
}```
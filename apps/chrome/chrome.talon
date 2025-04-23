app: chrome
-
tag(): browser
tag(): user.tabs

profile switch: user.chrome_mod("shift-m")

tab search: user.chrome_mod("shift-a")

tab search <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)

# check out progress from GitHub in browser
check out (pull request|pr):
    user.shortcat_click("copy", "500ms")
    sleep(100ms)
    mouse_click(0)
    user.switcher_focus("Code")
    sleep(500ms)
    user.vscode("git.checkout")
    sleep(1000ms)
    key(cmd-v)
    sleep(1000ms)
    key(enter)
    sleep(3000ms)
    user.vscode("workbench.view.extension.github-pull-request")

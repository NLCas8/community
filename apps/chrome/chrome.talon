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

check out pull request:
    key(shift-cmd-space)
    sleep(500ms)
    insert("copy")
    user.switcher_focus("Code")
    sleep(100ms)
    user.vscode("git.checkout")
    sleep(100ms)
    key(cmd-v)
    key(enter)
    sleep(1000ms)
    user.vscode("workbench.view.extension.github-pull-requests")

# page down:
#     key("down:down")
#     sleep(3000ms)
#     key("down:up")
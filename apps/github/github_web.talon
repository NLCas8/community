# https://help.github.com/en/github/getting-started-with-github/keyboard-shortcuts
tag: browser
browser.host: github.com
-

# site wide shortcuts
focus search: key(s)
go to notifications: insert("gn")
go to dashboard: insert("gd")
(keyboard shortcuts show | show keyboard shortcuts): key(?)
(selection move down | move selection down): key(j)
(selection move up | move selection up): key(k)
(selection toggle | toggle selection): key(x)
(selection open | open selection): key(o)

# repositories
go to code: insert("gc")
go to issues: insert("gi")
go to pull requests: insert("gp")
go to wiki: insert("gw")
go to actions: insert("ga")
go to projects: insert("gb")
go to discussions: insert("gg")

# source code editing
[web] editor open: key(.)

# source code browsing
(file find | find file): key(t)
jump to line: key(l)
((branch | tag) switch | switch (branch | tag)): key(w)
(url expand | expand url): key(y)
(show | hide) comments: key(i)
blame view open: key(b)
(show | hide) annotations: key(a)

# issues
(issue create | create [an] issue): key(c)
search (issues | [pull] requests): key(/)
(filter by | edit) labels: key(l)
(filter by | edit) milestones: key(m)
(filter by | edit) assignee: key(a)
reply: key(r)
(comment submit | submit comment): key(ctrl-enter)
(comment preview | preview comment): key(ctrl-shift-p)
git hub full screen: key(ctrl-shift-l)

# browsing
(form close | close form): key(escape)
parent commit: key(p)
other parent commit: key(o)

# notifications
mark as read: key(y)
(thread mute | mute thread): key(shift-m)

# issue or pull request list
(issue open | open issue): key(o)
(issue create | create issue): key(c)

# issues and pull requests
reviewer request: key(q)
milestone set: key(m)
assignee set: key(a)
label set: key(l)

# actions
go to workflow: insert("gf")
timestamps toggle: key(shift-t)
fullscreen toggle: key(shift-f)

next [commit]: user.shortcat_double_click("next", "250ms")
previous [commit]: user.shortcat_double_click("prev", "250ms")


# check out progress from GitHub in browser
check out (pull request|pr):
    user.shortcat_click("copy", "1500ms")
    sleep(1000ms)
    mouse_click(0)
    sleep(200ms)
    user.switcher_focus("Code")
    sleep(500ms)
    user.vscode("git.checkout")
    sleep(1000ms)
    key(cmd-v)
    sleep(1000ms)
    key(enter)
    sleep(3000ms)
    user.vscode("workbench.view.extension.github-pull-request")
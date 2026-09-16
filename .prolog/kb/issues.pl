% GitHub issue registry and strict queue order.

issue(epic, 1, roadmap, open).
issue(control, 2, control, open).
issue(install, 3, bootstrap, open).
issue(inventory, 4, inventory, open).
issue(core, 5, core, open).
issue(org, 6, org, open).
issue(lisp, 7, lisp, open).
issue(languages, 8, languages, open).
issue(projects, 9, projects, open).
issue(runtime, 10, runtime, open).
issue(ai, 11, ai, open).
issue(custom, 12, custom, open).
issue(snippets, 13, snippets, open).
issue(web, 14, web, open).
issue(operations, 15, operations, open).
issue(cutover, 16, cutover, open).

domain_issue(control, 2).
domain_issue(bootstrap, 3).
domain_issue(inventory, 4).
domain_issue(core, 5).
domain_issue(org, 6).
domain_issue(lisp, 7).
domain_issue(languages, 8).
domain_issue(projects, 9).
domain_issue(runtime, 10).
domain_issue(ai, 11).
domain_issue(custom, 12).
domain_issue(snippets, 13).
domain_issue(web, 14).
domain_issue(operations, 15).
domain_issue(cutover, 16).

issue_dependency(install, control).
issue_dependency(inventory, install).
issue_dependency(core, inventory).
issue_dependency(org, core).
issue_dependency(lisp, org).
issue_dependency(languages, lisp).
issue_dependency(projects, languages).
issue_dependency(runtime, projects).
issue_dependency(ai, runtime).
issue_dependency(custom, ai).
issue_dependency(snippets, custom).
issue_dependency(web, snippets).
issue_dependency(operations, web).
issue_dependency(cutover, operations).

queue_order([
  control,
  install,
  inventory,
  core,
  org,
  lisp,
  languages,
  projects,
  runtime,
  ai,
  custom,
  snippets,
  web,
  operations,
  cutover
]).


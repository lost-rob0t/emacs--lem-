% Evidence baselines and migration inventory.

project('lost-rob0t/emacs--lem-').
source_repository('lost-rob0t/dotfiles').
source_snapshot('6adff8f295201bec7c45b655123615c56a20d3fb').
target_repository('lem-project/lem').
target_snapshot('75b48185d5e90283d6ab50cccff15322b6fb8987').

control_mode(unselected).
bootstrap_state(packaging_scaffold, present_unverified).
parity_claim(false).
cutover_approved(false).

% Explicit active packages from .doom.d/packages.el at source_snapshot/1.
emacs_package('org-roam-ui', active).
emacs_package('org-ql', active).
emacs_package('org-timed-alerts', active).
emacs_package('org-alert', active).
emacs_package('org-download', active).
emacs_package('org-modern', active).
emacs_package('writeroom-mode', active).
emacs_package('ob-http', active).
emacs_package('org-recoll', active).
emacs_package('project-tasks', active).
emacs_package('org-drill', active).
emacs_package('transient', active).
emacs_package('dslide', active).
emacs_package('gptel', active).
emacs_package('mcp', active).
emacs_package('envrc', active).
emacs_package('ob-nim', active).
emacs_package('lsp-pyright', active).
emacs_package('evil-smartparens', active).
emacs_package('ob-prolog', active).
emacs_package('gnuplot', active).
emacs_package('magit-todos', active).
emacs_package('webpaste', active).
emacs_package('burly', active).
emacs_package('podman.el', active).
emacs_package('pcap-mode.el', active).
emacs_package('exec-path-from-shell', active).
emacs_package('cheat-sh', active).
emacs_package('activity-watch-mode', active).
emacs_package('discover', active).
emacs_package('atomic-chrome', active).
emacs_package('app-launcher', active).
emacs_package('yasnippet-snippets', active).
emacs_package('skeletor', active).
emacs_package('plz', active).
emacs_package('dash', active).
emacs_package('s', active).
emacs_package('alert', active).
emacs_package('f', active).
emacs_package('emacs-async', active).
emacs_package('org-contrib', active).
emacs_package('ppcre2el', active).
emacs_package('rx', active).
emacs_package('asoc', active).
emacs_package('elfeed-tube', active).
emacs_package('dirvish', active).
emacs_package('libvirt', active).

% Present but commented/disabled packages remain durable inventory.
emacs_package('ox-hugo', disabled).
emacs_package('org-transclusion', disabled).
emacs_package('protobuf-mode', disabled).
emacs_package('flycheck-nim', disabled).
emacs_package('gforth.el', disabled).
emacs_package('hackmode', disabled).
emacs_package('jeison', disabled).
emacs_package('exwm', disabled).
emacs_package('exwm-firefox-evil', disabled).
emacs_package('perspective', disabled).
emacs_package('perspective-exwm', disabled).

% Enabled Doom modules and their flags from .doom.d/init.el.
doom_module(completion, company, []).
doom_module(completion, ivy, []).
doom_module(ui, doom, []).
doom_module(ui, emoji, [unicode]).
doom_module(ui, 'hl-todo', []).
doom_module(ui, modeline, []).
doom_module(ui, ophints, []).
doom_module(ui, popup, [defaults]).
doom_module(ui, unicode, []).
doom_module(ui, 'vc-gutter', [pretty]).
doom_module(ui, 'vi-tilde-fringe', []).
doom_module(ui, workspaces, []).
doom_module(editor, evil, [everywhere]).
doom_module(editor, fold, []).
doom_module(editor, format, [onsave]).
doom_module(editor, lispy, []).
doom_module(editor, parinfer, []).
doom_module(editor, snippets, []).
doom_module(editor, 'word-wrap', []).
doom_module(emacs, dired, []).
doom_module(emacs, electric, []).
doom_module(emacs, ibuffer, []).
doom_module(emacs, undo, []).
doom_module(emacs, vc, []).
doom_module(term, eshell, []).
doom_module(term, vterm, []).
doom_module(checkers, syntax, []).
doom_module(tools, debugger, []).
doom_module(tools, direnv, []).
doom_module(tools, docker, []).
doom_module(tools, editorconfig, []).
doom_module(tools, eval, [overlay]).
doom_module(tools, lookup, []).
doom_module(tools, lsp, []).
doom_module(tools, magit, [forge]).
doom_module(tools, make, []).
doom_module(tools, pdf, []).
doom_module(tools, rgb, []).
doom_module(tools, upload, []).
doom_module(os, tty, []).
doom_module(lang, cc, [lsp]).
doom_module(lang, 'common-lisp', []).
doom_module(lang, data, []).
doom_module(lang, 'emacs-lisp', []).
doom_module(lang, json, ['tree-sitter']).
doom_module(lang, javascript, [lsp, 'tree-sitter']).
doom_module(lang, markdown, []).
doom_module(lang, nim, [lsp]).
doom_module(lang, nix, []).
doom_module(lang, org, [roam2]).
doom_module(lang, php, []).
doom_module(lang, python, []).
doom_module(lang, sh, []).
doom_module(lang, web, []).
doom_module(app, everywhere, []).
doom_module(app, rss, [org]).

% Custom source components. Generated .el files with Org sources are one item.
custom_component(activity_watch, custom).
custom_component(chatgpt_books, ai).
custom_component(dired_dirvish, projects).
custom_component(gpt_todos, custom).
custom_component(llm_commands, ai).
custom_component(org_agenda_compat, org).
custom_component(research_approval, custom).
custom_component(research_dashboard, custom).
custom_component(research_dashboard_evil, custom).
custom_component(research_dashboard_local, custom).
custom_component(research_dashboard_local_defaults, custom).
custom_component(research_dashboard_local_dwim, custom).
custom_component(screen_capture, custom).
custom_component(starintel, custom).
custom_component(starintel_research, custom).
custom_component(temple, ai).
custom_component(hackmacs, operations).

snippet_family(emacs_lisp, snippets).
snippet_family(common_lisp, snippets).
snippet_family(nim, snippets).
snippet_family(nix, snippets).
snippet_family(org, snippets).
snippet_family(prolog, snippets).
snippet_family(python, snippets).
snippet_family(web, snippets).

% Active package ownership. Exactly one owner is required for every active item.
package_domain('org-roam-ui', org).
package_domain('org-ql', org).
package_domain('org-timed-alerts', org).
package_domain('org-alert', org).
package_domain('org-download', org).
package_domain('org-modern', org).
package_domain('writeroom-mode', org).
package_domain('ob-http', org).
package_domain('org-recoll', org).
package_domain('project-tasks', org).
package_domain('org-drill', org).
package_domain('transient', projects).
package_domain('dslide', org).
package_domain('gptel', ai).
package_domain('mcp', ai).
package_domain('envrc', runtime).
package_domain('ob-nim', languages).
package_domain('lsp-pyright', languages).
package_domain('evil-smartparens', core).
package_domain('ob-prolog', languages).
package_domain('gnuplot', languages).
package_domain('magit-todos', projects).
package_domain('webpaste', web).
package_domain('burly', core).
package_domain('podman.el', operations).
package_domain('pcap-mode.el', operations).
package_domain('exec-path-from-shell', runtime).
package_domain('cheat-sh', operations).
package_domain('activity-watch-mode', custom).
package_domain('discover', core).
package_domain('atomic-chrome', web).
package_domain('app-launcher', core).
package_domain('yasnippet-snippets', snippets).
package_domain('skeletor', snippets).
package_domain('plz', custom).
package_domain('dash', custom).
package_domain('s', custom).
package_domain('alert', core).
package_domain('f', custom).
package_domain('emacs-async', custom).
package_domain('org-contrib', org).
package_domain('ppcre2el', custom).
package_domain('rx', custom).
package_domain('asoc', custom).
package_domain('elfeed-tube', web).
package_domain('dirvish', projects).
package_domain('libvirt', operations).

module_domain(company, core).
module_domain(ivy, core).
module_domain(doom, core).
module_domain(emoji, core).
module_domain('hl-todo', core).
module_domain(modeline, core).
module_domain(ophints, core).
module_domain(popup, core).
module_domain(unicode, core).
module_domain('vc-gutter', core).
module_domain('vi-tilde-fringe', core).
module_domain(workspaces, core).
module_domain(evil, core).
module_domain(fold, core).
module_domain(format, core).
module_domain(lispy, lisp).
module_domain(parinfer, lisp).
module_domain(snippets, snippets).
module_domain('word-wrap', core).
module_domain(dired, projects).
module_domain(electric, core).
module_domain(ibuffer, core).
module_domain(undo, core).
module_domain(vc, projects).
module_domain(eshell, runtime).
module_domain(vterm, runtime).
module_domain(syntax, languages).
module_domain(debugger, lisp).
module_domain(direnv, runtime).
module_domain(docker, runtime).
module_domain(editorconfig, languages).
module_domain(eval, lisp).
module_domain(lookup, languages).
module_domain(lsp, languages).
module_domain(magit, projects).
module_domain(make, runtime).
module_domain(pdf, web).
module_domain(rgb, core).
module_domain(upload, projects).
module_domain(tty, runtime).
module_domain(cc, languages).
module_domain('common-lisp', lisp).
module_domain(data, languages).
module_domain('emacs-lisp', languages).
module_domain(json, languages).
module_domain(javascript, languages).
module_domain(markdown, languages).
module_domain(nim, languages).
module_domain(nix, languages).
module_domain(org, org).
module_domain(php, languages).
module_domain(python, languages).
module_domain(sh, languages).
module_domain(web, languages).
module_domain(everywhere, web).
module_domain(rss, web).


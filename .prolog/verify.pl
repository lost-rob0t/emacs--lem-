:- ensure_loaded(kb/index).

:- initialization(main, main).

valid_control_mode(unselected).
valid_control_mode(adadr).
valid_control_mode(auto_rage).

exactly_one(Goal) :-
    findall(1, Goal, Matches),
    length(Matches, 1).

require(Goal, Error) :-
    (   call(Goal)
    ->  true
    ;   format(user_error, 'KB verification failed: ~w~n', [Error]),
        fail
    ).

verify_package(Package) :-
    require(exactly_one(package_domain(Package, _)), package_owner(Package)),
    package_domain(Package, Domain),
    require(exactly_one(domain_issue(Domain, _)), package_issue(Package, Domain)).

verify_module(Module) :-
    require(exactly_one(module_domain(Module, _)), module_owner(Module)),
    module_domain(Module, Domain),
    require(exactly_one(domain_issue(Domain, _)), module_issue(Module, Domain)).

verify_custom(Component, Domain) :-
    require(exactly_one(domain_issue(Domain, _)), custom_issue(Component, Domain)).

verify_snippet(Family, Domain) :-
    require(exactly_one(domain_issue(Domain, _)), snippet_issue(Family, Domain)).

verify_dependency(Issue, Dependency) :-
    require(exactly_one(issue(Issue, _, _, _)), dependency_source(Issue)),
    require(exactly_one(issue(Dependency, _, _, _)), dependency_target(Dependency)).

verify_queue :-
    queue_order(Queue),
    sort(Queue, UniqueQueue),
    length(Queue, QueueLength),
    length(UniqueQueue, QueueLength),
    findall(Key, (issue(Key, _, _, _), Key \= epic), IssueKeys),
    sort(IssueKeys, SortedIssueKeys),
    sort(Queue, SortedQueue),
    require(SortedIssueKeys = SortedQueue, queue_mismatch(SortedIssueKeys, SortedQueue)).

verify_kb :-
    require(exactly_one(project(_)), project),
    require(exactly_one(source_snapshot(_)), source_snapshot),
    require(exactly_one(target_snapshot(_)), target_snapshot),
    require(exactly_one(control_mode(_)), control_mode),
    control_mode(Mode),
    require(valid_control_mode(Mode), invalid_control_mode(Mode)),
    forall(emacs_package(Package, active), verify_package(Package)),
    forall(doom_module(_, Module, _), verify_module(Module)),
    forall(custom_component(Component, Domain), verify_custom(Component, Domain)),
    forall(snippet_family(Family, Domain), verify_snippet(Family, Domain)),
    forall(issue_dependency(Issue, Dependency), verify_dependency(Issue, Dependency)),
    verify_queue.

verify_implementation_gate :-
    verify_kb,
    control_mode(Mode),
    require(Mode \= unselected, implementation_blocked(control_mode_unselected)).

main(Argv) :-
    (   member('--implementation', Argv)
    ->  verify_implementation_gate
    ;   verify_kb
    ),
    halt(0).
main(_) :-
    halt(1).


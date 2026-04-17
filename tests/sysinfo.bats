#!/usr/bin/env bats

setup() {
    # Ensure bin is in PATH for testing
    PATH="$BATS_TEST_DIRNAME/../bin:$PATH"
}

@test "sysinfo: prints the host information header" {
    run sysinfo
    [ "$status" -eq 0 ]
    [[ "$output" == *"--- Host ---"* ]]
}

@test "sysinfo: includes system hardware and os labels" {
    run sysinfo
    [ "$status" -eq 0 ]
    [[ "$output" == *"Host:"* ]]
    [[ "$output" == *"OS:"* ]]
    [[ "$output" == *"Model:"* ]]
}

@test "sysinfo: includes networking information" {
    run sysinfo
    [ "$status" -eq 0 ]
    [[ "$output" == *"Local IP:"* ]]
    [[ "$output" == *"Pub IPv4:"* ]]
}

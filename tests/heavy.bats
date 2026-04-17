#!/usr/bin/env bats

setup() {
    PATH="$BATS_TEST_DIRNAME/../bin:$PATH"
    # Create a dummy large directory for testing
    mkdir -p "$BATS_TMPDIR/heavy-test-dir"
}

teardown() {
    rm -rf "$BATS_TMPDIR/heavy-test-dir"
}

@test "heavy: returns error on non-directory target" {
    run heavy "/tmp/non-existent-$(date +%s)"
    [ "$status" -eq 1 ]
    [[ "$output" == *"Error"* ]]
}

@test "heavy: runs successfully on current directory" {
    run heavy .
    [ "$status" -eq 0 ]
}

@test "heavy: identifies a mock 1GB+ directory" {
    # We use 'dd' instead of 'truncate' because 'du' measures disk usage.
    # Sparse files (via truncate) report 0 usage on many filesystems.
    dd if=/dev/zero of="$BATS_TMPDIR/heavy-test-dir/chonker" bs=1M count=1050 2>/dev/null
    
    run heavy "$BATS_TMPDIR"
    [ "$status" -eq 0 ]
    [[ "$output" == *"1.0G"* ]] || [[ "$output" == *"1.1G"* ]]
    [[ "$output" == *"heavy-test-dir"* ]]
}

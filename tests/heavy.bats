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
    # Generate a dummy file that is slightly over 1GB
    # On macOS/Linux, dd or truncate works. We'll use truncate if available, or dd.
    if command -v truncate >/dev/null; then
        truncate -s 1100M "$BATS_TMPDIR/heavy-test-dir/chonker"
    else
        dd if=/dev/zero of="$BATS_TMPDIR/heavy-test-dir/chonker" bs=1M count=1100 2>/dev/null
    fi
    
    run heavy "$BATS_TMPDIR"
    [ "$status" -eq 0 ]
    [[ "$output" == *"1.1G"* ]]
    [[ "$output" == *"heavy-test-dir"* ]]
}

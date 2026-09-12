import shutil
import subprocess
import json
from pathlib import Path

import pytest
import yaml


ROOT = Path(__file__).parents[1]
VERSIONS = ("2.0", "3.0", "3.1", "3.2")
CASES = tuple(sorted((ROOT / "tests" / "cases").glob("**/*.libsonnet")))


@pytest.fixture(scope="session")
def jsonnet():
    executable = shutil.which("jsonnet")
    if executable is None:
        pytest.fail("jsonnet is required to validate the generated libraries")
    return executable


def evaluate(jsonnet, expression):
    result = subprocess.run(
        [jsonnet, "-e", expression],
        cwd=ROOT,
        check=True,
        capture_output=True,
        text=True,
    )
    return json.loads(result.stdout)


@pytest.mark.parametrize("version", VERSIONS)
def test_library_is_valid_jsonnet(jsonnet, version):
    fields = evaluate(
        jsonnet,
        f"std.objectFields(import '{version}/main.libsonnet')",
    )

    assert fields == ["definitions", "openapi", "ref"]


@pytest.mark.parametrize(
    ("version", "kind", "path", "expected"),
    [
        ("2.0", "definition", "User/address", "#/definitions/User/address"),
        ("3.0", "schema", "User/address", "#/components/schemas/User/address"),
    ],
)
def test_ref_utility_uses_version_path(jsonnet, version, kind, path, expected):
    result = evaluate(
        jsonnet,
        f"(import '{version}/main.libsonnet').ref.{kind}('{path}')",
    )

    assert result == {"$ref": expected}


@pytest.mark.parametrize("sample", CASES, ids=lambda path: str(path.relative_to(ROOT / "tests" / "cases")))
def test_sample_document_matches_expected(jsonnet, sample):
    expected = yaml.safe_load((sample.parent / "expected.yaml").read_text())
    result = subprocess.run(
        [jsonnet, str(sample)],
        cwd=ROOT,
        check=True,
        capture_output=True,
        text=True,
    )

    assert json.loads(result.stdout) == expected

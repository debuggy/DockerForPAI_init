import running_code
import tensorflow


def test_pai_test():
    result = running_code.hello_pai('pai')
    assert result == 'pai'
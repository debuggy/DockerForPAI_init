import job

def test_pai_test():
    result = job.hello_pai('pai')
    assert result == 'pai'
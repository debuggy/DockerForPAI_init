import sys
import pytorch

def hello_pai(test_string):
    print('hello {0}!'.format(test_string))
    return test_string 

if __name__ == '__main__':
    hello_pai('entrypoint')

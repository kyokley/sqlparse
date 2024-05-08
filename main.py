import sys
import sqlparse


def stdin_lines():
    return sys.stdin.readlines()


def main():
    lines = '\n'.join(stdin_lines())
    print(sqlparse.format(lines,
                          reindent=False,
                          keyword_case='upper'))


if __name__ == '__main__':
    main()

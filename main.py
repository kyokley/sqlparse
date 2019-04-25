import sys
import sqlparse


def stdin_lines():
    return sys.stdin.readlines()


def main():
    lines = stdin_lines()
    print(sqlparse.format(lines, reindent=True))


if __name__ == '__main__':
    main()

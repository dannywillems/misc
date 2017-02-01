{
  exception EOF
}

rule token = parse
    [' ' '\t']  { token lexbuf }
  | ['\n'] { Parser.EOL }
  | ['0' - '9']+ as lexeme {
      Parser.INT(int_of_string lexeme)
    }
  | '+' { Parser.PLUS }
  | '-' { Parser.MINUS }
  | '*' { Parser.TIMES }
  | '/' { Parser.DIV }
  | '(' { Parser.LPARENT }
  | ')' { Parser.RPARENT }
  | eof { raise EOF }

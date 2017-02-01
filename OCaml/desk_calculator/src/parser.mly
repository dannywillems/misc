%token <int> INT
%token <float> FLOAT
%token LPARENT
%token RPARENT
%token PLUS
%token MINUS
%token TIMES
%token DIV
%left PLUS
%left TIMES
%left DIV
%left MINUS
%token EOL

%start <int> main
%%
main:
  expr EOL { $1 }

expr:
    INT { $1 }
  | FLOAT { int_of_float $1 }
  | expr ; PLUS ; expr { $1 + $3 }
  | expr ; MINUS ; expr { $1 - $3 }
  | expr ; TIMES ; expr { $1 * $3 }
  | expr ; DIV ; expr { $1 / $3}
  | LPARENT ; expr ; RPARENT { $2 }


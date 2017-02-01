let () =
  (* Create a lexing buffer for stdin. Can be from a file. *)
  let lexing_buffer = Lexing.from_channel Pervasives.stdin in
  while true do
    Printf.printf "> %d\n" (Parser.main Lexer.token lexing_buffer);
    Pervasives.flush Pervasives.stdout
  done;

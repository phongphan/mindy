module: dylan-user
rcs-header: $Header: /home/housel/work/rcs/gd/src/d2c/compiler/main/main-exports.dylan,v 1.8 1996/03/21 03:01:10 rgs Exp $
copyright: Copyright (c) 1994  Carnegie Mellon University
	   All rights reserved.

define library compiler-main
  use Dylan;
#if (~mindy)
  use String-extensions;
#end
  use Random;
  use compiler-base;
  use compiler-front;
  use compiler-optimize;
  use compiler-parser;
  use compiler-cback;
  use compiler-convert;
end;


define module main
  use common;
#if (mindy)
  use System, import: {system, copy-bytes, getenv, collect-garbage};
#else
  use System,
     import: {copy-bytes, call-out, c-expr, buffer-address, <raw-pointer>,
	      pointer-deref};
#end
  use string-conversions, import: {string-to-integer};
  use random;

  use utils;
  // use define-classes;
  // use define-functions;
  use function-definitions;
  use variables;
  use parser;
  use format;
  use tokenize;
  use lexer;
  use header;
  use source;
  use top-level-forms;
  use flow;
  use builder-interface;
  // use fer-convert;
  use front;
  // use dump;
  use classes;
  use c-representation;
  use cback;
  use heap;
  use compile-time-values;
  use compile-time-functions;
  use signature-interface;
  use ctype;
  use cheese;
  use od-format;
  use standard-io;
  use tokens;
  use names;
  use errors;
  use policy;
  use macros;
  use fragments;
  use parse-tree, exclude: {primitive-name};
end;

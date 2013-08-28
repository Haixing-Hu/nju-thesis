%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  符合 GB/T 7714-2005 规范的 BibTeX 样式文件
%
%  作者：    胡海星   南京大学计算机科学与技术系
%  版本：    v1.0.0  2013-08-27
%  项目主页: https://github.com/Haixing-Hu/nju-thesis
%
%  参考资料:
%  [1] 中国国家标准化管理委员会. GB/T 7714-2005 文后参考文献着录规则[S]. 2005.
%  [2] PATASHNIK O. BiBTeXing[R/OL]. 1988[2013-08-27].
%      ftp://tug.ctan.org/pub/tex-archive/biblio/bibtex/contrib/doc/btxdoc.pdf
%  [3] PATASHNIK O. Designing BibTeX Styles[R/OL]. 1998[2013-08-27].
%      ftp://tug.ctan.org/pub/tex-archive/biblio/bibtex/contrib/doc/btxhak.pdf

%
%  This file may be distributed and/or modified under the conditions of the
%  LaTeX Project Public License, either version 1.2 of this license or (at your
%  option) any later version. The latest version of this license is in:
%
%  http://www.latex-project.org/lppl.txt
%
%  and version 1.2 or later is part of all distributions of LaTeX version
%  1999/12/01 or later.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
ENTRY                                             % class Entry {
{                                                 % public:
    author                                        %   string author;
    editor                                        %   string editor;
    translator                                    %   string translator;
    title                                         %   string title;
    booktitle                                     %   string booktitle;
    journal                                       %   string journal;
    edition                                       %   string edition;
    chapter                                       %   string chapter;
    series                                        %   string series;
    volume                                        %   string volume;
    number                                        %   string number;
    pages                                         %   string pages;
    year                                          %   string year;
    month                                         %   string month;
    school                                        %   string school;
    institution                                   %   string institution;
    organization                                  %   string organization;
    address                                       %   string address;
    publisher                                     %   string publisher;
    type                                          %   string type;
    howpublished                                  %   string howpublished;
    url                                           %   string url;
    doi                                           %   string doi;
    eid                                           %   string eid;
    key                                           %   string key;
    language                                      %   string language;
    note                                          %   string note;
    citedate                                      %   string citedate;
    patentid                                      %   string patentid;
    country                                       %   string country;
    miscyear                                      %   string miscyear;
    startyear                                     %   string startyear;
    startvolume                                   %   string startvolume;
    startnumber                                   %   string startnumber;
    endyear                                       %   string endyear;
    endvolume                                     %   string endvolume;
    endnumber                                     %   string endnumber;
} {                                               % priate:
                                                  %   //  declare integer variables
                                                  %
} {                                               %   //  declare string variables
    label                                         %   string label;           //  label for the entry
    mark                                          %   string mark;
                                                  %   //  there is ahidden entry variable sort.key$
                                                  %   string sort_key;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
INTEGERS {                                        % //  declare global int variables
  debug.enabled                                   % int debug_enabled;        // enable/disable debugging
  entry.count                                     % int entry_count;          // number of entries
  longest.label.width                             % int longest_label_width;  // width of the longest label
}                                                 %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
STRINGS {                                         % //  declare global String variables
  longest.label                                   % string longest_label;     //  the longest label
  debug.log.msg                                   % string debug_log_msg;     //  used by debug_log function
}                                                 %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
MACRO {jan} {"January"}
MACRO {feb} {"February"}
MACRO {mar} {"March"}
MACRO {apr} {"April"}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"August"}
MACRO {sep} {"September"}
MACRO {oct} {"October"}
MACRO {nov} {"November"}
MACRO {dec} {"December"}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {not}                                    % int not(int x) {
{                                                 %   if (x == 1) {
    { #0 }                                        %     return 0;
                                                  %   } else {
    { #1 }                                        %     return 1;
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {and}                                    % int and(int x, int y) {
{                                                 %   if (y == 1) {
    'skip$                                        %     return x;
                                                  %   } else {
    { pop$ #0 }                                   %     return 0;
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {or}                                     % int or(int x, int y) {
{                                                 %   if (y == 1) {
    { pop$ #1 }                                   %     return 1;
                                                  %   } else {
    'skip$                                        %     return x;
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {debug.log.str} {                        % String Entry::debug_log_str(String value, String name)
  debug.enabled {                                 %   if (debug_enabled == 1) {
    "DEBUG: " swap$ * 'debug.log.msg :=           %     debug_log_msg = "DEBUG: " + name;
    debug.log.msg " - " * 'debug.log.msg :=       %     debug_log_msg = debug_log_msg + " - ";
    duplicate$                                    %     String tmp = value;
    debug.log.msg swap$ * 'debug.log.msg :=       %     debug_log_msg = debug_log_message + tmp;
    'debug.log.msg top$                           %     log(debug_log_msg);
                                                  %     return value;
  } {                                             %   } else {
    pop$                                          %     return value;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {debug.log.int} {                        % int Entry::debug_log_int(int value, String name)
  debug.enabled {                                 %   if (debug_enabled == 1) {
    "DEBUG: " swap$ * 'debug.log.msg :=           %     debug_log_msg = "DEBUG: " + name;
    debug.log.msg " - " * 'debug.log.msg :=       %     debug_log_msg = debug_log_msg + " - ";
    duplicate$ int.to.str$                        %     String tmp = int_to_str(value);
    debug.log.msg swap$ * 'debug.log.msg :=       %     debug_log_msg = debug_log_message + tmp;
    'debug.log.msg top$                           %     log(debug_log_msg);
                                                  %     return value;
  } {                                             %   } else {
    pop$                                          %     return value;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {start.bibitem} {                        % void Entry::start_bibitem() {
  newline$                                        %   writeln();
  "\bibitem{" cite$ * "}" * write$                %   write("\bibitem{" + this.cite + "}");
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {add.brace} {                            % String Entry::add_brace(String str) {
  "}" * "{" swap$ *                               %   return "{" + str + "}";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.bibinfo} {                       % void Entry::output_bibinfo(String info, String type) {
  add.brace                                       %   type = add_brace(type);
  swap$ add.brace swap$                           %   info = add_brace(info);
  "\bibinfo{" swap$ * "}" *                       %   String tmp = "\bibinfo{" + type + "}";
  swap$ *                                         %   return tmp + info;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.block} {                            % void new_block() {
  "\newblock " write$                             %   write("\newblock ");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {end.block} {                            % void end_block() {
  ". " write$                                     %   write(". ");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.url}                             % String format_url(Entry entry) {
{                                                 %   String str;
  doi empty$                                      %   if (empty(entry.doi)) {
    { url }                                       %     str = entry.url;
                                                  %   } else{
    { "http://dx.doi.org/" doi * }                %     str = "http://dx.doi.org/" + entry.doi;
  if$                                             %   }
  duplicate$ empty$                               %   if (empty(str)) {
    { pop$ "" }                                   %     return "";
                                                  %   } else {
    { "\urlprefix\url{" swap$ * "}" * }           %     return "\urlprefix\url{" + str + "}";
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.author} {                        % void Entry::output_author(String author) {
  format.author write$                            %   write(format_author(author));
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.editor} {                        % void Entry::output_editor(String editor) {
  format.author write$                            %   write(format_author(author));
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.translator} {                    % void Entry::output_translator(String translator) {
  format.author write$                            %   write(format_author(author));
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.title} {                         % void Entry::output_title(String title) {
  format.title                                    %   title = format_title(title);
  "title" output_bibinfo                          %   output_bibinfo(title, "title");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.mark} {                          % void Entry::output_mark(String mark) {
  url missing$ url empty$ or {                    %   if (missing(this.url) || empty(this.url)) {
    "[" swap$ * "]" *                             %     mark = "[" + mark + "]";
  } {                                             %   } else {
    "[" swap$ * "/OL]" *                          %     mark = "[" + mark + "/OL]";
  } if$                                           %   }
  "mark" output_bibinfo                           %   output_bibinfo(mark, "mark");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {book} {                                 % void Entry::book() {
  start.bibitem                                   %   start_bibitem();
                                                  %
  author missing$ author empty$ or {              %   if (missing(this.author) || empty(this.author)) {
    editor missing$ editor empty$ or {            %     if (missing(this.editor) || empty(this.editor)) {
      "No author or editor: " cite$ * warning$    %       warning("No author or editor: " + this.cite);
    } {                                           %     } else {
      editor output.author                        %       output_author(this.editor);
      end.block                                   %       end_block();
    } if$                                         %     }
  } {                                             %   } else {
    author output.author                          %     output_author(this.author);
    end.block                                     %     end_block();
  } if$                                           %   }
                                                  %
  title missing$ title empty$ or {                %   if (missing(this.title) || empty(this.title)) {
    "No title: " cite$ * warning$                 %     warning("No title: " + this.cite);
  } {                                             %   } else {
    new.block                                     %     new_block();
    title output.title                            %     output_title(this.title);
    "M" output.mark                               %     output_mark("M");
    end.block                                     %     end_block();
  } if$                                           %   }
                                                  %
  editor missing$ editor empty$ or not {          %   if (! (missing(this.editor) || empty(this.editor))) {
    editor output.editor                          %     output_editor(this.editor);
    new.block                                     %     new_block();
  } 'skip$ if$                                    %   }
                                                  %
  translator missing$ translator empty$ or not {  %   if (! (missing(this.translator) || empty(this.translator))) {
    translator output.translator                  %     output_translator(this.translator);
    new.block                                     %     new_block();
  } 'skip$ if$                                    %   }
                                                  %
  edition missing$ edition empty$ or not {        %   if (! (missing(this.edition) || empty(this.edition))) {
    new.block                                     %     new_block();
    edition output.edition                        %     output_edition(this.edition);
    end.block                                     %     end_block();
  } 'skip$ if$                                    %   }
                                                  %
  publisher missing$ publisher empty$ or {        %   if (missing(this.publisher) || empty(this.publisher)) {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } {                                             %   } else {
    new.block                                     %     new_block();

    end.block                                     %     end_block();
  } if$                                           %   }
                                                  %
  url missing$ url empty$ or not {                %   if (! (missing(this.url) || empty(this.url))) {
    new.block                                     %     new_block();
    url output.url                                %     output_url(this.url);
    end.block                                     %     end_block();
  } 'skip$ if$                                    %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {default.type} {                         % void Entry::default_type() {
  "Unsupported entry type for " cite$ * warning$  %   warning("Unsupported entry type for " + this.cite);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {longest.label.pass} {                   % void longest_label_pass(Entry entry) {
  entry.count #1 + 'entry.count :=                %   entry_count = entry_count + 1;
  entry.count int.to.str$ 'label :=               %   this.label = int_to_str(entry_count);
  label width$ longest.label.width > {            %   if (width(this.label) > longest_label_width) {
    label 'longest.label :=                       %     longest_label = this.label;
    label width$ 'longest.label.width :=          %     longest_label_width = width(this.label);
  } 'skip$ if$                                    %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {begin.bib} {                            % void begin_bib() {
  preamble$ empty$ not {                          %   if (! empty(premble)) {
    preamble$ write$                              %     write(premeable);
    newline$                                      %     writeln();
  } 'skip$ if$                                    %   }
  "\begin{thebibliography}{" longest.label *      %
      "}" * write$                                %   write("\begin{thebibliography}{" + longest_label + "}")
  newline$                                        %   writeln();
  "\providecommand{\url}[1]{\texttt{#1}}" write$  %   write("\providecommand{\url}[1]{\texttt{#1}}");
  newline$                                        %   writeln();
  "\providecommand{\urlprefix}{URL }" write$      %   write("\providecommand{\urlprefix}{URL }");
  newline$                                        %   writeln();
  "\providecommand{\bibinfo}[2]{#2}" write$       %   write("\providecommand{\bibinfo}[2]{#1}");
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {end.bib} {                              % void end_bib() {
  newline$                                        %   writeln();
  "\end{thebibliography}" write$                  %   write("\end{thebibliography}");
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {initialize} {                           % void initialize() {
  #1 'debug.enabled :=                            %   debug_enabled = 1;
  #0 'entry.count :=                              %   entry_count = 0;
  #0 'longest.label.width :=                      %   longest_label_width = 0;
  "" 'longest.label :=                            %   longest_label = "";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  % void main() {
EXECUTE {initialize}                              %   initialize();
READ                                              %   List<Entry> entryList = read("<file>.bib");
ITERATE {longest.label.pass}                      %   for (Entry entry : entryList) {
                                                  %     longest_label_pass(entry);
                                                  %   }
EXECUTE {begin.bib}                               %   begin_bib();
ITERATE {call.type$}                              %   for (Entry entry : entryList) {
                                                  %     switch (typeof(entry)) {
                                                  %     case "book":
                                                  %        entry.book();
                                                  %        break;
                                                  %     case "article":
                                                  %        entry.article();
                                                  %        break;
                                                  %          .
                                                  %          .
                                                  %          .
                                                  %     case "incollection":
                                                  %        entry.incollection();
                                                  %        break;
                                                  %     case "misc":
                                                  %        entry.misc();
                                                  %        break;
                                                  %     default:
                                                  %        entry.default_type();
                                                  %     }
                                                  %   }
EXECUTE {end.bib}                                 %   end_bib();
                                                  % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of file `GBT7714-2005.bst'.

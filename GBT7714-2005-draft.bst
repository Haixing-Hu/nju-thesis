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
    label                                         %   string label;
    extra.label                                   %   string extra_label;
    sort.label                                    %   string sort_label;
    short.List                                    %   string short_label;
                                                  %   //  there is ahidden entry variable sort.key$
                                                  %   string sort_key;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
INTEGERS {                                        % //  declare global int variables
  output.state                                    % int output_state;
  before.all                                      % int before_all;
  mid.sentence                                    % int mid_sentence;
  after.sentence                                  % int after_sentence;
  after.block                                     % int after_block;
  number.label                                    % int number_label;
  longest.label.width                             % int longest_label_width;
  longest.label.width                             % int longest_label_width;
  nameptr                                         % int nameptr;
  namesleft                                       % int nameleft;
  numnames                                        % int numnames;
}                                                 %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
STRINGS {                                         % //  declare global String variables
  longest.label                                   % string longest_label;
  bibinfo                                         % string bibinfo;
  s                                               % string s;
  t                                               % string t;
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
FUNCTION {new.block}                              % void new_block() {
{ output.state before.all =                       %   if (output_state == before_all) {
    'skip$                                        %     ;
                                                  %   } else {
    { after.block 'output.state := }              %     output_state = after_block;
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.bibitem}                         % String Entry::output_bibitem() {
{ newline$                                        %   writeln();
  "\bibitem{" write$                              %   write("\bibitem{");
  cite$ write$                                    %   write(this.cite);
  "}" write$                                      %   write("}");
  newline$                                        %   writeln();
  before.all 'output.state :=                     %   output_state = before_all;
  ""                                              %   return "";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.nonnull}                         % String Entry::output_nonnull(String str1, String str2) {
{ 's :=                                           %   s := str2;
  output.state mid.sentence =                     %   if (output_state == mid_sentence) {
    { ", " * write$ }                             %     write(str1 + ", ");
                                                  %   } else {
    {   output.state after.block =                %     if (output_state == after_block) {
        { add.period$ write$                      %       write(add_period(str1));
          newline$                                %       writeln();
          "\newblock " write$                     %       write("\newblock ");
        }                                         %     } else {
        { output.state before.all =               %       if (output_state == before_all) {
            'write$                               %         write(str1);
                                                  %       } else {
            { add.period$ " " * write$ }          %         write(add_period(str1) + " ");
          if$ }                                   %       }
      if$                                         %     }
      mid.sentence 'output.state := }             %     output_state = mid_sentence;
  if$                                             %   }
  s                                               %   return s;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.check}                           % void Entry::output_check(String value, String field) {
{ 't :=                                           %   String t = field;
  duplicate$ empty$                               %   if (empty(value)) {
    {pop$ "empty " t * " in " * cite$ * warning$} %     warning("empty " + t + " in " + this.cite);
                                                  %   } else {
    'output.nonnull                               %     output_nonnull(value);
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output}                                 % String output(String str1, String strs) {
{ duplicate$ empty$                               %   if (empty(str2)) {
    'pop$                                         %     return str1;
                                                  %   } else {
    'output.nonnull                               %     return output_nonnull(str1, str2);
  if$                                             %   }
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
FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {add.blank}
{  " " * before.all 'output.state :=
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {no.blank.or.punct}
{  "\hspace{0pt}" * before.all 'output.state :=
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {date.block}
{
  no.blank.or.punct
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
STRINGS {z}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {remove.dots}
{ 'z :=
   ""
   { z empty$ not }
   { z #1 #2 substring$
     duplicate$ "\." =
       { z #3 global.max$ substring$ 'z :=  * }
       { pop$
         z #1 #1 substring$
         z #2 global.max$ substring$ 'z :=
         duplicate$ "." = 'pop$
           { * }
         if$
       }
     if$
   }
   while$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.block.checkb}                       % void new_block_checkb(String title, String howpublised) {
{ empty$                                          %   if (empty(howpublished)) {
  swap$ empty$                                    %
  and
    'skip$
    'new.block
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {emphasize}                              % String emphasize(String str) {
{ duplicate$ empty$                               %   if (empty(str)) {
    { pop$ "" }                                   %     return "";
                                                  %   else{
    { "\textit{" swap$ * "}" * }                  %     return "\textit{" + str + "}";
  if$                                             %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {book} {                                 % void Entry::book() {
  output.bibitem                                  %   output_bibitem();
  author missing$ author empty$ or {              %   if (missing(this.author) || empth(this.author)) {
    "No autor: " cite$ * warning$                 %     warning("No author: " + this.cite);
  } {                                             %   } else {
    author output.author                          %     output_author(this.author);
    new.block                                     %     new_block();
  } if$                                           %   }
  title missing$ title empty$ or {                %   if (missing(this.title) || empty(this.title)) {
    "No title: " cite$ * warning$                 %     warning("No title: " + this.cite);
  } {                                             %   } else {
    title output.title                            %     output_title(this.title);
    new.block                                     %     new_block();
  } if$                                           %   }
  editor missing$ editor empty$ or not {          %   if (! (missing(this.editor) || empty(this.editor))) {
    editor output.author                          %     output_author(this.editor);
    new.block                                     %     new_block();
  } {                                             %   } else {
    `skip$                                        %     ;
  } if$                                           %   }


  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      new.block
      format.number.series output
      new.sentence
      format.publisher.address output
    }
    {
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  format.note output
  fin.entry
}
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {default.type}                           % void Entry::default_type() {
{ "Unsupported entry type for " cite$ * warning$  %   warning("Unsupported entry type for " + this.cite);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {init.state.consts}                      % void init_state_consts() {
{ #0 'before.all :=                               %   before_all = 0;
  #1 'mid.sentence :=                             %   mid_sentence = 1;
  #2 'after.sentence :=                           %   after_sentence = 2;
  #3 'after.block :=                              %   after_block = 3;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {begin.bib}                              % void begin_bib() {
{ preamble$ empty$                                %   if (empty(premble)) {
    'skip$                                        %     ;
    {                                             %   } else {
      preamble$ write$                            %     write(premeable);
      newline$ }                                  %     writeln();
  if$                                             %   }
  "\begin{thebibliography}{" longest.label *      %
      "}" * write$                                %   write("\begin{thebibliography}{" + longest_label + "}")
  newline$                                        %   writeln();
  "\providecommand{\url}[1]{\texttt{#1}}" write$  %   write("\providecommand{\url}[1]{\texttt{#1}}");
  newline$                                        %   writeln();
  "\providecommand{\urlprefix}{URL }" write$      %   write("\providecommand{\urlprefix}{URL }");
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {end.bib}                                % void end_bib() {
{ newline$                                        %   writeln();
  "\end{thebibliography}" write$                  %   write("\end{thebibliography}");
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  % void main() {
READ                                              %   List<Entry> entryList = read("<file>.bib");
EXECUTE {begin.bib}                               %   begin_bib();
EXECUTE {init.state.consts}                       %   init_state_consts();
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

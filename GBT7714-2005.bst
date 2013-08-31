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
  author                                          %   String author;
  editor                                          %   String editor;
  translator                                      %   String translator;
  title                                           %   String title;
  edition                                         %   String edition;
  address                                         %   String address;
  publisher                                       %   String publisher;
  pages                                           %   String pages;
  year                                            %   String year;
  date                                            %   String date;
  modifydate                                      %   String modifydate;
  citedate                                        %   String citedate;
  url                                             %   String url;
  doi                                             %   String doi;
  language                                        %   String language;
  booktitle                                       %   String booktitle;
  journal                                         %   String journal;
  chapter                                         %   String chapter;
  series                                          %   String series;
  volume                                          %   String volume;
  number                                          %   String number;
  month                                           %   String month;
  school                                          %   String school;
  institution                                     %   String institution;
  organization                                    %   String organization;
  type                                            %   String type;
  howpublished                                    %   String howpublished;
  eid                                             %   String eid;
  key                                             %   String key;
  country                                         %   String country;
  patentid                                        %   String patentid;
  media                                           %   String media;
} {                                               %   //  declare integer variables
  required                                        %   int required;
  block                                           %   int block;
} {                                               %   //  declare String variables
  label                                           %   String label;           //  label for the entry
  mark                                            %   String mark;
  startyear                                       %   String startyear;
  endyear                                         %   String endyear;
  startvolume                                     %   String startvolume;
  endvolume                                       %   String endvolume;
  startnumber                                     %   String startnumber;
  endnumber                                       %   String endnumber;
                                                  %   //  there is ahidden entry variable sort.key$
                                                  %   String sort_key;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
INTEGERS {                                        % //  declare global int variables
  entry.count                                     % static int entry_count;          // number of entries
  longest.label.width                             % static int longest_label_width;  // width of the longest label
  i                                               % static int i;
  j                                               % static int j;
  k                                               % static int k;
}                                                 %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
STRINGS {                                         % //  declare global String variables
  longest.label                                   % static String longest_label;     //  the longest label
  s                                               % static String s;
  t                                               % static String t;
}                                                 %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {true} {#1}                              % static int const true = 1;
FUNCTION {false} {#0}                             % static int const false = 0;
FUNCTION {debug.enabled} {true}                   % static int const debug_enabled = true;
FUNCTION {cap.edition.en} {" ed"}                 % static String const cap_edition_en = " ed";
FUNCTION {cap.edition.zh} {"版"}                   % static String const cap_edition_zh = "版";
FUNCTION {cap.no.address.en} {"[S.l.]"}           % static String const cap_no_address_en = "[S.l.]";
FUNCTION {cap.no.address.zh} {"[出版地不详]"}       % static String const cap_no_address_zh = "[出版地不详]";
FUNCTION {cap.no.publisher.en} {"[s.n.]"}         % static String const cap_no_publiser_en = "[s.n.]";
FUNCTION {cap.no.publisher.zh} {"[出版者不详]"}     % static String const cap_no_publiser_zh = "[出版者不详]";
FUNCTION {cap.et.al.en} {", et~al"}               % static String const cap_et_al_en = ", et~al";
FUNCTION {cap.et.al.zh} {", 等"}                   % static String const cap_et_al_zh = ", 等";
FUNCTION {cap.translate.en} {"Translated by "}    % static String const cap_translate_en = "Translated by ";
FUNCTION {cap.translate.zh} {"译"}                 % static String const cap_translate_zh = "译";
FUNCTION {cap.doi.url} {"http://dx.doi.org/"}     % static String const cap_dor_url = "http://dx.doi.org/";
FUNCTION {cap.st.en} {"st"}                       % static String const cap_st_en = "st";
FUNCTION {cap.nd.en} {"nd"}                       % static String const cap_nd_en = "nd";
FUNCTION {cap.rd.en} {"rd"}                       % static String const cap_rd_en = "rd";
FUNCTION {cap.th.en} {"th"}                       % static String const cap_th_en = "th";
FUNCTION {cap.period} {"\@. "}                    % static String const cap_period = "\@. ";
FUNCTION {cap.comma} {", "}                       % static String const cap_comma = ", ";
FUNCTION {cap.colon} {"~: "}                      % static String const cap_colon = "~: ";
FUNCTION {cap.double.slash} {"//~"}               % static String const cap_double_slash = "//~";
FUNCTION {cap.dash} {"\,--\,"}                    % static String const cap_dash = "\,--\,";
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {log.str} {                              % void Entry::log_str(String value, String message)
  debug.enabled {                                 %   if (debug_enabled == 1) {
    "DEBUG: " swap$ * " - '" *                    %     message = "DEBUG: " + message + " - '";
    swap$ *                                       %     message = message + value;
    "'" *                                         %     message = message + "'";
    top$                                          %     log(message);
  } {                                             %   } else {
    pop$ pop$                                     %     return;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {log.int} {                              % int Entry::log_int(int value, String message)
  debug.enabled {                                 %   if (debug_enabled == 1) {
    "DEBUG: " swap$ * " - " *                     %     message = "DEBUG: " + message + " - ";
    swap$ int.to.str$ *                           %     message = message + int_to_str(value);
    top$                                          %     log(message);
  } {                                             %   } else {
    pop$ pop$                                     %     return;
  } if$                                           %   }
}                                                 % }
                                                  %                                                                                                                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {not} {                                  % int not(int x) {
  {                                               %   if (x == 1) {
    false                                         %     return false;
  } {                                             %   } else {
    true                                          %     return true;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {and} {                                  % int and(int x, int y) {
  {                                               %   if (y == 1) {
    skip$                                         %     return x;
  } {                                             %   } else {
    pop$ false                                    %     return false;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {or} {                                   % int or(int x, int y) {
  {                                               %   if (y == 1) {
    pop$ true                                     %     return true;
  } {                                             %   } else {
    skip$                                         %     return x;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % //  calculate the length in characters of a string
                                                  % //  We need this function since text.length$ is NOT
                                                  % //  the length in characters.
INTEGERS {length.i}                               % static int length_i;
FUNCTION {length} {                               % int length(String str) {
  duplicate$ empty$ {                             %   if (empty(str)) {
    pop$ #0                                       %     return 0;
  } {                                             %   } else {
    #1 'length.i :=                               %     length_i = 1;
    false                                         %     int stop = false;
    {not} {                                       %     while (! stop) {
      duplicate$ length.i #1 substring$           %       String tmp = substring(str, length_i, 1);
      "" = {                                      %       if (tmp == "") {
        true                                      %         stop = true;
      } {                                         %       } else {
        length.i #1 + 'length.i :=                %         length_i = length_i + 1;
        false                                     %         stop = false;
      } if$                                       %       }
    } while$                                      %     }
    pop$ length.i #1 -                            %     return length_i - 1;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {is.digit} {                             % int is_digit(String ch) {
  chr.to.int$                                     %   int ascii = chr_to_int(ch);
  duplicate$ "0" chr.to.int$ < {                  %   if (ascii < chr_to_int("0")) {
    pop$ false                                    %     return false;
  } {                                             %   } else {
    "9" chr.to.int$ > {                           %     if (ascii > chr_to_int("9")) {
      false                                       %       return false;
    } {                                           %     } else {
      true                                        %       return true;
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // test if str is a number
FUNCTION {is.number} {                            % int is_number(String str) {
  duplicate$ empty$ not swap$                     %   int result = (! empty(str));
  { duplicate$ empty$ not} {                      %   while (! empty(str)) {
    duplicate$ #1 #1 substring$ is.digit {        %     if (is_digit(substring(str, 1, 1))) {
      #2 global.max$ substring$                   %       str = substring(str, 2, global_max);
    } {                                           %     } else {
      pop$ pop$ false                             %       result = false;
      ""                                          %       str = "";
    } if$                                         %     }
  } while$                                        %   }
  pop$                                            %   return result;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // extract the number prefix of str
FUNCTION {extract.number} {                       % String extract_number(String str) {
  duplicate$                                      %   String suffix = str;
  duplicate$ length swap$                         %   int n = length(str);
  duplicate$ empty$                               %   int stop = empty(suffix);
  { not } {                                       %   while (! stop) {
    duplicate$ #1 #1 substring$ is.digit {        %     if (is_digit(substring(suffix, 1, 1))) {
      #2 global.max$ substring$                   %       suffix = substring(suffix, 2, global_max);
      duplicate$ empty$                           %       stop = empty(suffix);
    } {                                           %     } else {
      true                                        %       stop = true;
    } if$                                         %     }
  } while$                                        %   }
  length -                                        %   int n = n - length(suffix);
  #1 swap$ substring$                             %   return substring(str, 1, n);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {get.last.chr} {                         % String get_last_chr(String str) {
  duplicate$ length                               %   int n = length(str);
  duplicate$ #0 = {                               %   if (n == 0) {
    pop$                                          %     return str;
  } {                                             %   } else {
    #1 substring$                                 %     return substring(str, n, 1);
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {get.ordinal.suffix.en} {                % String get_ordinal_suffix_en(String ch) {
  duplicate$ "1" = {                              %   if (num == "1") {
    pop$ cap.st.en                                %     return cap_st_en;
  } {                                             %   } else {
    duplicate$ "2" = {                            %     if (num == "2") {
      pop$ cap.nd.en                              %       return cap_nd_en;
    } {                                           %     } else {
      duplicate$ "3" = {                          %       if (num == "3") {
        pop$ cap.rd.en                            %         return cap_rd_en;
      } {                                         %       } else {
        pop$ cap.th.en                            %         return cap_th_en;
      } if$                                       %       }
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {num.to.ordinal.en} {                    % String num_to_ordinal_en(String num) {
  duplicate$ empty$ {                             %   if (empty(num)) {
    skip$                                         %     return num;
  } {                                             %   } else {
    duplicate$ get.last.chr                       %     String ch = get_last_chr(num);
    get.ordinal.suffix.en                         %     String str = get_ordinal_suffix_en(ch);
    *                                             %     reutrn num + str;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
STRINGS {remove.dots.result}                      % static String remove_dots_result;
                                                  %
FUNCTION {remove.dots} {                          % String remove_dots(String str) {
  "" 'remove.dots.result :=                       %   remove_dots_result = "";
  { duplicate$ empty$ not } {                     %   while (! empty(str)) {
    duplicate$ #1 #2 substring$                   %     String tmp = substring(str, 1, 2);
    "\." = {                                      %     if (tmp == "\.") {
      #3 global.max$ substring$                   %       str = substring(str, 3, global_max);
    } {                                           %     } else {
      duplicate$ #1 #1 substring$                 %       tmp = substring(str, 1, 1);
      duplicate$ "." = {                          %       if (tmp == ".") {
        pop$ #2 global.max$ substring$            %         str = substring(str, 2, global_max);
      } {                                         %       } else {
        remove.dots.result swap$ *                %         tmp = remove_dots_result + tmp;
        'remove.dots.result :=                    %         remove_dots_result = tmp;
        #2 global.max$ substring$                 %         str = substring(str, 2, global_max);
      } if$                                       %       }
    } if$                                         %     }
  } while$                                        %   }
  pop$ remove.dots.result                         %   return remove_dots_result;
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
FUNCTION {add.bracket} {                          % String Entry::bracket(String str) {
  ")" * "(" swap$ *                               %   return "(" + str + ")";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {add.squarebracket} {                    % String Entry::add_squarebracket(String str) {
  "]" * "[" swap$ *                               %   return "[" + str + "]";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // test if str contains a dash '-'
FUNCTION {contain.dash} {                         % int contain_dash(String str) {
  false swap$                                     %   int result = false;
  { duplicate$ empty$ not} {                      %   while (! empty(str)) {
    duplicate$ #1 #1 substring$ "-" = {           %     if (substring(str, 1, 1) == "-") {
      pop$ pop$ true                              %       result = true;
      ""                                          %       str = "";
    } {                                           %     } else {
      #2 global.max$ substring$                   %       str = substring(str, 2, global_max);
    } if$                                         %     }
  } while$                                        %   }
  pop$                                            %   return result;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // extract the substring before the first '-'
                                                  % // returns the string itself if no '-'
FUNCTION {extract.before.first.dash} {            % String extract_before_first_dash(String str) {
  duplicate$                                      %   String suffix = str;
  duplicate$ length swap$                         %   int n = length(str);
  duplicate$ empty$                               %   int stop = empty(suffix);
  { not } {                                       %   while (! stop) {
    duplicate$ #1 #1 substring$ "-" = {           %     if (substring(suffix, 1, 1) == "-") {
      true                                        %       stop = true;
    } {                                           %     } else {4r
      #2 global.max$ substring$                   %       suffix = substring(suffix, 2, global_max);
      duplicate$ empty$                           %       stop = empty(suffix);
    } if$                                         %     }
  } while$                                        %   }
  length -                                        %   int n = n - length(suffix);
  #1 swap$ substring$                             %   return substring(str, 1, n);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // extract the substring after the first '-'
                                                  % // returns the string itself if no '-'
FUNCTION {extract.after.first.dash} {             % String extract_after_first_dash(String str) {
  duplicate$                                      %   String suffix = str;
  duplicate$ empty$                               %   int stop = empty(suffix);
  { not } {                                       %   while (! stop) {
    duplicate$ #1 #1 substring$ "-" = {           %     if (substring(suffix, 1, 1) == "-") {
      true                                        %       stop = true;
    } {                                           %     } else {4r
      #2 global.max$ substring$                   %       suffix = substring(suffix, 2, global_max);
      duplicate$ empty$                           %       stop = empty(suffix);
    } if$                                         %     }
  } while$                                        %   }
  duplicate$ empty$ {                             %   if (empty(suffix)) {
    pop$                                          %     return str;
  } {                                             %   } else {
    swap$ pop$ #2 global.max$ substring$          %     return substring(suffix, 2, global_max);
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // extract the substring after the last '-'
                                                  % // returns the empty string if no '-'
FUNCTION {extract.after.last.dash} {              % String extract_after_last_dash(String str) {
  duplicate$ contain.dash not {                   %   if (! contain_dash(str)) {
    pop$ ""                                       %     return "";
  } {                                             %   } else {
    {duplicate$ contain.dash} {                   %     while (contain_dash(str)) {
      extract.after.first.dash                    %       str = extract_after_first_dash(str);
    } while$                                      %     }
                                                  %     return str;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {trim.start} {                           % String trim_start(String str) {
  {duplicate$ #1 #1 substring$ " " =} {           %   while (substring(str, 1, 1) == " ") {
    #2 global.max$ substring$                     %     str = substring(str, 2, global_max);
  } while$                                        %   }
                                                  %   return str;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {trim.end} {                             % String trim_end(String str) {
  {duplicate$ get.last.chr " " =} {               %   while (get_last_chr(str) == " ") {
    duplicate$ length #1 -                        %     int n = length(str) - 1;
    #1 swap$ substring$                           %     str = substring(str, 1, n);
  } while$                                        %   }
                                                  %   return str;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {trim} {                                 % String trim(String str) {
  trim.start                                      %   str = trim_start(str);
  trim.end                                        %   return trim_end(str);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {start.bibitem} {                        % void Entry::start_bibitem() {
  newline$                                        %   writeln();
  "\bibitem{" cite$ * "}" * write$                %   write("\bibitem{" + this.cite + "}");
  newline$                                        %   writeln();
  #0 'block :=                                    %   this.block = 0;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {end.bibitem} {                          % void Entry::end_bibitem() {
  newline$                                        %   writeln();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {new.block} {                            % void Entry::new_block() {
  block #0 > {                                    %   if (this.block > 0) {
    newline$                                      %     writeln();
    "\newblock " write$                           %     write("\newblock");
  } 'skip$ if$                                    %   }
  block #1 + 'block :=                            %   this.block = this.block + 1;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {is.in.chinese} {                        % int Entry::is_in_chinese() {
  language empty$ {                               %   if (empty(this.language)) {
    false                                         %     return false;
  } {                                             %   } else {
    language "zh" = {                             %     if (this.language == "zh") {
      true                                        %       return true;
    } {                                           %     } else {
      false                                       %       return false;
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {is.online} {                            % int Entry::is_online() {
  url empty$ not {                                %   if (! empty(this.url)) {
    true                                          %     return true;
  } {                                             %   } else {
    doi empty$ not {                              %     if (! empty(this.doi)) {
      true                                        %       return true;
    } {                                           %     } else {
      false                                       %       return false;
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {set.mark} {                             % void Entry::set_mark(String mark) {
  'mark :=                                        %   this.mark = mark;
  is.online {                                     %   if (is_online()) {
    mark "/OL" * 'mark :=                         %     this.mark = this.mark + "/OL";
  } {                                             %   } else {
    media empty$ not {                            %     if (! empty(this.media)) {
      mark "/" * media * 'mark :=                 %       this.mark = this.mark + "/" + this.media;
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {cap.edition} {                          % String Entry::cap_edition() {
  is.in.chinese {                                 %   if (is_in_chinese()) {
    cap.edition.zh                                %     return cap_edition_zh;
  } {                                             %   } else {
    cap.edition.en                                %     return cap_edition_en;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {cap.no.address} {                       % String Entry::cap_no_address() {
  is.in.chinese {                                 %   if (is_in_chinese()) {
    cap.no.address.zh                             %     return cap_no_address_zh;
  } {                                             %   } else {
    cap.no.address.en                             %     return cap_no_address_en;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {cap.no.publisher} {                     % String Entry::cap_no_publisher() {
  is.in.chinese {                                 %   if (is_in_chinese()) {
    cap.no.publisher.zh                           %     return cap_no_publisher_zh;
  } {                                             %   } else {
    cap.no.publisher.en                           %     return cap_no_publisher_en;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {cap.et.al} {                            % String Entry::cap_et_al() {
  is.in.chinese {                                 %   if (is_in_chinese()) {
    cap.et.al.zh                                  %     return cap_et_al_zh;
  } {                                             %   } else {
    cap.et.al.en                                  %     return cap_et_al_en;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {cap.translate} {                        % String Entry::cap_translate() {
  is.in.chinese {                                 %   if (is_in_chinese()) {
    cap.translate.zh                              %     return cap_translate_zh;
  } {                                             %   } else {
    cap.translate.en                              %     return cap_translate_en;
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.bibinfo} {                       % String Entry::format_bibinfo(String info, String type) {
  add.brace                                       %   type = add_brace(type);
  swap$ add.brace swap$                           %   info = add_brace(info);
  "\bibinfo" swap$ * swap$ *                      %   return "\bibinfo" + type + info;
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INTEGERS { nameindex namecount }                  % static int nameindex, namecount;
STRINGS  { namelist nameformat }                  % static String namelist, nameformat;
STRINGS  { firstname lastname jrname vonname}     % static String firstname, lastname, jrname, vonname;
                                                  %
FUNCTION {format.names} {                         % String Entry::format_names(String names) {
  'namelist :=                                    %   namelist = names;
  namelist num.names$ 'namecount :=               %   namecount = num_names(namelist);
  ""                                              %   String result = "";
  #0 'nameindex :=                                %   nameindex = 0;
  {nameindex namecount < nameindex #3 < and} {    %   while ((nameindex < namecount) && (nameindex < 3)) {
    nameindex #1 + 'nameindex :=                  %     nameindex = nameindex + 1;
    nameindex #1 > {                              %     if (nameindex > 1) {
      cap.comma *                                 %       result = result + cap_comma;
    } 'skip$ if$                                  %     }
    namelist nameindex "{vv}" format.name$        %     String tmp = format_name(namelist, nameindex, "{vv}");
   'vonname :=                                    %     vonname = tmp;
    namelist nameindex "{jj}" format.name$        %     tmp = format_name(namelist, nameindex, "{jj}");
    remove.dots 'jrname :=                        %     jrname = remove_dots(tmp);
    namelist nameindex "{f}" format.name$         %     tmp = format_name(namelist, nameindex, "{f}");
    remove.dots                                   %     tmp = remove_dots(tmp);
    "u" change.case$ 'firstname :=                %     firstname = change_case(tmp, "u");
    namelist nameindex "{ll}" format.name$        %     tmp = format_name(namelist, nameindex, "{ll}");
    "u" change.case$ 'lastname :=                 %     lastname = change_case(tmp, "u");
    jrname empty$ not {                           %     if (! empty(jrname)) {
      jrname * " " *                              %       result = result + jrname + " "
    } 'skip$ if$                                  %     }
    vonname empty$ not {                          %     if (! empty(vonname)) {
      vonname * " " *                             %       result = result + vonname + " "
    } 'skip$ if$                                  %     }
    lastname empty$ not {                         %     if (! empty(lastname)) {
      lastname * " " *                            %       result = result + lastname + " "
    } 'skip$ if$                                  %     }
    firstname empty$ not {                        %     if (! empty(firstname)) {
      firstname * " " *                           %       result = result + firstname + " "
    } 'skip$ if$                                  %     }
    trim.end                                      %     result = trim_end(result);
  } while$                                        %   }
  nameindex namecount < {                         %   if (nameindex < namecount) {
    cap.et.al *                                   %     result = result + cap_et_al();
  } 'skip$ if$                                    %   }
}                                                 % }
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // format English names
FUNCTION {format.names.en} {                      % String Entry::format_names_en(String names) {
  format.names                                    %   format_names(names);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  % // format Chinese names
FUNCTION {format.names.zh} {                      % String Entry::format_names_zh(String names) {
  format.names                                    %   format_names(names);
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.author} {                        % String Emtry::format_author(String authors) {
  is.in.chinese {                                 %   if (is_in_chinese) {
    format.names.zh                               %     authors = format_names_zh(authors);
  } {                                             %   } else {
    format.names.en                               %     authors = format_names_en(authors);
  } if$                                           %   }
  "author" format.bibinfo                         %   return format_bibinfo(authors, "author");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.editor} {                        % String Emtry::format_author(String editors) {
  is.in.chinese {                                 %   if (is_in_chinese) {
    format.names.zh                               %     editors = format_names_zh(editors);
  } {                                             %   } else {
    format.names.en                               %     editors = format_names_en(editors);
  } if$                                           %   }
  "editor" format.bibinfo                         %   return format_bibinfo(editors, "editor");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.translator} {                    % String Emtry::format_translator(String translators) {
  is.in.chinese {                                 %   if (is_in_chinese) {
    duplicate$                                    %     String names = translators;
    format.names.zh                               %     translators = format_names_zh(translators);
    swap$ num.names$ #3 > {                       %   if (num_names(names) > 3) {
      cap.translate.zh *                          %     translators = translators + cap_translate_zh;
    } {                                           %   } else {
      cap.comma * cap.translate.zh *              %     translators = translators + cap_comma + cap_translate_zh;
    } if$                                         %   }
  } {                                             %   } else {
    format.names.en                               %     translators = format_names_en(translators);
    cap.translate.en swap$ *                      %     translators = cap.translate.en + translators;
  } if$                                           %   }
  "translator" format.bibinfo                     %   return format_bibinfo(translator, "translator");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.title} {                         % String Emtry::format_title(String title) {
  "title" format.bibinfo                          %   return format_bibinfo(title, "title");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.booktitle} {                     % String Emtry::format_booktitle(String booktitle) {
  "booktitle" format.bibinfo                      %   return format_bibinfo(booktitle, "booktitle");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.mark} {                          % String Emtry::format_mark(String mark) {
  "[" swap$ * "]" *                               %   mark = "[" + mark + "]";
  "mark" format.bibinfo                           %   return format_bibinfo(mark, "mark");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.country} {                       % String Emtry::format_country(String country) {
  "country" format.bibinfo                        %   return format_bibinfo(country, "country");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.patentid} {                      % String Emtry::format_patentid(String patentid) {
  "patentid" format.bibinfo                       %   return format_bibinfo(patentid, "patentid");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.edition} {                       % String Emtry::format_edition(String edition) {
  duplicate$ is.number {                          %   if (is_number(edition)) {
    is.in.chinese {                               %     if (is_in_chinese()) {
      cap.edition.zh *                            %       edition = edition + cap_edition_zh;
    } {                                           %     } else {
      num.to.ordinal.en cap.edition.en *          %       edition = num_to_ordinal_en(edition) + cap_edition_en;
    } if$                                         %     }
  } 'skip$ if$                                    %   }
                                                  %   //  use a \mbox{} to prevent line break within edition
  "\mbox{" swap$ * "}" *                          %   edition = "\mbox{" + edition + "}";
  "edition" format.bibinfo                        %   return format_bibinfo(edition, "edition");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.organization} {                  % String Emtry::format_organization(String organization) {
  "organization" format.bibinfo                   %   return format_bibinfo(organization, "organization");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.address} {                       % String Emtry::format_address(String address) {
  "address" format.bibinfo                        %   return format_bibinfo(address, "address");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.publisher} {                     % String Emtry::format_publisher(String publisher) {
  "publisher" format.bibinfo                      %   return format_bibinfo(publisher, "publisher");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.institution} {                   % String Emtry::format_institution(String institution) {
  "institution" format.bibinfo                    %   return format_bibinfo(institution, "institution");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.school} {                        % String Emtry::format_school(String school) {
  "school" format.bibinfo                         %   return format_bibinfo(school, "school");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.year} {                          % String Emtry::format_year(String year) {
  "year" format.bibinfo                           %   return format_bibinfo(year, "year");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.date} {                          % String Emtry::format_date(String date) {
  "date" format.bibinfo                           %   return format_bibinfo(date, "date");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.journal} {                       % String Emtry::format_journal(String journal) {
  "journal" format.bibinfo                        %   return format_bibinfo(journal, "journal");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.volume} {                        % String Emtry::format_volume(String volume) {
  "volume" format.bibinfo                         %   return format_bibinfo(volume, "volume");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.number} {                        % String Emtry::format_number(String number) {
  add.bracket                                     %   number = add_bracket(number);
  "number" format.bibinfo                         %   return format_bibinfo(number, "number");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.pages} {                         % String Emtry::format_pages(String pages) {
  "pages" format.bibinfo                          %   return format_bibinfo(pages, "pages");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.modifydate} {                    % String Emtry::format_modifydate(String modifydate) {
  add.bracket                                     %   modifydate = add_bracket(modifydate);
  "modifydate" format.bibinfo                     %   return format_bibinfo(modifydate, "modifydate");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {format.citedate} {                      % String Emtry::format_citedate(String citedate) {
  add.squarebracket                               %   citedate = add_squarebracket(citedate);
  "citedate" format.bibinfo                       %   return format_bibinfo(citedate, "citedate");
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  % // NOTE: do not use the format_bibinfo() for URL,
                                                  % // since if the URL contains special symbols such
                                                  % // as '%', the \bibinfo{}{} will be broken.
FUNCTION {format.url} {                           % String Emtry::format_url(String url) {
  "\url{" swap$ * "}" *                           %   return "\url{" + url + "}";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.author} {                        % void Entry::output_author(int required) {
  'required :=                                    %   this.required = required;
  author empty$ not {                             %   if (! empty(this.author)) {
    author format.author write$                   %     write(format_author(this.author));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No author: " cite$ * warning$              %       warning("No author: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.author.or.editor} {              % void Entry::output_author_or_editor(int required) {
  'required :=                                    %   this.required = required;
  author empty$ not {                             %   if (! empty(this.author)) {
    author format.author write$                   %     write(format_author(this.author));
  } {                                             %   } else {
    editor empty$ not {                           %     if (! empty(this.editor)) {
      editor format.editor write$                 %       write(format_editor(this.editor));
    } {                                           %     } else {
      required {                                  %       if (required == 1) {
        "No author or editor: " cite$ * warning$  %         warning("No author or editor: " + this.cite);
      } 'skip$ if$                                %       }
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.editor} {                        % void Entry::output_editor(int required) {
  'required :=                                    %   this.required = required;
  editor empty$ not {                             %   if (! empty(this.editor)) {
    editor format.editor write$                   %     write(format_editor(this.editor));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No editor: " cite$ * warning$              %       warning("No editor: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.translator} {                    % void Entry::output_translator(int required) {
  'required :=                                    %   this.required = required;
  translator empty$ not {                         %   if (! empty(this.translator)) {
    translator format.translator write$           %     write(format_translator(this.translator));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No translator: " cite$ * warning$          %       warning("No translator: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.title} {                         % void Entry::output_title(int required) {
  'required :=                                    %   this.required = required;
  title empty$ not {                              %   if (! empty(this.title)) {
    title format.title write$                     %     write(format_title(this.title));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No title: " cite$ * warning$               %       warning("No title: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.mark} {                          % void Entry::output_mark(int required) {
  'required :=                                    %   this.required = required;
  mark empty$ not {                               %   if (! empty(this.mark)) {
    "\," write$                                   %     write("\,");   // write a tie to prevent bad break
    mark format.mark write$                       %     write(format_mark(this.mark));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No mark: " cite$ * warning$                %       warning("No mark: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.country} {                       % void Entry::output_country(int required) {
  'required :=                                    %   this.required = required;
  country empty$ not {                            %   if (! empty(this.country)) {
    country format.country write$                 %     write(format_country(this.country));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No country: " cite$ * warning$             %       warning("No country: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.patentid} {                      % void Entry::output_patentid(int required) {
  'required :=                                    %   this.required = required;
  patentid empty$ not {                           %   if (! empty(this.patentid)) {
    patentid format.patentid write$               %     write(format_patentid(this.patentid));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No patentid: " cite$ * warning$            %       warning("No patentid: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.booktitle} {                     % void Entry::output_booktitle(int required) {
  'required :=                                    %   this.required = required;
  booktitle empty$ not {                          %   if (! empty(this.booktitle)) {
    booktitle format.booktitle write$             %     write(format_booktitle(this.booktitle));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No booktitle: " cite$ * warning$           %       warning("No booktitle: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.edition} {                       % void Entry::output_edition(int required) {
  'required :=                                    %   this.required = required;
  edition empty$ not {                            %   if (! empty(this.edition)) {
    edition format.edition write$                 %     write(format_edition(this.edition));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No edition: " cite$ * warning$             %       warning("No edition: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.organization} {                  % void Entry::output_organization(int required) {
  'required :=                                    %   this.required = required;
  organization empty$ not {                       %   if (! empty(this.organization)) {
    organization format.organization write$       %     write(format_organization(this.organization));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No organization: " cite$ * warning$        %       warning("No organization: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.address} {                       % void Entry::output_address(int required) {
  'required :=                                    %   this.required = required;
  address empty$ not {                            %   if (! empty(this.address)) {
    address format.address write$                 %     write(format_address(this.address));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No address: " cite$ * warning$             %       warning("No address: " + this.cite);
      cap.no.address format.address write$        %       write(format_address(cap_no_address()));
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.publisher} {                     % void Entry::output_publiser(int required) {
  'required :=                                    %   this.required = required;
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    publisher format.publisher write$             %     write(format_publisher(this.publisher));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No publisher: " cite$ * warning$           %       warning("No publiser: " + this.cite);
      cap.no.publisher format.publisher write$    %       write(format_publisher(cap_no_publisher()));
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.institution} {                   % void Entry::output_institution(int required) {
  'required :=                                    %   this.required = required;
  institution empty$ not {                        %   if (! empty(this.institution)) {
    institution format.institution write$         %     write(format_institution(this.institution));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No institution: " cite$ * warning$         %       warning("No institution: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.school} {                        % void Entry::output_school(int required) {
  'required :=                                    %   this.required = required;
  school empty$ not {                             %   if (! empty(this.school)) {
    school format.school write$                   %     write(format_school(this.school));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No school: " cite$ * warning$              %       warning("No school: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.journal} {                       % void Entry::output_journal(int required) {
  'required :=                                    %   this.required = required;
  journal empty$ not {                            %   if (! empty(this.journal)) {
    journal format.journal write$                 %     write(format_journal(this.journal));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No journal: " cite$ * warning$             %       warning("No journal: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.year} {                          % void Entry::output_year(int required) {
  'required :=                                    %   this.required = required;
  year empty$ not {                               %   if (! empty(this.year)) {
    year format.year write$                       %     write(format_year(this.year));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No year: " cite$ * warning$                %       warning("No year: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.date} {                          % void Entry::output_date(int required) {
  'required :=                                    %   this.required = required;
  date empty$ not {                               %   if (! empty(this.date)) {
    date format.date write$                       %     write(format_date(this.date));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No date: " cite$ * warning$                %       warning("No date: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.modifydate} {                    % void Entry::output_modifydate(int required) {
  'required :=                                    %   this.required = required;
  modifydate empty$ not {                         %   if (! empty(this.modifydate)) {
    modifydate format.modifydate write$           %     write(format_modifydate(this.modifydate));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No modifydate: " cite$ * warning$          %       warning("No modifydate: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.volume} {                        % void Entry::output_volume(int required) {
  'required :=                                    %   this.required = required;
  volume empty$ not {                             %   if (! empty(this.volume)) {
    volume format.volume write$                   %     write(format_volume(this.volume));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No volume: " cite$ * warning$              %       warning("No volume: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.number} {                        % void Entry::output_number(int required) {
  'required :=                                    %   this.required = required;
  number empty$ not {                             %   if (! empty(this.number)) {
    number format.number write$                   %     write(format_number(this.number));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No number: " cite$ * warning$              %       warning("No number: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.pages} {                         % void Entry::output_pages(int required) {
  'required :=                                    %   this.required = required;
  pages empty$ not {                              %   if (! empty(this.pages)) {
    pages contain.dash {                          %     if (contain_dash(this.pages)) {
      pages extract.before.first.dash             %       String p1 = extract_before_first_dash(this.pages);
      pages extract.after.last.dash               %       String p2 = extract_after_last_dash(this.pages);
      cap.dash swap$ * *                          %       String str = p1 + cap_dash + p2;
      format.pages write$                         %       write(format_pages(str));
    } {                                           %     } else {
      pages format.pages write$                   %     write(format_pages(this.pages));
    } if$                                         %   }
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No pages: " cite$ * warning$               %       warning("No pages: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.citedate} {                      % void Entry::output_citedate(int required) {
  'required :=                                    %   this.required = required;
  citedate empty$ not {                           %   if (! empty(this.citedate)) {
    citedate format.citedate write$               %     write(format_citedate(this.citedate));
  } {                                             %   } else {
    required {                                    %     if (required == 1) {
      "No citedate: " cite$ * warning$            %       warning("No citedate: " + this.cite);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {output.url} {                           % void Entry::output_url(int required) {
  'required :=                                    %   this.required = required;
  url empty$ not {                                %   if (! empty(this.url)) {
    url format.url write$                         %     write(format_url(this.url));
  } {                                             %   } else {
    doi empty$ not {                              %     if (! empty(this.doi)) {
      cap.doi.url doi * format.url write$         %       write(format_url(cap_doi_url + this.doi));
    } {                                           %     } else {
      required {                                  %       if (required == 1) {
        "No URL or DOI: " cite$ * warning$        %         warning("No URL or DOI: " + this.cite);
      } 'skip$ if$                                %       }
    } if$                                         %     }
  } if$                                           %   }
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {book.impl} {                            % void Entry::book_impl() {
  start.bibitem                                   %   start_bibitem();
  true output.author.or.editor                    %   output_author_or_editor(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  author empty$ not editor empty$ not and {       %   if ((! empty(this.author)) && (! empty(this.editor))) {
    true output.editor                            %     output_editor(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  translator empty$ not {                         %   if (! empty(this.translator)) {
    true output.translator                        %     output_translator(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  edition empty$ not {                            %   if (! empty(this.edition)) {
    true output.edition                           %     output_edition(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } {                                             %   } else {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } if$                                           %   }
  true output.year                                %   output_year(true);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    true output.pages                             %     output_pages(true);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {book} {                                 % void Entry::book() {
  "M" set.mark                                    %   set_mark("M");
  book.impl                                       %   book_impl();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {inbook.impl} {                          % void Entry::inbook_impl() {
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  translator empty$ not {                         %   if (! empty(this.translator)) {
    true output.translator                        %     output_translator(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  cap.double.slash write$                         %   write(cap_double_slash);
  editor empty$ not {                             %   if (! empty(this.editor)) {
    true output.editor                            %     output_editor(true);
    cap.period write$                             %     write(cap_period);
  } {                                             %   } else {
    "No editor: " cite$ * warning$                %     warning("No editor: " + this.cite);
  } if$                                           %   }
  true output.booktitle                           %   output_booktitle(true);
  cap.period write$                               %   write(cap_period);
  edition empty$ not {                            %   if (! empty(this.edition)) {
    true output.edition                           %     output_edition(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } {                                             %   } else {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } if$                                           %   }
  true output.year                                %   output_year(true);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    false output.pages                            %     output_pages(false);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {inbook} {                               % void Entry::inbook() {
  "M" set.mark                                    %   set_mark("M");
  inbook.impl                                     %   inbook_impl();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {collection} {                           % void Entry::collection() {
  "G" set.mark                                    %   set_mark("G");
  book.impl                                       %   book_impl();
}                                                 % }
                                                  %
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {incollection} {                         % void Entry::incollection() {
  "G" set.mark                                    %   set_mark("G");
  inbook.impl                                     %   inbook_impl();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {periodical} {                           % void Entry::periodical() {
  "J" set.mark                                    %   set_mark("J");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  year empty$ not {                               %   if (! empty(this.year)) {
    year extract.before.first.dash                %     String tmp = extract_before_first_dash(year);
    format.year write$                            %     write(format_year(tmp));
  } {                                             %   } else {
    "No year: " cite$ * warning$                  %     warning("No year: " + this.cite);
  } if$                                           %   }
  volume empty$ not {                             %   if (! empty(this.volume)) {
    cap.comma write$                              %     write(cap_comma);
    volume extract.before.first.dash              %     String tmp = extract_before_first_dash(this.volume);
    format.volume write$                          %     write(format_volume(tmp));
  } 'skip$ if$                                    %   }
  number empty$ not {                             %   if (! empty(this.number)) {
    number extract.before.first.dash              %     String tmp = extract_before_first_dash(this.number);
    format.number write$                          %     write(format_number(tmp));
  } 'skip$ if$                                    %   }
  cap.dash write$                                 %   write(cap_dash);
  year contain.dash {                             %   if (contain_dash(this.year)) {
    year extract.after.last.dash                  %     String tmp = extract_after_last_dash(this.year);
    format.year write$                            %     write(format_year(tmp));
    volume empty$ not {                           %     if (! empty(this.volume)) {
      cap.comma write$                            %       write(cap_comma);
      volume extract.after.last.dash              %       tmp = extract_after_last_dash(this.volume);
      format.volume write$                        %       write(format_volume(tmp));
    } 'skip$ if$                                  %     }
    number empty$ not {                           %     if (! empty(this.number)) {
      number extract.after.last.dash              %       tmp = extract_after_last_dash(this.number);
      format.number write$                        %       write(format_number(tmp));
    } 'skip$ if$                                  %     }
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } {                                             %   } else {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } if$                                           %   }
  year extract.before.first.dash                  %   String tmp = extract_before_first_dash(year);
  format.year write$                              %   write(format_year(tmp));
  cap.dash write$                                 %   write(cap_dash);
  year contain.dash {                             %   if (contain_dash(this.year)) {
    year extract.after.last.dash                  %     String tmp = extract_after_last_dash(year);
    format.year write$                            %     write(format_year(tmp));                                            %
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {article} {                              % void Entry::article() {
  "J" set.mark                                    %   set_mark("J");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  true output.journal                             %   output_journal(true);
  cap.comma write$                                %   write(cap_comma);
  true output.year                                %   output_year(true);
  volume empty$ not {                             %   if (! empty(this.volume)) {
    cap.comma write$                              %     write(cap_comma);
    true output.volume                            %     output_volume(true);
  } 'skip$ if$                                    %   }
  false output.number                             %   output_number(false);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    false output.pages                            %     output_pages(false);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {proceedings} {                          % void Entry::proceedings() {
  "C" set.mark                                    %   set_mark("C");
  start.bibitem                                   %   start_bibitem();
  true output.editor                              %   output_editor(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } {                                             %   } else {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } if$                                           %   }
  true output.year                                %   output_year(true);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    false output.pages                            %     output_pages(false);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {conference} {                           % void Entry::conference() {
  proceedings                                     %   proceedings();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {inproceedings} {                        % void Entry::inproceedings() {
  "C" set.mark                                    %   set_mark("C");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  cap.double.slash write$                         %   write(cap_double_slash);
  editor empty$ not {                             %   if (! empty(this.editor)) {
    true output.editor                            %     output_editor(true);
    cap.period write$                             %     write(cap_period);
  } {                                             %   } else {
    "No editor: " cite$ * warning$                %     warning("No editor: " + this.cite);
  } if$                                           %   }
  true output.booktitle                           %   output_booktitle(true);
  cap.period write$                               %   write(cap_period);
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } {                                             %   } else {
    "No publisher: " cite$ * warning$             %     warning("No publisher: " + this.cite);
  } if$                                           %   }
  true output.year                                %   output_year(true);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    false output.pages                            %     output_pages(false);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {newspaper} {                            % void Entry::newspaper() {
  "N" set.mark                                    %   set_mark("N");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  true output.journal                             %   output_journal(true);
  cap.comma write$                                %   write(cap_comma);
  true output.date                                %   output_date(true);
  false output.number                             %   output_number(false);
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {standard} {                             % void Entry::standard() {
  "S" set.mark                                    %   set_mark("S");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  translator empty$ not {                         %   if (! empty(this.translator)) {
    true output.translator                        %     output_translator(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
  } 'skip$ if$                                    %   }
  true output.year                                %   output_year(true);
  pages empty$ not {                              %   if (! empty(this.pages)) {
    cap.colon write$                              %     write(cap_colon);
    false output.pages                            %     output_pages(false);
  } 'skip$ if$                                    %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {techreport} {                           % void Entry::techreport() {
  "R" set.mark                                    %   set_mark("R");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  translator empty$ not {                         %   if (! empty(this.translator)) {
    true output.translator                        %     output_translator(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  institution empty$ not {                        %   if (! empty(this.institution)) {
    address empty$ not {                          %     if (! empty(this.address)) {
      true output.address                         %       output_address(true);
      cap.colon write$                            %       write(cap_colon);
    } {                                           %     } else {
      "No address: " cite$ * warning$             %       warning("No address: " + this.cite);
    } if$                                         %     }
    true output.institution                       %     output_institution(true);
    cap.comma write$                              %     write(cap_comma);
  } 'skip$ if$                                    %   }
  true output.year                                %   output_year(true);
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {phdthesis} {                            % void Entry::phdthesis() {
  "D" set.mark                                    %   set_mark("D");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  translator empty$ not {                         %   if (! empty(this.translator)) {
    true output.translator                        %     output_translator(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  true output.address                             %   output_address(true);
  cap.colon write$                                %   write(cap_colon);
  true output.school                              %   output_school(true);
  cap.comma write$                                %   write(cap_comma);
  true output.year                                %   output_year(true);
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {masterthesis} {                         % void Entry::masterthesis() {
  phdthesis                                       %   phdthesis();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {bachelorthesis} {                       % void Entry::bachelorthesis() {
  phdthesis                                       %   phdthesis();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {online} {                               % void Entry::online() {
  "EB" set.mark                                   %   set_mark("EB");
  start.bibitem                                   %   start_bibitem();
  author empty$ not {                             %   if (! empty(this.author)) {
    true output.author                            %     output_author(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publiser(true);
    cap.comma write$                              %     write(cap_comma);
    true output.year                              %     output_year(true);
  } {                                             %   } else {
    year empty$ not {                             %     if (! empty(this.year)) {
      true output.year                            %       output_year(true);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
  false output.modifydate                         %   output_modifydate(false);
  true output.citedate                            %   output_citedate(true);
  cap.period write$                               %   write(cap_period);
  true output.url                                 %   output_url(true);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {patent} {                               % void Entry::patent() {
  "P" set.mark                                    %   set_mark("P");
  start.bibitem                                   %   start_bibitem();
  true output.author                              %   output_author(true);
  cap.period write$                               %   write(cap_period);
  true output.title                               %   output_title(true);
  cap.colon write$                                %   write(cap_colon);
  true output.country                             %   output_country(true);
  cap.comma write$                                %   write(cap_comma);
  true output.patentid                            %   output_patentid(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  true output.date                                %   output_date(true);
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
FUNCTION {program} {                              % void Entry::program() {
  "CP" set.mark                                   %   set_mark("CP");
  start.bibitem                                   %   start_bibitem();
  author empty$ not {                             %   if (! empty(this.author)) {
    true output.author                            %     output_author(true);
    cap.period write$                             %     write(cap_period);
  } 'skip$ if$                                    %   }
  true output.title                               %   output_title(true);
  true output.mark                                %   output_mark(true);
  cap.period write$                               %   write(cap_period);
  publisher empty$ not {                          %   if (! empty(this.publisher)) {
    true output.address                           %     output_address(true);
    cap.colon write$                              %     write(cap_colon);
    true output.publisher                         %     output_publisher(true);
    cap.comma write$                              %     write(cap_comma);
    true output.year                              %     output_year(true);
  } {                                             %   } else {
    year empty$ not {                             %     if (! empty(this.year)) {
      true output.year                            %       output_year(true);
    } 'skip$ if$                                  %     }
  } if$                                           %   }
  is.online {                                     %   if (is_online()) {
    true output.citedate                          %     output_citedate(true);
    cap.period write$                             %     write(cap_period);
    true output.url                               %     output_url(true);
  } 'skip$ if$                                    %   }
  cap.period write$                               %   write(cap_period);
  end.bibitem                                     %   end_bibitem();
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
  #0 'entry.count :=                              %   entry_count = 0;
  #0 'longest.label.width :=                      %   longest_label_width = 0;
  "" 'longest.label :=                            %   longest_label = "";
}                                                 % }
                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                  %
                                                  % void main() {
READ                                              %   List<Entry> entryList = read("<file>.bib");
EXECUTE {initialize}                              %   initialize();
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
%% End of file `GBT7714-2005.bst'

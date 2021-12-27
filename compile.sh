for file in $@; do
  echo -e '\x1b[1mCompiling' $file '\x1b[0m'
  pandoc ./${file} -f latex -o ./${file}.html -t html --katex || echo -e '\x1b[31mError while compiling' $file '\x1b[0m'
done
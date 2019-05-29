hello_xml <- function() {
  message("Hello world!")
  xml <- read_xml("<body></body>")
  f <- future(xml_children(xml))
  value(f)
}

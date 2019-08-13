
# Dependencias ------------------------------------------------------------
library(rvest)
library(stringr)
library(xml2)
# Descarga de datos -------------------------------------------------------
pagina <- read_html("https://www.encuentra24.com/costa-rica-es/searchresult/bienes-raices-venta-de-propiedades?q=withcat.|f_currency.crc|notcat.|imagesonly.|advancedsearch.&regionslug=san-jose-provincia-montes-de-oca-san-pedro")

#xpath (estiquetas)
pagina %>% 
  html_node(xpath = "//div[@itemprop= 'price']") %>%
  html_text(trim = TRUE) ->precio
#cargar todos los precios en pagina actual
pagina %>% 
  html_nodes(xpath = "//div[@itemprop= 'price']") %>%
  html_text(trim = TRUE) -> precios
#cosas que debo buscar para la vida
#¿que es html, que es xpath, que son las expresiones regulares?

str_extract(precios, pattern = "\\d+(\\, \\d+\\.\\d+")



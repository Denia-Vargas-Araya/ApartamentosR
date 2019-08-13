
# Dependencias ------------------------------------------------------------
library(rvest)
library(stringr)
library(xml2)
# Descarga de datos -------------------------------------------------------
pagina <- read_html("https://www.encuentra24.com/costa-rica-es/searchresult/bienes-raices-venta-de-propiedades?q=withcat.|f_currency.crc|notcat.|imagesonly.|advancedsearch.&regionslug=san-jose-provincia-montes-de-oca-san-pedro")

#xpath (estiquetas)
pagina %>% 
  html_node(xpath = ".//div[@itemprop= 'price']") %>%
  html_text(trim = TRUE)





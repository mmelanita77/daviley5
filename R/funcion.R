library(ggplot2)

grafico_cajas <- function() {
  # 1. Datos de ejemplo: generamos multiples valores por mes
  set.seed(123)
  datos <- data.frame(
    meses = rep(c("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio"), each = 30),
    ventas = c(
      rnorm(30, mean = 500, sd = 80),
      rnorm(30, mean = 250, sd = 50),
      rnorm(30, mean = 150, sd = 40),
      rnorm(30, mean = 300, sd = 60),
      rnorm(30, mean = 420, sd = 70),
      rnorm(30, mean = 670, sd = 90)
    )
  )

  # 2. Creación y retorno del gráfico ggplot
  ggplot(datos, aes(x = meses, y = ventas, fill = meses)) +
    geom_boxplot(alpha = 0.7, outlier.colour = "red", outlier.shape = 16) +
    scale_fill_manual(values = c("#FF6B6B", "#4ECDC4", "#45B7D1", "#FFA07A", "#98D8C8", "#F7DC6F")) +
    labs(title = "Distribucion de Ventas de un supermercado segun el primer semestre", x = "Meses", y = "Ventas") +
    theme_minimal() +
    theme(legend.position = "none")
}

# Ejecutar la función
grafico_cajas()

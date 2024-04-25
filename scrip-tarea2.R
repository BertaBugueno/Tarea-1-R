
Tarea 2

# Cargar paquetes

pacman::p_load(sjlabelled,
               dplyr, #Manipulacion de datos
               stargazer, #Tablas
               sjmisc, # Tablas
               summarytools, # Tablas
               kableExtra, #Tablas
               sjPlot, #Tablas y gráficos
               corrplot, # Correlaciones
               sessioninfo, # Información de la sesión de trabajo
               ggplot2, haven) # Para la mayoría de los gráficos

# Cargar base de datos

load("Imput/casen2022.RData")

#selección de variables

find_var(data = casen22, "ingreso")

proc_data <- casen22 %>% select(e6a_no_asiste, # nivel educacional
                                y1, #ingreso mensual
                                region, # region
                                sexo) # sexo

# Comprobar
names(proc_data)

sjlabelled::get_label(proc_data)

#Recodificación de variables#
#Nivel Educaional#

frq(proc_data$e6a_no_asiste) #muestra cuadro de escolaridad#
#####

proc_data$e6a_no_asiste <- recode(proc_data$e6a_no_asiste, "1=1; 2=1; 3=1; 4=1; 5=1; 6=7; 7=7; 
                                  8=8; 9=8; 10=8; 11=8; 12=13; 13=13; 14=13; 15=13")



frq(proc_data$y1)
 #como se recodifica una variable de ingresos a gtramos de inngresos?

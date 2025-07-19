from typing import Union
from fastapi import FastAPI, Body, status, HTTPException, Query
from typing import Annotated
from modelos.aerolineas import Aerolinea
from database import engine, SessionLocal, Base
from sqlalchemy import insert, select, update, delete
from schemas import CrearAerolinea, DevolverAerolinea, ActualizarAerolinea

Base.metadata.create_all(bind=engine)

app = FastAPI()


#ruta para crear aerolinea
@app.post(
        path="/aerolineas/",
        status_code= status.HTTP_201_CREATED,
        description= "Crea una aerolinea en la BD",
)
async def crear_aerolinea (
aerolinea: Annotated [CrearAerolinea, Body()]
):
    conexion = SessionLocal()

    sentencia = insert(table=Aerolinea).values(
    nombre = aerolinea.nombre,
    pais_origen = aerolinea.pais_origen,
    rating = aerolinea.rating,
    activa = aerolinea.activa
    )

    print (sentencia)
    conexion.execute(sentencia)
    conexion.commit()
    conexion.close()

    return "ok"

#ruta para ver aerolineas
@app.get(
        path="/aerolineas",
        response_model= list[DevolverAerolinea],
        description= "Lista de todas las aerolineas",
)
async def ver_aerolineas (
aerolinea: Annotated [DevolverAerolinea, Query()],
):
    conexion = SessionLocal()

    sentencia = (
        select(
            Aerolinea.id_aerolinea,
            Aerolinea.nombre,
            Aerolinea.pais_origen,
            Aerolinea.rating,
            Aerolinea.activa
        ).select_from(Aerolinea)
    )
    print (sentencia)
    resultado = conexion.execute(sentencia)
    resultado_formateado = resultado.all() #quiero q devuelva todo
    conexion.close()

    return resultado_formateado

#ruta para eliminar aerolineas
@app.delete(
        path="/aerolineas/{aerolinea_id}",
        status_code= status.HTTP_200_OK,
        description= "Eliminar aerolinea",
)
async def eliminar_aerolineas (aerolinea_id:int):
    conexion = SessionLocal()

    sentencia = delete(table=Aerolinea).where(Aerolinea.id_aerolinea == aerolinea_id) 
   
    print(sentencia)
    conexion.execute(sentencia)
    conexion.commit()
    conexion.close()

    return "ok"

#ruta para actualizar aerolineas
@app.put(path="/aerolineas/{aerolinea_id}")
async def actualizar_aerolineas (aerolinea_id:int,
                                aerolinea_actualizada: Annotated[ActualizarAerolinea, Body()]):
    conexion = SessionLocal()

    valores = aerolinea_actualizada.model_dump(exclude_unset=True)
    print(valores)

    sentencia = update (table=Aerolinea).values(valores).where(Aerolinea.id_aerolinea == aerolinea_id) 
    #sentencia = update(table=Aerolinea).values(
     #   nombre=aerolinea_actualizada.nombre,
      #  pais_origen=aerolinea_actualizada.pais_origen,
     #   rating=aerolinea_actualizada.rating,
      #  activa=aerolinea_actualizada.activa
    #).where(Aerolinea.id_aerolinea == aerolinea_id) 
   
    print(sentencia)
    conexion.execute(sentencia)
    conexion.commit()
    conexion.close()

    return "ok"

# ************* contexto *************
#Canelita es una empresa dedicada a la gestión de múltiples aerolíneas internacionales.
#Por lo que tiene la necesidad de mantener un control sobre toda la información relacionada con cada una
#Y una base de datos es la mejor forma de organizar la gran cantidad de información que conlleva
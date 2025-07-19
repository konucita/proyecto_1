from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, ForeignKey
from database import Base


class vuelo(Base):
    __tablename__ = "vuelos"
    
    id_vuelo = Column(Integer, primary_key=True, index=True)
    id_aerolinea = Column(Integer, ForeignKey(column="aerolineas.id_aerolinea"), nullable=False)
    id_avion= Column(Integer, ForeignKey(column="aviones.id_avion"), nullable=False)
    id_tripulacion= Column(Integer, ForeignKey(column="tripulacion.id_tripulacion"), nullable=False)
    id_ruta= Column(Integer, ForeignKey(column="rutas.id_ruta"), nullable=False)
    fecha_hora_salida = Column(DateTime, nullable=False)
    fecha_hora_llegada = Column(DateTime, nullable=False)

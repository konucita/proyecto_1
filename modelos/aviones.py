from sqlalchemy import Column, Integer, String, Numeric
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from sqlalchemy import Text, Date, DateTime, Time, TIMESTAMP, ForeignKey
from database import Base


class avion(Base):
    __tablename__ = "aviones"
    
    id_avion= Column(Integer, primary_key=True, index=True)
    id_modelo= Column(Integer, ForeignKey(column="modelos.id_modelo"), nullable=False)
    id_aerolinea= Column(Integer, ForeignKey(column="aerolineas.id_aerolinea"), nullable=False)
    matricula = Column(String(length=15), nullable=False)
    fecha_compra = Column(TIMESTAMP, nullable=True)
    estado = Column(String(length=15), nullable=False)
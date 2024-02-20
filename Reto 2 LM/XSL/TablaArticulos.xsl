<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Plantilla principal -->
  <xsl:template match="/Articulos">
    <html>
      <head>
        <title>Lista de Componentes de Hardware</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1>Lista de Componentes de Hardware</h1>
        <xsl:apply-templates select="Procesadores"/>
        <xsl:apply-templates select="PlacasBase"/>
        <xsl:apply-templates select="TarjetasGraficas"/>
        <xsl:apply-templates select="FuentesAlimentacion"/>
        <xsl:apply-templates select="MemoriasRAM"/>
        <xsl:apply-templates select="UnidadesAlmacenamiento"/>
        <xsl:apply-templates select="DisipadoresCPU"/>
      </body>
    </html>
  </xsl:template>

  <!-- Procesadores -->
  <xsl:template match="Procesadores">
    <h2>Procesadores</h2>
    <table>
      <tr>
        <th>Número</th>
        <th>Precio</th>
        <th>Marca</th>
        <th>Modelo</th>
      </tr>
      <xsl:for-each select="Procesador">
        <tr>
          <td><xsl:value-of select="Numero"/></td>
          <td><xsl:value-of select="Precio"/></td>
          <td><xsl:value-of select="Marca"/></td>
          <td><xsl:value-of select="Modelo"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

<!-- PlacaBase -->
<xsl:template match="PlacasBase">
  <h2>Placas Base</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="Placa">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- TarjetaGraficas -->
<xsl:template match="TarjetasGraficas">
  <h2>Tarjetas Graficas</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="Grafica">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- FuentesAlimentacion -->
<xsl:template match="FuentesAlimentacion">
  <h2>Fuentes de Alimentacion</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="Fuente">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- MemoriasRAM -->
<xsl:template match="MemoriasRAM">
  <h2>Memoria RAM</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="ModuloRAM">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- UnidadesAlmacenamiento -->
<xsl:template match="UnidadesAlmacenamiento">
  <h2>Unidades de Almacenamiento</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="Unidad">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- DisipadoresCPU -->
<xsl:template match="DisipadoresCPU">
  <h2>Disipadores</h2>
  <table>
    <tr>
      <th>Número</th>
      <th>Precio</th>
      <th>Marca</th>
      <th>Modelo</th>
    </tr>
    <xsl:for-each select="Disipador">
      <tr>
        <td><xsl:value-of select="Numero"/></td>
        <td><xsl:value-of select="Precio"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>
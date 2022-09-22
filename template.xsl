<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/" >
<xsl:template match="/">
  <html>
  <body>
  <h1>Homepage de LePangolinGrimpeur</h2>
  <h2>Voici un tableau récapitulant des informations me concernant</h2>
    <table border="1">
      <tr>
        <th>Nom Complet</th>
        <th>Prénom</th>
        <th>Nom</th>
        <th>Homepage</th>
      </tr>
      <xsl:for-each select="rdf:RDF/foaf:Person">
      <tr>
        <td><xsl:value-of select="foaf:name"/></td>
        <td><xsl:value-of select="foaf:givenname"/></td>
        <td><xsl:value-of select="foaf:family_name"/></td>
        <td><xsl:value-of select="foaf:homepage/@rdf:resource"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
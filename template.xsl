<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/" >
<xsl:template match="/">
  <html>
  <body>
  <h1>Homepage de LePangolinGrimpeur</h1>
  <h2>Voici des informations me concernant</h2>
  <ul>
      <xsl:for-each select="rdf:RDF/foaf:Person">
        <li>Nom Complet : <xsl:value-of select="foaf:name"/></li>
        <li>Prénom : <xsl:value-of select="foaf:firstName"/></li>
        <li>Nom de famille : <xsl:value-of select="foaf:lastName"/></li>
        <li>Lien homepage : <xsl:value-of select="foaf:homepage/@rdf:resource"/></li>
      </xsl:for-each>
  </ul>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
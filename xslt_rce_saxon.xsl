<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:saxon="http://saxon.sf.net/"
  xmlns:java="http://saxon.sf.net/java"
  exclude-result-prefixes="saxon java">
  <xsl:template match="/">
    <xsl:value-of select="java:java.lang.System.getProperty('user.dir')"/>
    <xsl:value-of select="java:java.lang.Runtime.getRuntime()"/>
  </xsl:template>
</xsl:stylesheet>
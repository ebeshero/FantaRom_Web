<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" doctype-system="about:legacy-compat"/> 
    <!--<xsl:strip-space elements="*"/>-->
   
    <xsl:template match="/">
       
        <html>
       
            <head>
                <title><xsl:apply-templates select="//fileDesc//title"/> </title>
                <meta name="Description"
                    content="Supported by the University of Pittsburgh at Greensburg"/>
                <meta name="keywords"
                    content="fantasy, romance, medieval, high fantasy, game narrative, online game environment, virtual world, secondary world, avatar, Lord of the Rings, Tolkien, Le Guin, Nagata, Volsungs, Beowulf, Faerie, Syllabus, digital scholarship, digital humanities, Beshero-Bondar" />
               <link rel="stylesheet" type="text/css" href="index.css"/>
             
               

            </head>
            <body>

                <xsl:comment>#include virtual="top.html" </xsl:comment>
                
                
                <h1><span class="banner"><xsl:apply-templates select="//text/front/div[@type='courseID']/head"/></span></h1>
                
                <h2><span class="banner"><xsl:apply-templates select="//text/front/div[@type='courseID']/p/text()"/></span></h2>
               
                <div id="main">    
                    <div id="heading"> 
                        <div id="courseInfo">
                            <h3><a href="schedule.html">Link to the Schedule of Readings and Assignments</a></h3>
                            
                            <xsl:apply-templates select="//div[@type='meetTimes']"/>
                          
                            <xsl:apply-templates select="//div[@type='CRN']"/>
                            
                            
                            <xsl:apply-templates select="//div[@type='faculty']"/>
                        </div>
                        <div id="picture">
                            <img id="moriaGate" src="moriaGatetrans.png" alt="Tolkien's drawing of the Doors of Durin, the West-gate of Moria"/>
                        </div>
                        
                    </div>
                
                <div id="description">
                    
                    <xsl:apply-templates select="//div[@type='description']"/>
                    
                    <xsl:apply-templates select="//div[@type='objectives']"/>
                    
                   <xsl:apply-templates select="//div[@type='optionalTexts']"/>
                </div>
                 
                
                 
                 
                 
                 <xsl:apply-templates select="//div[@type='courseMtls']"/>
                 
                <div id="grading">
                    
                    <xsl:apply-templates select="//div[@type='grading']"/>
                    
      
                </div>
                <div id="policies">
                    <xsl:apply-templates select="//div[@type='policies']"/>
                    
                    <xsl:apply-templates select="//div[@type='online']"/>
                    
                </div>
                
                <div id="resources">
                    
                    <xsl:apply-templates select="//div[@type='resources']"/>
                </div>
                
                <div id="extProjects">
                    <xsl:apply-templates select="//div[@type='extProjects']"/>
                </div>
                
                    
                    
             
              
                
                </div>
                <hr/>
               
                    


            </body>
        </html>


    </xsl:template>
    
    <xsl:template match="div[@style='main']/head">
        <h2><xsl:apply-templates/></h2>
        
    </xsl:template>
    
    <xsl:template match="div[not(@style='main')][not(@style='outer')]/head">
        <h3><xsl:apply-templates/></h3>
        
    </xsl:template>
    
    <xsl:template match="list[not(@type='numbered')]">
        <ul>
            <xsl:apply-templates/>
            
        </ul>
        
    </xsl:template>
    
    <xsl:template match="list[@type='numbered']">
        <ol>
            <xsl:apply-templates/>
            
        </ol>
        
    </xsl:template>
    
    <xsl:template match="item">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
    <xsl:template match="body//title">
        <span class="italic"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="ref">
        <a href="{@target}"><xsl:apply-templates/></a>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
  
      <xsl:template match="hi">
          <strong><xsl:apply-templates/></strong>
          
      </xsl:template>
    
    <xsl:template match="note">
        <xsl:text> </xsl:text><span class="smaller"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="note">
        <xsl:text> </xsl:text><span class="smaller"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="body//title[not(@level)] | body//title[@level='m']">
        <cite><xsl:apply-templates/></cite>
        
    </xsl:template>
    
    <xsl:template match="body//title[@level='a']">
        <cite class="sub"><xsl:apply-templates/></cite>
        
    </xsl:template>
    <xsl:template match="q">
        <q><xsl:apply-templates/></q>
    </xsl:template>
   

</xsl:stylesheet>
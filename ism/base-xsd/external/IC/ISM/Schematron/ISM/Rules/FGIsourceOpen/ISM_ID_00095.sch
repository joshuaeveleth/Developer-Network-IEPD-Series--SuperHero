<?xml version="1.0" encoding="UTF-8"?>
<?ICEA pattern?> 
 <!-- Notices - Distribution Notice: 
           This document has been approved for Public Release and is available for use without restriction.
       -->
<sch:pattern id="ISM-ID-00095" is-a="ValuesOrderedAccordingToCve"
  xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <sch:p id="ruleText">
    [ISM-ID-00095][Error] If ISM_CAPCO_RESOURCE and attribute FGIsourceOpen is 
    specified then each of its values must be ordered in accordance with CVEnumISMFGIOpen.xml.
  </sch:p>
  <sch:p id="codeDesc">
    This rule uses an abstract pattern to consolidate logic. It verifies that
    the attribute ism:$attrLocalName has values in the same order as the list
    $cveTermList, which is defined in the main schematron file, ISM_XML.sch.
  </sch:p>
  <sch:param name="attrLocalName" value="FGIsourceOpen"/>
  <sch:param name="attrValueTokens" value="tokenize(normalize-space(string(@ism:FGIsourceOpen)), ' ')"/>
  <sch:param name="cveTermList" value="$FGIsourceOpenList"/>
  <sch:param name="errorMessage" value="'
    [ISM-ID-00095][Error] If ISM_CAPCO_RESOURCE and attribute FGIsourceOpen is 
    specified then each of its values must be ordered in accordance with CVEnumISMFGIOpen.xml.
    '"/>
</sch:pattern>
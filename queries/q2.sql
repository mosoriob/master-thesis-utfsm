  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
  PREFIX dockerpedia: <http://dockerpedia.inf.utfsm.cl/resource/>
  PREFIX http: <http://www.w3.org/2011/http#>
  PREFIX vocab: <http://dockerpedia.inf.utfsm.cl/vocab#>
  PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

CONSTRUCT { 
       ?packageversion rdfs:label ?name .
       ?packageversion vocab:hasVulnerability ?vulnerability .
       ?vulnerability vocab:description ?description ;
                      vocab:affectOS ?os;
                      vocab:link ?link;
                      vocab:severity ?severity

}  WHERE {
       ?image vocab:containsSoftware ?packageversion ;
          rdfs:label "dockerpedia/pegasus_workflow_images:pegasus-4.8.5" .
       ?packageversion vocab:hasVulnerability ?vulnerability .
       ?vulnerability vocab:description ?description ;
                      vocab:affectOS ?os;
                      vocab:link ?link;
                                              vocab:severity ?severity

  }
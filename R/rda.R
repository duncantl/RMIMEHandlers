rdaHandler =
function(val, ...)
{
   con = rawConnection(val)
   on.exist(close(con))   
   invisible(unserialize(con))
}


csvHandler =
function(val, ...)
{

    if(is(val, 'raw'))
       val = rawToChar(val)

    con = textConnection(val)
    on.exist(close(con))
    read.csv(con, ...)
}


jsonHandler =
function(val, ...)
{
    if(is(val, 'raw'))
       val = rawToChar(val)
    
    fromJSON(val, asText = TRUE)
}


XMLHandler =
function(val, ...)
{
   xmlParse(val, asText = TRUE)
}

HTMLHandler =
function(val, ...)
{
   htmlParse(val, asText = TRUE)
}

zipHandler =
   # Or use Rcompression
function(val, ...)
{
   unzip(val, unzip = "internal")
}


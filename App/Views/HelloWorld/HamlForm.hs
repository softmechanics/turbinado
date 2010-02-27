module App.Views.HelloWorld.HamlForm where
import Turbinado.View
import Maybe

-- http://localhost:9000/hello_world/hamlForm

markup :: VHtml
markup = 
  do name <- getParam "name"
     case name of
          Just n -> greet n
          Nothing -> form ""

form :: [Char] -> VHtml
form name = 
  %div
    %form{method=_post}
      Who are you?
      %br=[]
      %input{type=_text,name=_name,value=name}=[]
  where _post="post"
        _name="name"
        _text="text"

greet :: [Char] -> VHtml
greet name = 
  %div
    %div="Hello, " ++ name ++ "!"
    %br=[]
    TODO: how to include VHtml in HAML?

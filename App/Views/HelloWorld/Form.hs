module App.Views.HelloWorld.Form where
import Turbinado.View
import Maybe

markup :: VHtml
markup = 
  do name <- getParam "name"
     case name of
          Just n -> greet n
          Nothing -> form ""

form :: [Char] -> VHtml
form name = 
  <div>
    <form>
      Who are you?
      <br/>
      <input type="text" name="name" value=name/>
    </form>
  </div>

greet :: [Char] -> VHtml
greet name = 
  <div>
    Hello, <%= name%>!
    <br />
    <% form name %>
  </div>

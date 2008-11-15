---------------------------------------------------------------------------
-- Generated by DB/Direct
---------------------------------------------------------------------------
module Turbinado.SessionHandlers.GenericDB.SessionDBInfo.Sessions where

import Database.HaskellDB.DBLayout

---------------------------------------------------------------------------
-- Table
---------------------------------------------------------------------------
sessions :: Table
    ((RecCons SessionId (Expr Int)
      (RecCons Expires (Expr (Maybe CalendarTime)) RecNil)))

sessions = baseTable "sessions" $
           hdbMakeEntry SessionId #
           hdbMakeEntry Expires

---------------------------------------------------------------------------
-- Fields
---------------------------------------------------------------------------
---------------------------------------------------------------------------
-- SessionId Field
---------------------------------------------------------------------------

data SessionId = SessionId

instance FieldTag SessionId where fieldName _ = "sessionid"

sessionId :: Attr SessionId Int
sessionId = mkAttr SessionId

---------------------------------------------------------------------------
-- Expires Field
---------------------------------------------------------------------------

data Expires = Expires

instance FieldTag Expires where fieldName _ = "expires"

expires :: Attr Expires (Maybe CalendarTime)
expires = mkAttr Expires

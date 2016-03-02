{-# LANGUAGE GADTs #-}

module XPath where

import Relation2XML
import qualified Algebra as A

import ValidateXML (printXML) ---

import AbsXML
import ParXML
import LexXML

import ErrM
import qualified Data.Map as M

execQueryXPath :: Id -> A.Env -> String -> IO () 
execQueryXPath dbname env s = putStrLn $ case pXPath (myLexer s) of
  Ok x  -> prXPValue $ queryXPath x (database2document dbname [it | it <- M.assocs (A.tables env)])
  Bad s -> s

queryXPath :: XPath -> Document -> XPValue
queryXPath xp doc@(DXML _ _ el) = getXPValues $ pathsXPath xp el 

getXPValues = XPElements ----

---- only works for plain elements so far
pathsXPath :: XPath -> Element -> [Element]
pathsXPath xp elm = case (xp,elm) of
  (XPCont axis_ item cond_ XPEnd, ETag (STTag name attrs_) elems_ _) -> case item of
    XINone               -> [elm]
    XIElem i | i == name -> [elm]
    XIAttr i             -> [EData (WIdent (Ident s)) | AValue a s <- attrs_, a == i]  ---- EData encoding attribute value
    _ -> []
  (XPCont axis_ item cond_ xp2, ETag (STTag name attrs_) elems _) -> case item of
    XINone               -> concat [vs | el <- elems, vs <- [pathsXPath xp2 el]]
    XIElem i | i == name -> concat [vs | el <- elems, vs <- [pathsXPath xp2 el]]
    _ -> []
  (XPEnd,_) -> [elm]

data XPValue = XPElements [Element] | XPAttributes [String]
  deriving Show

prXPValue :: XPValue -> String
prXPValue v = case v of
  XPElements es -> unlines $ map printXML es
  XPAttributes vs -> unwords vs


{-# LANGUAGE OverloadedStrings #-}
import Reflex.Dom
import qualified Data.Text as T
import qualified Data.Map as Map
import           Data.Monoid ((<>))

main :: IO ()
main = mainWidget $ el "div" $ do
  el "h1" $ text "Reflex FRP Terria Embed Example"
  el "p" $ text "To demonstrate iframe loading and message passing with Reflex."
  elAttr "iframe" iframeAttrs $ text ""

iframeAttrs :: Map.Map T.Text T.Text
iframeAttrs = ("src" =: "http://nationalmap.gov.au") <> ("width" =: "1024") <>  ("height" =: "768")

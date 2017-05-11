{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Add where

import Foundation
import Yesod.Core

getAddR :: Int -> Int -> Handler Html
getAddR x y = defaultLayout $ do

        setTitle "Addition"
        [whamlet|#{x} + #{y} = #{z}|]

  where
    z = x + y

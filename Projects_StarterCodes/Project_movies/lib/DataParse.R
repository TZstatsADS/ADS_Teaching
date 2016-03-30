movies.raw=read.csv("../output/moviescsv.csv")
product.deg=table(movies.raw$product_productid)

library(dplyr)

movies.sel=movies.raw

# select movies with enough reviews
product.sel=names(product.deg)[product.deg>100]

# filter by selected movies
movies.sel=
  movies.sel%>%
  filter(product_productid%in%product.sel)

# Now select users
user.deg=table(movies.sel$review_userid)

user.sel=names(user.deg)[user.deg>10]
# filter by selected users
movies.sel=
  movies.sel%>%
  filter(review_userid%in%user.sel)

# update product/user degrees
product.deg=table(movies.sel$product_productid)
user.deg=table(movies.sel$review_userid)


rm(movies.raw)
gc()




# coding: utf-8

# In[1]:


#Importing OS library for OS operations
import os


# In[2]:


#setting working directory
os.chdir("Z:\Edwiser\data01s2l1")


# In[58]:


#checking the directory
os.getcwd()


# In[4]:


import pandas as pd


# In[48]:


#a.	Load CSV in R by skipping second row.

df_ImdbData=pd.read_csv("IMDB_data.csv",encoding='cp1252',skiprows=[2],sep=',')


# In[12]:


df_ImdbData


# In[13]:


#b.	Extract the unique genres and its count and store in data frame with index key
unique_genres = df_ImdbData['Genre'].unique()


# In[14]:


unique_genres


# In[15]:


#count of unique genres
count_unique_genre = unique_genres.size


# In[16]:


count_unique_genre


# In[59]:


#Indexing of Genres column
df = pd.DataFrame(df_ImdbData['Genre'].value_counts())


# In[60]:


df


# In[61]:


#c.checking the data types
type(df_ImdbData.imdbRating)
type(df_ImdbData.imdbVotes)


# In[53]:


#converting the datatypes IMDBVotes and IMDBRating as they are string but containing numaric values
df_ImdbData.imdbVotes=pd.to_numeric(df_ImdbData.imdbVotes,errors='coerce')

df_ImdbData.imdbRating=pd.to_numeric(df_ImdbData.imdbRating,errors='coerce')


# In[49]:


#d.	Sort the genre by its name
df_ImdbData_sort = df_ImdbData.sort_values(['Genre'], ascending = True)


# In[50]:


df_ImdbData_sort


# In[56]:


#e.	Create new variable whose values should be square of difference between imdbrating and imdbvotes.
df_ImdbData['new_column']=(df_ImdbData.imdbVotes-df_ImdbData.imdbRating)**2


# In[57]:


df_ImdbData


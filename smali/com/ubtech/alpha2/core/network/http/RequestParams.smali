.class public Lcom/ubtech/alpha2/core/network/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;
    }
.end annotation


# static fields
.field private static ENCODING:Ljava/lang/String;


# instance fields
.field protected fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "UTF-8"

    sput-object v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->init()V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->init()V

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .param p1, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->init()V

    .line 105
    array-length v2, p1

    .line 106
    .local v2, "len":I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 107
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Supplied arguments must be even"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 109
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 113
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 294
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 295
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    .line 296
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 154
    .local v0, "paramArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "paramArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .restart local v0    # "paramArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "paramArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 19

    .prologue
    .line 246
    const/4 v9, 0x0

    .line 248
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 249
    new-instance v1, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;

    invoke-direct {v1}, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;-><init>()V

    .line 252
    .local v1, "multipartEntity":Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 253
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 258
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 259
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 260
    .local v16, "value":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v7, 0x0

    .line 266
    .local v7, "currentIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .line 267
    .local v15, "lastIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 268
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;

    .line 269
    .local v14, "file":Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;
    iget-object v2, v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 270
    if-ne v7, v15, :cond_4

    const/4 v6, 0x1

    .line 271
    .local v6, "isLast":Z
    :goto_3
    iget-object v2, v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 272
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v5, v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 277
    .end local v6    # "isLast":Z
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 278
    goto :goto_2

    .line 270
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 274
    .restart local v6    # "isLast":Z
    :cond_5
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_4

    .line 280
    .end local v6    # "isLast":Z
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;>;"
    .end local v14    # "file":Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;
    :cond_6
    move-object v9, v1

    .line 289
    .end local v1    # "multipartEntity":Lcom/ubtech/alpha2/core/network/http/SimpleMultipartEntity;
    .end local v7    # "currentIndex":I
    .end local v15    # "lastIndex":I
    :goto_5
    return-object v9

    .line 283
    :cond_7
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/ubtech/alpha2/core/network/http/RequestParams;->ENCODING:Ljava/lang/String;

    invoke-direct {v10, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    move-object v9, v10

    .line 286
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_5

    .line 284
    :catch_0
    move-exception v8

    .line 285
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5
.end method

.method protected getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ubtech/alpha2/core/network/http/RequestParams;->ENCODING:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 301
    .local v2, "lparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v5, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 306
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 307
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "value":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v8, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 209
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;>;"
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 218
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v6, "FILE"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams$FileWrapper;>;"
    :cond_3
    iget-object v6, p0, Lcom/ubtech/alpha2/core/network/http/RequestParams;->urlParamsWithArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 227
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 230
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 231
    if-eqz v3, :cond_6

    .line 232
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

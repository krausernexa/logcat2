.class public Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static jsonUtils:Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;


# instance fields
.field private mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 27
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 29
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->jsonUtils:Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;-><init>()V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->jsonUtils:Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;

    .line 22
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->jsonUtils:Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;

    return-object v0
.end method


# virtual methods
.method public getJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerationException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/util/JsonUtils;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/codehaus/jackson/JsonParseException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Lorg/codehaus/jackson/JsonParseException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
